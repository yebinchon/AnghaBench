; ModuleID = '/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context_wayland.c_wayland_vk_swap_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/vulkan/extr_context_wayland.c_wayland_vk_swap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vo_wayland_state* }
%struct.vo_wayland_state = type { i32, i32, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@feedback_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @wayland_vk_swap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wayland_vk_swap_buffers(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.vo_wayland_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %5 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %8, align 8
  store %struct.vo_wayland_state* %9, %struct.vo_wayland_state** %3, align 8
  %10 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %11 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %16 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %19 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wp_presentation_feedback(i64 %17, i32 %20)
  %22 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %23 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %25 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %28 = call i32 @wp_presentation_feedback_add_listener(i32 %26, i32* @feedback_listener, %struct.vo_wayland_state* %27)
  %29 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %30 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %34 = call i32 @last_available_sync(%struct.vo_wayland_state* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %14
  %38 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %39 = call i32 @queue_new_sync(%struct.vo_wayland_state* %38)
  br label %40

40:                                               ; preds = %37, %14
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %43 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %50 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %51 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vo_wayland_wait_frame(%struct.vo_wayland_state* %49, i32 %54)
  br label %56

56:                                               ; preds = %48, %41
  %57 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %58 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %63 = call i32 @wayland_sync_swap(%struct.vo_wayland_state* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %3, align 8
  %66 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  ret void
}

declare dso_local i32 @wp_presentation_feedback(i64, i32) #1

declare dso_local i32 @wp_presentation_feedback_add_listener(i32, i32*, %struct.vo_wayland_state*) #1

declare dso_local i32 @last_available_sync(%struct.vo_wayland_state*) #1

declare dso_local i32 @queue_new_sync(%struct.vo_wayland_state*) #1

declare dso_local i32 @vo_wayland_wait_frame(%struct.vo_wayland_state*, i32) #1

declare dso_local i32 @wayland_sync_swap(%struct.vo_wayland_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
