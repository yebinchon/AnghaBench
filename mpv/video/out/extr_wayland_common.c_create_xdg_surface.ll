; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_create_xdg_surface.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_create_xdg_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32, i32, i32, i32 }

@xdg_surface_listener = common dso_local global i32 0, align 4
@xdg_toplevel_listener = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mpv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_wayland_state*)* @create_xdg_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_xdg_surface(%struct.vo_wayland_state* %0) #0 {
  %2 = alloca %struct.vo_wayland_state*, align 8
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %2, align 8
  %3 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %4 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %7 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @xdg_wm_base_get_xdg_surface(i32 %5, i32 %8)
  %10 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %11 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %13 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %16 = call i32 @xdg_surface_add_listener(i32 %14, i32* @xdg_surface_listener, %struct.vo_wayland_state* %15)
  %17 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %18 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xdg_surface_get_toplevel(i32 %19)
  %21 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %22 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %24 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %27 = call i32 @xdg_toplevel_add_listener(i32 %25, i32* @xdg_toplevel_listener, %struct.vo_wayland_state* %26)
  %28 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %29 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xdg_toplevel_set_title(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %33 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xdg_toplevel_set_app_id(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @xdg_wm_base_get_xdg_surface(i32, i32) #1

declare dso_local i32 @xdg_surface_add_listener(i32, i32*, %struct.vo_wayland_state*) #1

declare dso_local i32 @xdg_surface_get_toplevel(i32) #1

declare dso_local i32 @xdg_toplevel_add_listener(i32, i32*, %struct.vo_wayland_state*) #1

declare dso_local i32 @xdg_toplevel_set_title(i32, i8*) #1

declare dso_local i32 @xdg_toplevel_set_app_id(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
