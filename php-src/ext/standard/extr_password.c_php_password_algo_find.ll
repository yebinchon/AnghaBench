; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_algo_find.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_password.c_php_password_algo_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@php_password_algos = common dso_local global i32 0, align 4
@IS_PTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @php_password_algo_find(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %22

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @zend_hash_find(i32* @php_password_algos, i32* %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @Z_TYPE_P(i32* %14)
  %16 = load i64, i64* @IS_PTR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %8
  store i32* null, i32** %2, align 8
  br label %22

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @Z_PTR_P(i32* %20)
  store i32* %21, i32** %2, align 8
  br label %22

22:                                               ; preds = %19, %18, %7
  %23 = load i32*, i32** %2, align 8
  ret i32* %23
}

declare dso_local i32* @zend_hash_find(i32*, i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @Z_PTR_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
