; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilaslc_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_ilaslc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ilaslc_.i__ = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilaslc_(i32* %0, i32* %1, float* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store float* %2, float** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = add nsw i32 1, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load float*, float** %8, align 8
  %20 = sext i32 %18 to i64
  %21 = sub i64 0, %20
  %22 = getelementptr inbounds float, float* %19, i64 %21
  store float* %22, float** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  br label %92

29:                                               ; preds = %4
  %30 = load float*, float** %8, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %30, i64 %36
  %38 = load float, float* %37, align 4
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %53, label %40

40:                                               ; preds = %29
  %41 = load float*, float** %8, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %43, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %41, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fcmp une float %51, 0.000000e+00
  br i1 %52, label %53, label %56

53:                                               ; preds = %40, %29
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  br label %91

56:                                               ; preds = %40
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %87, %56
  %60 = load i32, i32* %12, align 4
  %61 = icmp sge i32 %60, 1
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  store i32 1, i32* @ilaslc_.i__, align 4
  br label %65

65:                                               ; preds = %83, %62
  %66 = load i32, i32* @ilaslc_.i__, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load float*, float** %8, align 8
  %71 = load i32, i32* @ilaslc_.i__, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %70, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fcmp une float %78, 0.000000e+00
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %94

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* @ilaslc_.i__, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @ilaslc_.i__, align 4
  br label %65

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %12, align 4
  br label %59

90:                                               ; preds = %59
  br label %91

91:                                               ; preds = %90, %53
  br label %92

92:                                               ; preds = %91, %26
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %80
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
