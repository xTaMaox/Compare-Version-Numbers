class Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        guard version1.count > 0, version2.count > 0 else { return 0 }
        
        let v1Arr = version1.split(separator: ".").map { Int(String($0)) ?? 0 }
        let v2Arr = version2.split(separator: ".").map { Int(String($0)) ?? 0 }
        
        let count = v1Arr.count > v2Arr.count ? v1Arr.count : v2Arr.count
        
        for i in 0 ..< count {
            var first = 0
            var second = 0
            if i < v1Arr.count { first = v1Arr[i] }
            if i < v2Arr.count { second = v2Arr[i] }
            
            if first < second { return -1 }
            else if first > second { return 1 }
        }
        
        return 0
    }
}