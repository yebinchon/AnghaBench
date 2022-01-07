; ModuleID = '/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context_wayland.c_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context_wayland.c_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vo_wayland_state* }
%struct.vo_wayland_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Handling resize on the vk side\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.vo_wayland_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %9, align 8
  store %struct.vo_wayland_state* %10, %struct.vo_wayland_state** %3, align 8
  %11 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %12 = call i32 @MP_VERBOSE(%struct.vo_wayland_state* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %14 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mp_rect_w(i32 %18)
  %20 = mul nsw i32 %15, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %22 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %25 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mp_rect_h(i32 %26)
  %28 = mul nsw i32 %23, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %30 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %33 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wl_surface_set_buffer_scale(i32 %31, i32 %34)
  %36 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ra_vk_ctx_resize(%struct.ra_ctx* %36, i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local i32 @MP_VERBOSE(%struct.vo_wayland_state*, i8*) #1

declare dso_local i32 @mp_rect_w(i32) #1

declare dso_local i32 @mp_rect_h(i32) #1

declare dso_local i32 @wl_surface_set_buffer_scale(i32, i32) #1

declare dso_local i32 @ra_vk_ctx_resize(%struct.ra_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
