; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_izamax_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_izamax_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@izamax_.i__ = internal global i32 0, align 4
@izamax_.ix = internal global i32 0, align 4
@izamax_.smax = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @izamax_(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 -1
  store i32* %11, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %104

21:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %104

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %72

32:                                               ; preds = %27
  store i32 1, i32* @izamax_.ix, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = call i64 @dcabs1_(i32* %34)
  store i64 %35, i64* @izamax_.smax, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @izamax_.ix, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* @izamax_.ix, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  store i32 2, i32* @izamax_.i__, align 4
  br label %42

42:                                               ; preds = %67, %32
  %43 = load i32, i32* @izamax_.i__, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @izamax_.ix, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i64 @dcabs1_(i32* %50)
  %52 = load i64, i64* @izamax_.smax, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @izamax_.i__, align 4
  store i32 %56, i32* %8, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @izamax_.ix, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i64 @dcabs1_(i32* %60)
  store i64 %61, i64* @izamax_.smax, align 8
  br label %62

62:                                               ; preds = %55, %54
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @izamax_.ix, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* @izamax_.ix, align 4
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @izamax_.i__, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @izamax_.i__, align 4
  br label %42

70:                                               ; preds = %42
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %104

72:                                               ; preds = %31
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = call i64 @dcabs1_(i32* %74)
  store i64 %75, i64* @izamax_.smax, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  store i32 2, i32* @izamax_.i__, align 4
  br label %78

78:                                               ; preds = %99, %72
  %79 = load i32, i32* @izamax_.i__, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @izamax_.i__, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i64 @dcabs1_(i32* %86)
  %88 = load i64, i64* @izamax_.smax, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %98

91:                                               ; preds = %82
  %92 = load i32, i32* @izamax_.i__, align 4
  store i32 %92, i32* %8, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @izamax_.i__, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i64 @dcabs1_(i32* %96)
  store i64 %97, i64* @izamax_.smax, align 8
  br label %98

98:                                               ; preds = %91, %90
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* @izamax_.i__, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @izamax_.i__, align 4
  br label %78

102:                                              ; preds = %78
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %70, %25, %19
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @dcabs1_(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
