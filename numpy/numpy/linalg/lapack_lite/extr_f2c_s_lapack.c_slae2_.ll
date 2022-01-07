; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slae2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slae2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slae2_.ab = internal global float 0.000000e+00, align 4
@slae2_.df = internal global float 0.000000e+00, align 4
@slae2_.tb = internal global float 0.000000e+00, align 4
@slae2_.sm = internal global float 0.000000e+00, align 4
@slae2_.rt = internal global float 0.000000e+00, align 4
@slae2_.adf = internal global float 0.000000e+00, align 4
@slae2_.acmn = internal global float 0.000000e+00, align 4
@slae2_.acmx = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slae2_(float* %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %12 = load float*, float** %6, align 8
  %13 = load float, float* %12, align 4
  %14 = load float*, float** %8, align 8
  %15 = load float, float* %14, align 4
  %16 = fadd float %13, %15
  store float %16, float* @slae2_.sm, align 4
  %17 = load float*, float** %6, align 8
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %8, align 8
  %20 = load float, float* %19, align 4
  %21 = fsub float %18, %20
  store float %21, float* @slae2_.df, align 4
  %22 = load float, float* @slae2_.df, align 4
  %23 = call float @dabs(float %22)
  store float %23, float* @slae2_.adf, align 4
  %24 = load float*, float** %7, align 8
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %7, align 8
  %27 = load float, float* %26, align 4
  %28 = fadd float %25, %27
  store float %28, float* @slae2_.tb, align 4
  %29 = load float, float* @slae2_.tb, align 4
  %30 = call float @dabs(float %29)
  store float %30, float* @slae2_.ab, align 4
  %31 = load float*, float** %6, align 8
  %32 = load float, float* %31, align 4
  %33 = call float @dabs(float %32)
  %34 = load float*, float** %8, align 8
  %35 = load float, float* %34, align 4
  %36 = call float @dabs(float %35)
  %37 = fcmp ogt float %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %5
  %39 = load float*, float** %6, align 8
  %40 = load float, float* %39, align 4
  store float %40, float* @slae2_.acmx, align 4
  %41 = load float*, float** %8, align 8
  %42 = load float, float* %41, align 4
  store float %42, float* @slae2_.acmn, align 4
  br label %48

43:                                               ; preds = %5
  %44 = load float*, float** %8, align 8
  %45 = load float, float* %44, align 4
  store float %45, float* @slae2_.acmx, align 4
  %46 = load float*, float** %6, align 8
  %47 = load float, float* %46, align 4
  store float %47, float* @slae2_.acmn, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load float, float* @slae2_.adf, align 4
  %50 = load float, float* @slae2_.ab, align 4
  %51 = fcmp ogt float %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load float, float* @slae2_.ab, align 4
  %54 = load float, float* @slae2_.adf, align 4
  %55 = fdiv float %53, %54
  store float %55, float* %11, align 4
  %56 = load float, float* @slae2_.adf, align 4
  %57 = load float, float* %11, align 4
  %58 = load float, float* %11, align 4
  %59 = fmul float %57, %58
  %60 = fadd float %59, 1.000000e+00
  %61 = call float @sqrt(float %60)
  %62 = fmul float %56, %61
  store float %62, float* @slae2_.rt, align 4
  br label %83

63:                                               ; preds = %48
  %64 = load float, float* @slae2_.adf, align 4
  %65 = load float, float* @slae2_.ab, align 4
  %66 = fcmp olt float %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load float, float* @slae2_.adf, align 4
  %69 = load float, float* @slae2_.ab, align 4
  %70 = fdiv float %68, %69
  store float %70, float* %11, align 4
  %71 = load float, float* @slae2_.ab, align 4
  %72 = load float, float* %11, align 4
  %73 = load float, float* %11, align 4
  %74 = fmul float %72, %73
  %75 = fadd float %74, 1.000000e+00
  %76 = call float @sqrt(float %75)
  %77 = fmul float %71, %76
  store float %77, float* @slae2_.rt, align 4
  br label %82

78:                                               ; preds = %63
  %79 = load float, float* @slae2_.ab, align 4
  %80 = call float @sqrt(float 2.000000e+00)
  %81 = fmul float %79, %80
  store float %81, float* @slae2_.rt, align 4
  br label %82

82:                                               ; preds = %78, %67
  br label %83

83:                                               ; preds = %82, %52
  %84 = load float, float* @slae2_.sm, align 4
  %85 = fcmp olt float %84, 0.000000e+00
  br i1 %85, label %86, label %108

86:                                               ; preds = %83
  %87 = load float, float* @slae2_.sm, align 4
  %88 = load float, float* @slae2_.rt, align 4
  %89 = fsub float %87, %88
  %90 = fmul float %89, 5.000000e-01
  %91 = load float*, float** %9, align 8
  store float %90, float* %91, align 4
  %92 = load float, float* @slae2_.acmx, align 4
  %93 = load float*, float** %9, align 8
  %94 = load float, float* %93, align 4
  %95 = fdiv float %92, %94
  %96 = load float, float* @slae2_.acmn, align 4
  %97 = fmul float %95, %96
  %98 = load float*, float** %7, align 8
  %99 = load float, float* %98, align 4
  %100 = load float*, float** %9, align 8
  %101 = load float, float* %100, align 4
  %102 = fdiv float %99, %101
  %103 = load float*, float** %7, align 8
  %104 = load float, float* %103, align 4
  %105 = fmul float %102, %104
  %106 = fsub float %97, %105
  %107 = load float*, float** %10, align 8
  store float %106, float* %107, align 4
  br label %141

108:                                              ; preds = %83
  %109 = load float, float* @slae2_.sm, align 4
  %110 = fcmp ogt float %109, 0.000000e+00
  br i1 %110, label %111, label %133

111:                                              ; preds = %108
  %112 = load float, float* @slae2_.sm, align 4
  %113 = load float, float* @slae2_.rt, align 4
  %114 = fadd float %112, %113
  %115 = fmul float %114, 5.000000e-01
  %116 = load float*, float** %9, align 8
  store float %115, float* %116, align 4
  %117 = load float, float* @slae2_.acmx, align 4
  %118 = load float*, float** %9, align 8
  %119 = load float, float* %118, align 4
  %120 = fdiv float %117, %119
  %121 = load float, float* @slae2_.acmn, align 4
  %122 = fmul float %120, %121
  %123 = load float*, float** %7, align 8
  %124 = load float, float* %123, align 4
  %125 = load float*, float** %9, align 8
  %126 = load float, float* %125, align 4
  %127 = fdiv float %124, %126
  %128 = load float*, float** %7, align 8
  %129 = load float, float* %128, align 4
  %130 = fmul float %127, %129
  %131 = fsub float %122, %130
  %132 = load float*, float** %10, align 8
  store float %131, float* %132, align 4
  br label %140

133:                                              ; preds = %108
  %134 = load float, float* @slae2_.rt, align 4
  %135 = fmul float %134, 5.000000e-01
  %136 = load float*, float** %9, align 8
  store float %135, float* %136, align 4
  %137 = load float, float* @slae2_.rt, align 4
  %138 = fmul float %137, -5.000000e-01
  %139 = load float*, float** %10, align 8
  store float %138, float* %139, align 4
  br label %140

140:                                              ; preds = %133, %111
  br label %141

141:                                              ; preds = %140, %86
  ret i32 0
}

declare dso_local float @dabs(float) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
