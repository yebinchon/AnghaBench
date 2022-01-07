; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_win_state.c_vo_calc_window_geometry.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_win_state.c_vo_calc_window_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32 }
%struct.mp_rect = type { i32 }
%struct.vo_win_geometry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_calc_window_geometry(%struct.vo* %0, %struct.mp_rect* %1, %struct.vo_win_geometry* %2) #0 {
  %4 = alloca %struct.vo*, align 8
  %5 = alloca %struct.mp_rect*, align 8
  %6 = alloca %struct.vo_win_geometry*, align 8
  store %struct.vo* %0, %struct.vo** %4, align 8
  store %struct.mp_rect* %1, %struct.mp_rect** %5, align 8
  store %struct.vo_win_geometry* %2, %struct.vo_win_geometry** %6, align 8
  %7 = load %struct.vo*, %struct.vo** %4, align 8
  %8 = load %struct.mp_rect*, %struct.mp_rect** %5, align 8
  %9 = load %struct.vo_win_geometry*, %struct.vo_win_geometry** %6, align 8
  %10 = call i32 @vo_calc_window_geometry2(%struct.vo* %7, %struct.mp_rect* %8, double 1.000000e+00, %struct.vo_win_geometry* %9)
  ret void
}

declare dso_local i32 @vo_calc_window_geometry2(%struct.vo*, %struct.mp_rect*, double, %struct.vo_win_geometry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
