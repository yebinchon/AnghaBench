; ModuleID = '/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context_wayland.c_frame_callback.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context_wayland.c_frame_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_callback = type { i32 }
%struct.vo_wayland_state = type { i32, i32, i32 }

@frame_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_callback*, i32)* @frame_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_callback(i8* %0, %struct.wl_callback* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vo_wayland_state*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wl_callback* %1, %struct.wl_callback** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vo_wayland_state*
  store %struct.vo_wayland_state* %9, %struct.vo_wayland_state** %7, align 8
  %10 = load %struct.wl_callback*, %struct.wl_callback** %5, align 8
  %11 = icmp ne %struct.wl_callback* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.wl_callback*, %struct.wl_callback** %5, align 8
  %14 = call i32 @wl_callback_destroy(%struct.wl_callback* %13)
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wl_surface_frame(i32 %18)
  %20 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %21 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %23 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %26 = call i32 @wl_callback_add_listener(i32 %24, i32* @frame_listener, %struct.vo_wayland_state* %25)
  %27 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %7, align 8
  %28 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  ret void
}

declare dso_local i32 @wl_callback_destroy(%struct.wl_callback*) #1

declare dso_local i32 @wl_surface_frame(i32) #1

declare dso_local i32 @wl_callback_add_listener(i32, i32*, %struct.vo_wayland_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
