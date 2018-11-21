//: Playground - noun: a place where people can play

import UIKit

//Задача 1. Решение квадратного уравнение вида ax^2 + bx + c= = 0

let firstParam: Double = 1 //ввод параметра а
let secondParam: Double = 5 //ввод параметра b
let thirdParam: Double = 6 //ввод параметра c\.

let equation: String = "\(Int(firstParam))x^2 + \(Int(secondParam))x + \(Int(thirdParam))"

let discriminant: Double = secondParam * secondParam - 4 * firstParam * thirdParam // дискриминант = b^2 - 4ac
let equationRoot1: Double //первый корень уравнение
let equationRoot2: Double //второй корень уравнение

print("---------------------Задача 1-----------------------\n\nРешение уравнения \(equation)\n")

if discriminant < 0 {
  print("Уравнение не имеет корней")
} else if discriminant == 0 {
  equationRoot1 = -secondParam / (2 * firstParam)
  print("Уравнение имеет 1 корень = \(equationRoot1)")
  
} else {
  equationRoot1 = (sqrt(discriminant) - secondParam) / (2 * firstParam)
  equationRoot2 = (-sqrt(discriminant) - secondParam) / (2 * firstParam)
  print("Первый корень уравнения = \(equationRoot1)")
  print("Второй корень уравнения = \(equationRoot2)")
}


//Задача 2. задача с прямоугольным треугольником

let catheterOne: Double = 5
let catheterTwo: Double = 3

let areaTriangle: Double = (catheterOne * catheterTwo) / 2
let hypotenuseTriangle: Double = sqrt(catheterTwo * catheterTwo + catheterOne * catheterOne)
let perimetrTriange: Double = catheterTwo + catheterOne + hypotenuseTriangle

print("\n---------------------Задача 2-----------------------\n")
print("Стороны прямоугольного треугольника: \(catheterTwo) и \(catheterOne)\n")
print("Площадь = \(areaTriangle)")
print("Периметр = \(perimetrTriange)")
print("Гипотенуза = \(hypotenuseTriangle)")

//Задача 3. задача про вклад

print("\n---------------------Задача 3-----------------------\n")

var depositSum: Int = 13000
let interestRate: Int = 15

print("Начальная сумма вклада \(depositSum) рублей")
print("Процент вклада \(interestRate)%")

var yearAmount: Int = 1

while (yearAmount <= 5) {
  depositSum = depositSum + (interestRate * depositSum) / 100 //вычисление суммы вклада с учетом процентов
  yearAmount = yearAmount + 1
}
print("\nСумма вклада через 5 лет = \(depositSum) рублей\n")

