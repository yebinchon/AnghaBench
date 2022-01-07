; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_easings.h_cubic_ease_in_out.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_easings.h_cubic_ease_in_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @cubic_ease_in_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @cubic_ease_in_out(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  %5 = load float, float* %3, align 4
  %6 = fcmp olt float %5, 5.000000e-01
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load float, float* %3, align 4
  %9 = fmul float 4.000000e+00, %8
  %10 = load float, float* %3, align 4
  %11 = fmul float %9, %10
  %12 = load float, float* %3, align 4
  %13 = fmul float %11, %12
  store float %13, float* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load float, float* %3, align 4
  %16 = fmul float 2.000000e+00, %15
  %17 = fsub float %16, 2.000000e+00
  store float %17, float* %4, align 4
  %18 = load float, float* %3, align 4
  %19 = fsub float %18, 1.000000e+00
  %20 = load float, float* %4, align 4
  %21 = fmul float %19, %20
  %22 = load float, float* %4, align 4
  %23 = fmul float %21, %22
  %24 = fadd float %23, 1.000000e+00
  store float %24, float* %2, align 4
  br label %25

25:                                               ; preds = %14, %7
  %26 = load float, float* %2, align 4
  ret float %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
