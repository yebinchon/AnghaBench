; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_asinfacosf.c_R.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_asinfacosf.c_R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pS0 = common dso_local global float 0.000000e+00, align 4
@pS1 = common dso_local global float 0.000000e+00, align 4
@pS2 = common dso_local global float 0.000000e+00, align 4
@qS1 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @R to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @R(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %2, align 4
  %5 = load float, float* %2, align 4
  %6 = load float, float* @pS0, align 4
  %7 = load float, float* %2, align 4
  %8 = load float, float* @pS1, align 4
  %9 = load float, float* %2, align 4
  %10 = load float, float* @pS2, align 4
  %11 = fmul float %9, %10
  %12 = fadd float %8, %11
  %13 = fmul float %7, %12
  %14 = fadd float %6, %13
  %15 = fmul float %5, %14
  store float %15, float* %3, align 4
  %16 = load float, float* %2, align 4
  %17 = load float, float* @qS1, align 4
  %18 = fmul float %16, %17
  %19 = fadd float 1.000000e+00, %18
  store float %19, float* %4, align 4
  %20 = load float, float* %3, align 4
  %21 = load float, float* %4, align 4
  %22 = fdiv float %20, %21
  ret float %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
