; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_wayland_egl_swap_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_wayland_egl_swap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_3__*, %struct.priv* }
%struct.TYPE_3__ = type { %struct.vo_wayland_state* }
%struct.vo_wayland_state = type { i32, i32, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.priv = type { i32, i32 }

@feedback_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @wayland_egl_swap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wayland_egl_swap_buffers(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.vo_wayland_state*, align 8
  %5 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %6, i32 0, i32 1
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %12, align 8
  store %struct.vo_wayland_state* %13, %struct.vo_wayland_state** %4, align 8
  %14 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %15 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %1
  %19 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %20 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %23 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wp_presentation_feedback(i64 %21, i32 %24)
  %26 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %27 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %29 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %32 = call i32 @wp_presentation_feedback_add_listener(i32 %30, i32* @feedback_listener, %struct.vo_wayland_state* %31)
  %33 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %34 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %38 = call i32 @last_available_sync(%struct.vo_wayland_state* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %18
  %42 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %43 = call i32 @queue_new_sync(%struct.vo_wayland_state* %42)
  br label %44

44:                                               ; preds = %41, %18
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @eglSwapBuffers(i32 %48, i32 %51)
  %53 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %54 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %45
  %60 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %61 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %62 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %61, i32 0, i32 3
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vo_wayland_wait_frame(%struct.vo_wayland_state* %60, i32 %65)
  br label %67

67:                                               ; preds = %59, %45
  %68 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %69 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %74 = call i32 @wayland_sync_swap(%struct.vo_wayland_state* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %4, align 8
  %77 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  ret void
}

declare dso_local i32 @wp_presentation_feedback(i64, i32) #1

declare dso_local i32 @wp_presentation_feedback_add_listener(i32, i32*, %struct.vo_wayland_state*) #1

declare dso_local i32 @last_available_sync(%struct.vo_wayland_state*) #1

declare dso_local i32 @queue_new_sync(%struct.vo_wayland_state*) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

declare dso_local i32 @vo_wayland_wait_frame(%struct.vo_wayland_state*, i32) #1

declare dso_local i32 @wayland_sync_swap(%struct.vo_wayland_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
