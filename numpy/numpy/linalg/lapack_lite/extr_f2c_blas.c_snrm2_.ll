; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_snrm2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_snrm2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snrm2_.ix = internal global i32 0, align 4
@snrm2_.ssq = internal global float 0.000000e+00, align 4
@snrm2_.norm = internal global float 0.000000e+00, align 4
@snrm2_.scale = internal global float 0.000000e+00, align 4
@snrm2_.absxi = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @snrm2_(i32* %0, float* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store float* %1, float** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load float*, float** %5, align 8
  %12 = getelementptr inbounds float, float* %11, i32 -1
  store float* %12, float** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %3
  store float 0.000000e+00, float* @snrm2_.norm, align 4
  br label %106

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load float*, float** %5, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = load float, float* %27, align 4
  %29 = call float @dabs(float %28)
  store float %29, float* @snrm2_.norm, align 4
  br label %105

30:                                               ; preds = %21
  store float 0.000000e+00, float* @snrm2_.scale, align 4
  store float 1.000000e+00, float* @snrm2_.ssq, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %33, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  store i32 1, i32* @snrm2_.ix, align 4
  br label %40

40:                                               ; preds = %96, %30
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @snrm2_.ix, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %44, %45
  %47 = zext i1 %46 to i32
  br label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @snrm2_.ix, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 %49, %50
  %52 = zext i1 %51 to i32
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i32 [ %47, %43 ], [ %52, %48 ]
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %53
  %57 = load float*, float** %5, align 8
  %58 = load i32, i32* @snrm2_.ix, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fcmp une float %61, 0.000000e+00
  br i1 %62, label %63, label %95

63:                                               ; preds = %56
  %64 = load float*, float** %5, align 8
  %65 = load i32, i32* @snrm2_.ix, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  store float %68, float* %10, align 4
  %69 = load float, float* %10, align 4
  %70 = call float @dabs(float %69)
  store float %70, float* @snrm2_.absxi, align 4
  %71 = load float, float* @snrm2_.scale, align 4
  %72 = load float, float* @snrm2_.absxi, align 4
  %73 = fcmp olt float %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load float, float* @snrm2_.scale, align 4
  %76 = load float, float* @snrm2_.absxi, align 4
  %77 = fdiv float %75, %76
  store float %77, float* %10, align 4
  %78 = load float, float* @snrm2_.ssq, align 4
  %79 = load float, float* %10, align 4
  %80 = load float, float* %10, align 4
  %81 = fmul float %79, %80
  %82 = fmul float %78, %81
  %83 = fadd float %82, 1.000000e+00
  store float %83, float* @snrm2_.ssq, align 4
  %84 = load float, float* @snrm2_.absxi, align 4
  store float %84, float* @snrm2_.scale, align 4
  br label %94

85:                                               ; preds = %63
  %86 = load float, float* @snrm2_.absxi, align 4
  %87 = load float, float* @snrm2_.scale, align 4
  %88 = fdiv float %86, %87
  store float %88, float* %10, align 4
  %89 = load float, float* %10, align 4
  %90 = load float, float* %10, align 4
  %91 = fmul float %89, %90
  %92 = load float, float* @snrm2_.ssq, align 4
  %93 = fadd float %92, %91
  store float %93, float* @snrm2_.ssq, align 4
  br label %94

94:                                               ; preds = %85, %74
  br label %95

95:                                               ; preds = %94, %56
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @snrm2_.ix, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* @snrm2_.ix, align 4
  br label %40

100:                                              ; preds = %53
  %101 = load float, float* @snrm2_.scale, align 4
  %102 = load float, float* @snrm2_.ssq, align 4
  %103 = call float @sqrt(float %102)
  %104 = fmul float %101, %103
  store float %104, float* @snrm2_.norm, align 4
  br label %105

105:                                              ; preds = %100, %25
  br label %106

106:                                              ; preds = %105, %20
  %107 = load float, float* @snrm2_.norm, align 4
  store float %107, float* %9, align 4
  %108 = load float, float* %9, align 4
  ret float %108
}

declare dso_local float @dabs(float) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
