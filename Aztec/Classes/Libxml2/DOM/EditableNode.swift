import Foundation

protocol EditableNode {
    func deleteCharacters(inRange range: NSRange)
    
    /// Replaces the specified range with a new string.
    ///
    /// - Parameters:
    ///     - range: the range of the original string to replace.
    ///     - string: the new string to replace the original text with.
    ///
    func replaceCharacters(inRange range: NSRange, withString string: String, preferLeftNode: Bool)

    /// Should split the node at the specified text location.  The receiver will become the node before the specified
    /// location and a new node will be created to contain whatever comes after it.
    ///
    /// - Parameters:
    ///     - location: the text location to split the node at.
    ///
    func split(atLocation location: Int)
    
    /// Should split the node for the specified text range.  The receiver will become the node
    /// at the specified range.
    ///
    /// - Parameters:
    ///     - range: the range to use for splitting the node.
    ///
    func split(forRange range: NSRange)
    
    /// Wraps the specified range in the specified element.
    ///
    /// - Parameters:
    ///     - range: the range to wrap.
    ///     - elementDescriptor: the element to wrap the range in.
    ///
    ///
    func wrap(range targetRange: NSRange, inElement elementDescriptor: Libxml2.ElementNodeDescriptor)
}