; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_stringutils.c_FindSubStrI.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_stringutils.c_FindSubStrI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @FindSubStrI(i32* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to i64*
  store i64* %10, i64** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to i64*
  store i64* %16, i64** %3, align 8
  br label %59

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %55, %17
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load i64*, i64** %6, align 8
  store i64* %23, i64** %7, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = bitcast i32* %24 to i64*
  store i64* %25, i64** %8, align 8
  br label %26

26:                                               ; preds = %44, %22
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @_totupper(i64 %36)
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @_totupper(i64 %39)
  %41 = icmp eq i64 %37, %40
  br label %42

42:                                               ; preds = %34, %30, %26
  %43 = phi i1 [ false, %30 ], [ false, %26 ], [ %41, %34 ]
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %7, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %8, align 8
  br label %26

49:                                               ; preds = %42
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i64*, i64** %6, align 8
  store i64* %54, i64** %3, align 8
  br label %59

55:                                               ; preds = %49
  %56 = load i64*, i64** %6, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %6, align 8
  br label %18

58:                                               ; preds = %18
  store i64* null, i64** %3, align 8
  br label %59

59:                                               ; preds = %58, %53, %14
  %60 = load i64*, i64** %3, align 8
  ret i64* %60
}

declare dso_local i64 @_totupper(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
