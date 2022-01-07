; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransformInverse.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTransformInverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvgTransformInverse(float* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  %8 = load float*, float** %5, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = load float*, float** %5, align 8
  %13 = getelementptr inbounds float, float* %12, i64 3
  %14 = load float, float* %13, align 4
  %15 = fpext float %14 to double
  %16 = fmul double %11, %15
  %17 = load float*, float** %5, align 8
  %18 = getelementptr inbounds float, float* %17, i64 2
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = load float*, float** %5, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = fmul double %20, %24
  %26 = fsub double %16, %25
  store double %26, double* %7, align 8
  %27 = load double, double* %7, align 8
  %28 = fcmp ogt double %27, 0xBEB0C6F7A0B5ED8D
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load double, double* %7, align 8
  %31 = fcmp olt double %30, 0x3EB0C6F7A0B5ED8D
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load float*, float** %4, align 8
  %34 = call i32 @nvgTransformIdentity(float* %33)
  store i32 0, i32* %3, align 4
  br label %124

35:                                               ; preds = %29, %2
  %36 = load double, double* %7, align 8
  %37 = fdiv double 1.000000e+00, %36
  store double %37, double* %6, align 8
  %38 = load float*, float** %5, align 8
  %39 = getelementptr inbounds float, float* %38, i64 3
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = load double, double* %6, align 8
  %43 = fmul double %41, %42
  %44 = fptrunc double %43 to float
  %45 = load float*, float** %4, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  store float %44, float* %46, align 4
  %47 = load float*, float** %5, align 8
  %48 = getelementptr inbounds float, float* %47, i64 2
  %49 = load float, float* %48, align 4
  %50 = fneg float %49
  %51 = fpext float %50 to double
  %52 = load double, double* %6, align 8
  %53 = fmul double %51, %52
  %54 = fptrunc double %53 to float
  %55 = load float*, float** %4, align 8
  %56 = getelementptr inbounds float, float* %55, i64 2
  store float %54, float* %56, align 4
  %57 = load float*, float** %5, align 8
  %58 = getelementptr inbounds float, float* %57, i64 2
  %59 = load float, float* %58, align 4
  %60 = fpext float %59 to double
  %61 = load float*, float** %5, align 8
  %62 = getelementptr inbounds float, float* %61, i64 5
  %63 = load float, float* %62, align 4
  %64 = fpext float %63 to double
  %65 = fmul double %60, %64
  %66 = load float*, float** %5, align 8
  %67 = getelementptr inbounds float, float* %66, i64 3
  %68 = load float, float* %67, align 4
  %69 = fpext float %68 to double
  %70 = load float*, float** %5, align 8
  %71 = getelementptr inbounds float, float* %70, i64 4
  %72 = load float, float* %71, align 4
  %73 = fpext float %72 to double
  %74 = fmul double %69, %73
  %75 = fsub double %65, %74
  %76 = load double, double* %6, align 8
  %77 = fmul double %75, %76
  %78 = fptrunc double %77 to float
  %79 = load float*, float** %4, align 8
  %80 = getelementptr inbounds float, float* %79, i64 4
  store float %78, float* %80, align 4
  %81 = load float*, float** %5, align 8
  %82 = getelementptr inbounds float, float* %81, i64 1
  %83 = load float, float* %82, align 4
  %84 = fneg float %83
  %85 = fpext float %84 to double
  %86 = load double, double* %6, align 8
  %87 = fmul double %85, %86
  %88 = fptrunc double %87 to float
  %89 = load float*, float** %4, align 8
  %90 = getelementptr inbounds float, float* %89, i64 1
  store float %88, float* %90, align 4
  %91 = load float*, float** %5, align 8
  %92 = getelementptr inbounds float, float* %91, i64 0
  %93 = load float, float* %92, align 4
  %94 = fpext float %93 to double
  %95 = load double, double* %6, align 8
  %96 = fmul double %94, %95
  %97 = fptrunc double %96 to float
  %98 = load float*, float** %4, align 8
  %99 = getelementptr inbounds float, float* %98, i64 3
  store float %97, float* %99, align 4
  %100 = load float*, float** %5, align 8
  %101 = getelementptr inbounds float, float* %100, i64 1
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = load float*, float** %5, align 8
  %105 = getelementptr inbounds float, float* %104, i64 4
  %106 = load float, float* %105, align 4
  %107 = fpext float %106 to double
  %108 = fmul double %103, %107
  %109 = load float*, float** %5, align 8
  %110 = getelementptr inbounds float, float* %109, i64 0
  %111 = load float, float* %110, align 4
  %112 = fpext float %111 to double
  %113 = load float*, float** %5, align 8
  %114 = getelementptr inbounds float, float* %113, i64 5
  %115 = load float, float* %114, align 4
  %116 = fpext float %115 to double
  %117 = fmul double %112, %116
  %118 = fsub double %108, %117
  %119 = load double, double* %6, align 8
  %120 = fmul double %118, %119
  %121 = fptrunc double %120 to float
  %122 = load float*, float** %4, align 8
  %123 = getelementptr inbounds float, float* %122, i64 5
  store float %121, float* %123, align 4
  store i32 1, i32* %3, align 4
  br label %124

124:                                              ; preds = %35, %32
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @nvgTransformIdentity(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
