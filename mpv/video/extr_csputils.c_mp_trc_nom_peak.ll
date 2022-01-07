; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_trc_nom_peak.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_trc_nom_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_REF_WHITE = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @mp_trc_nom_peak(i32 %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %13 [
    i32 131, label %5
    i32 132, label %9
    i32 128, label %10
    i32 130, label %11
    i32 129, label %12
  ]

5:                                                ; preds = %1
  %6 = load double, double* @MP_REF_WHITE, align 8
  %7 = fdiv double 1.000000e+04, %6
  %8 = fptrunc double %7 to float
  store float %8, float* %2, align 4
  br label %14

9:                                                ; preds = %1
  store float 1.200000e+01, float* %2, align 4
  br label %14

10:                                               ; preds = %1
  store float 0x40470AF1A0000000, float* %2, align 4
  br label %14

11:                                               ; preds = %1
  store float 0x401A147AE0000000, float* %2, align 4
  br label %14

12:                                               ; preds = %1
  store float 0x40226C8B40000000, float* %2, align 4
  br label %14

13:                                               ; preds = %1
  store float 1.000000e+00, float* %2, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %10, %9, %5
  %15 = load float, float* %2, align 4
  ret float %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
