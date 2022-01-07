; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.h_mp_xy_X.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.h_mp_xy_X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_csp_col_xy = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (<2 x float>)* @mp_xy_X to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @mp_xy_X(<2 x float> %0) #0 {
  %2 = alloca %struct.mp_csp_col_xy, align 4
  %3 = bitcast %struct.mp_csp_col_xy* %2 to <2 x float>*
  store <2 x float> %0, <2 x float>* %3, align 4
  %4 = getelementptr inbounds %struct.mp_csp_col_xy, %struct.mp_csp_col_xy* %2, i32 0, i32 0
  %5 = load float, float* %4, align 4
  %6 = getelementptr inbounds %struct.mp_csp_col_xy, %struct.mp_csp_col_xy* %2, i32 0, i32 1
  %7 = load float, float* %6, align 4
  %8 = fdiv float %5, %7
  ret float %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
