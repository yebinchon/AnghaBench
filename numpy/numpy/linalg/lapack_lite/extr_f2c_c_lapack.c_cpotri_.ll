; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cpotri_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cpotri_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CPOTRI\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpotri_(i8* %0, i64* %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i64*, i64** %10, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = add nsw i64 1, %17
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = sub i64 0, %19
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %9, align 8
  %23 = load i64*, i64** %11, align 8
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @lsame_(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i8* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @lsame_(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i64*, i64** %11, align 8
  store i64 -1, i64* %32, align 8
  br label %50

33:                                               ; preds = %27, %5
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64*, i64** %11, align 8
  store i64 -2, i64* %38, align 8
  br label %49

39:                                               ; preds = %33
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @max(i32 1, i64 %43)
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64*, i64** %11, align 8
  store i64 -4, i64* %47, align 8
  br label %48

48:                                               ; preds = %46, %39
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 0, %56
  store i64 %57, i64* %14, align 8
  %58 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* %14)
  store i32 0, i32* %6, align 4
  br label %86

59:                                               ; preds = %50
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %86

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i64, i64* %13, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i64*, i64** %10, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = call i32 @ctrtri_(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64* %66, i32* %69, i64* %70, i64* %71)
  %73 = load i64*, i64** %11, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %86

77:                                               ; preds = %64
  %78 = load i8*, i8** %7, align 8
  %79 = load i64*, i64** %8, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i64*, i64** %10, align 8
  %84 = load i64*, i64** %11, align 8
  %85 = call i32 @clauum_(i8* %78, i64* %79, i32* %82, i64* %83, i64* %84)
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %77, %76, %63, %54
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @xerbla_(i8*, i64*) #1

declare dso_local i32 @ctrtri_(i8*, i8*, i64*, i32*, i64*, i64*) #1

declare dso_local i32 @clauum_(i8*, i64*, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
