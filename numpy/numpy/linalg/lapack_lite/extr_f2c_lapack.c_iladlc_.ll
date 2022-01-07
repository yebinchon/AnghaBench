; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_iladlc_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_iladlc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iladlc_.i__ = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iladlc_(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = add nsw i32 1, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = sext i32 %18 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  br label %95

29:                                               ; preds = %4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sitofp i32 %38 to double
  %40 = fcmp une double %39, 0.000000e+00
  br i1 %40, label %55, label %41

41:                                               ; preds = %29
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %44, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %42, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sitofp i32 %52 to double
  %54 = fcmp une double %53, 0.000000e+00
  br i1 %54, label %55, label %58

55:                                               ; preds = %41, %29
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  br label %94

58:                                               ; preds = %41
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %90, %58
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %62, 1
  br i1 %63, label %64, label %93

64:                                               ; preds = %61
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %13, align 4
  store i32 1, i32* @iladlc_.i__, align 4
  br label %67

67:                                               ; preds = %86, %64
  %68 = load i32, i32* @iladlc_.i__, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* @iladlc_.i__, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sitofp i32 %80 to double
  %82 = fcmp une double %81, 0.000000e+00
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %97

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* @iladlc_.i__, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @iladlc_.i__, align 4
  br label %67

89:                                               ; preds = %67
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %12, align 4
  br label %61

93:                                               ; preds = %61
  br label %94

94:                                               ; preds = %93, %55
  br label %95

95:                                               ; preds = %94, %26
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %83
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
