; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/extr_ergodox_infinity.c_cie_lightness.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/extr_ergodox_infinity.c_cie_lightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @cie_lightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @cie_lightness(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %2, align 4
  %5 = load float, float* %2, align 4
  %6 = fdiv float %5, 6.553500e+04
  %7 = fmul float 1.000000e+02, %6
  store float %7, float* %3, align 4
  store float 0.000000e+00, float* %4, align 4
  %8 = load float, float* %3, align 4
  %9 = fcmp ole float %8, 8.000000e+00
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load float, float* %3, align 4
  %12 = fpext float %11 to double
  %13 = fdiv double %12, 0x408C326666666666
  %14 = fptrunc double %13 to float
  store float %14, float* %4, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load float, float* %3, align 4
  %17 = fadd float %16, 1.600000e+01
  %18 = fdiv float %17, 1.160000e+02
  store float %18, float* %4, align 4
  %19 = load float, float* %4, align 4
  %20 = load float, float* %4, align 4
  %21 = fmul float %19, %20
  %22 = load float, float* %4, align 4
  %23 = fmul float %21, %22
  store float %23, float* %4, align 4
  %24 = load float, float* %4, align 4
  %25 = fcmp ogt float %24, 1.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store float 1.000000e+00, float* %4, align 4
  br label %27

27:                                               ; preds = %26, %15
  br label %28

28:                                               ; preds = %27, %10
  %29 = load float, float* %4, align 4
  %30 = fmul float %29, 6.553500e+04
  ret float %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
