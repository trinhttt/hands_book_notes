import UIKit


//// Equatable
struct GridPoint {
    var x: Int
    var y: Int
}

extension GridPoint: Equatable {
    static func == (lhs: GridPoint, rhs: GridPoint) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

var tappedPoints = [GridPoint(x: 2, y: 3), GridPoint(x: 4, y: 1)]
let nextTap = GridPoint(x: 0, y: 1)
if tappedPoints.contains(nextTap) {
    print("Already tapped at (\(nextTap.x), \(nextTap.y)).")
} else {
    tappedPoints.insert(nextTap, at: 1)
    print("New tap detected at (\(nextTap.x), \(nextTap.y)).")
}

///// Hashable
struct GridPoint1 {
    var x: Int
    var y: Int
}

extension GridPoint1: Hashable {
    static func == (lhs: GridPoint1, rhs: GridPoint1) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}

var tappedPoints1: Set = [GridPoint1(x: 2, y: 3), GridPoint1(x: 4, y: 1)]
let nextTap1 = GridPoint1(x: 0, y: 1)
if tappedPoints1.contains(nextTap1) {
    print("Already tapped at (\(nextTap1.x), \(nextTap1.y)).")
} else {
    tappedPoints1.insert(nextTap1)
    print("New tap detected at (\(nextTap1.x), \(nextTap1.y)).")
}

