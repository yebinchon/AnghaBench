; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_win_state.c_vo_apply_window_geometry.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_win_state.c_vo_apply_window_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, i64, i64 }
%struct.vo_win_geometry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_apply_window_geometry(%struct.vo* %0, %struct.vo_win_geometry* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_win_geometry*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.vo_win_geometry* %1, %struct.vo_win_geometry** %4, align 8
  %5 = load %struct.vo_win_geometry*, %struct.vo_win_geometry** %4, align 8
  %6 = getelementptr inbounds %struct.vo_win_geometry, %struct.vo_win_geometry* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.vo_win_geometry*, %struct.vo_win_geometry** %4, align 8
  %10 = getelementptr inbounds %struct.vo_win_geometry, %struct.vo_win_geometry* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %8, %12
  %14 = load %struct.vo*, %struct.vo** %3, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.vo_win_geometry*, %struct.vo_win_geometry** %4, align 8
  %17 = getelementptr inbounds %struct.vo_win_geometry, %struct.vo_win_geometry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vo_win_geometry*, %struct.vo_win_geometry** %4, align 8
  %21 = getelementptr inbounds %struct.vo_win_geometry, %struct.vo_win_geometry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %19, %23
  %25 = load %struct.vo*, %struct.vo** %3, align 8
  %26 = getelementptr inbounds %struct.vo, %struct.vo* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.vo_win_geometry*, %struct.vo_win_geometry** %4, align 8
  %28 = getelementptr inbounds %struct.vo_win_geometry, %struct.vo_win_geometry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vo*, %struct.vo** %3, align 8
  %31 = getelementptr inbounds %struct.vo, %struct.vo* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
