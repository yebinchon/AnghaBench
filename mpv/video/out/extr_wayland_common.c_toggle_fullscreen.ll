; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_toggle_fullscreen.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_toggle_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32, i64 }

@VO_NOTAVAIL = common dso_local global i32 0, align 4
@VO_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_wayland_state*)* @toggle_fullscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toggle_fullscreen(%struct.vo_wayland_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vo_wayland_state*, align 8
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %3, align 8
  %4 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %5 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @VO_NOTAVAIL, align 4
  store i32 %9, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %12 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @xdg_toplevel_unset_fullscreen(i32 %18)
  br label %25

20:                                               ; preds = %10
  %21 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %22 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @xdg_toplevel_set_fullscreen(i32 %23, i32* null)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* @VO_TRUE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @xdg_toplevel_unset_fullscreen(i32) #1

declare dso_local i32 @xdg_toplevel_set_fullscreen(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
