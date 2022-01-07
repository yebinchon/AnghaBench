; ModuleID = '/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context_wayland.c_wayland_vk_get_vsync.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context_wayland.c_wayland_vk_get_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vo_wayland_state* }
%struct.vo_wayland_state = type { i32, i32, i32, i32, i64 }
%struct.vo_vsync_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*, %struct.vo_vsync_info*)* @wayland_vk_get_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wayland_vk_get_vsync(%struct.ra_ctx* %0, %struct.vo_vsync_info* %1) #0 {
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.vo_vsync_info*, align 8
  %5 = alloca %struct.vo_wayland_state*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  store %struct.vo_vsync_info* %1, %struct.vo_vsync_info** %4, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %9, align 8
  store %struct.vo_wayland_state* %10, %struct.vo_wayland_state** %5, align 8
  %11 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %12 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %22 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %25 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %27 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %30 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %5, align 8
  %32 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %4, align 8
  %35 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %20, %15, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
