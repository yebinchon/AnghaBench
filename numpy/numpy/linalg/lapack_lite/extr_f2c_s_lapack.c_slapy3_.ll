; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slapy3_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slapy3_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slapy3_.w = internal global float 0.000000e+00, align 4
@slapy3_.xabs = internal global float 0.000000e+00, align 4
@slapy3_.yabs = internal global float 0.000000e+00, align 4
@slapy3_.zabs = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @slapy3_(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %11 = load float*, float** %4, align 8
  %12 = load float, float* %11, align 4
  %13 = call float @dabs(float %12)
  store float %13, float* @slapy3_.xabs, align 4
  %14 = load float*, float** %5, align 8
  %15 = load float, float* %14, align 4
  %16 = call float @dabs(float %15)
  store float %16, float* @slapy3_.yabs, align 4
  %17 = load float*, float** %6, align 8
  %18 = load float, float* %17, align 4
  %19 = call float @dabs(float %18)
  store float %19, float* @slapy3_.zabs, align 4
  %20 = load float, float* @slapy3_.xabs, align 4
  %21 = load float, float* @slapy3_.yabs, align 4
  %22 = call float @max(float %20, float %21)
  store float %22, float* %8, align 4
  %23 = load float, float* %8, align 4
  %24 = load float, float* @slapy3_.zabs, align 4
  %25 = call float @dmax(float %23, float %24)
  store float %25, float* @slapy3_.w, align 4
  %26 = load float, float* @slapy3_.w, align 4
  %27 = fcmp oeq float %26, 0.000000e+00
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load float, float* @slapy3_.xabs, align 4
  %30 = load float, float* @slapy3_.yabs, align 4
  %31 = fadd float %29, %30
  %32 = load float, float* @slapy3_.zabs, align 4
  %33 = fadd float %31, %32
  store float %33, float* %7, align 4
  br label %58

34:                                               ; preds = %3
  %35 = load float, float* @slapy3_.xabs, align 4
  %36 = load float, float* @slapy3_.w, align 4
  %37 = fdiv float %35, %36
  store float %37, float* %8, align 4
  %38 = load float, float* @slapy3_.yabs, align 4
  %39 = load float, float* @slapy3_.w, align 4
  %40 = fdiv float %38, %39
  store float %40, float* %9, align 4
  %41 = load float, float* @slapy3_.zabs, align 4
  %42 = load float, float* @slapy3_.w, align 4
  %43 = fdiv float %41, %42
  store float %43, float* %10, align 4
  %44 = load float, float* @slapy3_.w, align 4
  %45 = load float, float* %8, align 4
  %46 = load float, float* %8, align 4
  %47 = fmul float %45, %46
  %48 = load float, float* %9, align 4
  %49 = load float, float* %9, align 4
  %50 = fmul float %48, %49
  %51 = fadd float %47, %50
  %52 = load float, float* %10, align 4
  %53 = load float, float* %10, align 4
  %54 = fmul float %52, %53
  %55 = fadd float %51, %54
  %56 = call float @sqrt(float %55)
  %57 = fmul float %44, %56
  store float %57, float* %7, align 4
  br label %58

58:                                               ; preds = %34, %28
  %59 = load float, float* %7, align 4
  ret float %59
}

declare dso_local float @dabs(float) #1

declare dso_local float @max(float, float) #1

declare dso_local float @dmax(float, float) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
