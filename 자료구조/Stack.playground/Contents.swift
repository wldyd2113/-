import Foundation

struct Stack<T> {
    var elements: [T] = []
    
    var count: Int  {
        return elements.count
    }
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    //mutating: 구조체의 인스턴스를 변경하기 위해 사용
    //삽입(push)
    mutating func push(_ elment: T) {
        elements.append(elment)
    }
    
    //조회
    //스택의 가장 위에 쌓여있는 요소를 조회할 수 있게 함
    mutating func top() -> T? {
        return elements.last //last를 통해 마지막 요소를 반환
    }
    
    //삭제
    mutating func pop() -> T? {
        return elements.popLast() //removeLast는 배열이 비어있을때 사용하면 에러 발생 popLast를 사용하면 배열이 비어있을때 nil을 반환
    }
}
