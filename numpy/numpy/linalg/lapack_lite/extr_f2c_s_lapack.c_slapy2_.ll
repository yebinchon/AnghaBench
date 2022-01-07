; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slapy2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slapy2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slapy2_.w = internal global float 0.000000e+00, align 4
@slapy2_.z__ = internal global float 0.000000e+00, align 4
@slapy2_.xabs = internal global float 0.000000e+00, align 4
@slapy2_.yabs = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @slapy2_(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %7 = load float*, float** %3, align 8
  %8 = load float, float* %7, align 4
  %9 = call float @dabs(float %8)
  store float %9, float* @slapy2_.xabs, align 4
  %10 = load float*, float** %4, align 8
  %11 = load float, float* %10, align 4
  %12 = call float @dabs(float %11)
  store float %12, float* @slapy2_.yabs, align 4
  %13 = load float, float* @slapy2_.xabs, align 4
  %14 = load float, float* @slapy2_.yabs, align 4
  %15 = call float @dmax(float %13, float %14)
  store float %15, float* @slapy2_.w, align 4
  %16 = load float, float* @slapy2_.xabs, align 4
  %17 = load float, float* @slapy2_.yabs, align 4
  %18 = call float @dmin(float %16, float %17)
  store float %18, float* @slapy2_.z__, align 4
  %19 = load float, float* @slapy2_.z__, align 4
  %20 = fcmp oeq float %19, 0.000000e+00
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load float, float* @slapy2_.w, align 4
  store float %22, float* %5, align 4
  br label %34

23:                                               ; preds = %2
  %24 = load float, float* @slapy2_.z__, align 4
  %25 = load float, float* @slapy2_.w, align 4
  %26 = fdiv float %24, %25
  store float %26, float* %6, align 4
  %27 = load float, float* @slapy2_.w, align 4
  %28 = load float, float* %6, align 4
  %29 = load float, float* %6, align 4
  %30 = fmul float %28, %29
  %31 = fadd float %30, 1.000000e+00
  %32 = call float @sqrt(float %31)
  %33 = fmul float %27, %32
  store float %33, float* %5, align 4
  br label %34

34:                                               ; preds = %23, %21
  %35 = load float, float* %5, align 4
  ret float %35
}

declare dso_local float @dabs(float) #1

declare dso_local float @dmax(float, float) #1

declare dso_local float @dmin(float, float) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
