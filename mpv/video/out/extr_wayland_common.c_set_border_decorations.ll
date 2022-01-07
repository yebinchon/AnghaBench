; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_set_border_decorations.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_set_border_decorations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32 }

@VO_NOTIMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Enabling server decorations\0A\00", align 1
@ZXDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Disabling server decorations\0A\00", align 1
@ZXDG_TOPLEVEL_DECORATION_V1_MODE_CLIENT_SIDE = common dso_local global i32 0, align 4
@VO_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_wayland_state*, i32)* @set_border_decorations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_border_decorations(%struct.vo_wayland_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vo_wayland_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %8 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @VO_NOTIMPL, align 4
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %18 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ZXDG_TOPLEVEL_DECORATION_V1_MODE_SERVER_SIDE, align 4
  store i32 %19, i32* %6, align 4
  br label %24

20:                                               ; preds = %13
  %21 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %22 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ZXDG_TOPLEVEL_DECORATION_V1_MODE_CLIENT_SIDE, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %26 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @zxdg_toplevel_decoration_v1_set_mode(i32 %27, i32 %28)
  %30 = load i32, i32* @VO_TRUE, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32 @zxdg_toplevel_decoration_v1_set_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
