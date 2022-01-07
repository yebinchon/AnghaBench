; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_libmpv_gl.c_done_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_libmpv_gl.c_done_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libmpv_gpu_context = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ra_swapchain* }
%struct.ra_swapchain = type { i32 }
%struct.vo_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libmpv_gpu_context*, i32)* @done_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done_frame(%struct.libmpv_gpu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.libmpv_gpu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.ra_swapchain*, align 8
  %7 = alloca %struct.vo_frame, align 4
  store %struct.libmpv_gpu_context* %0, %struct.libmpv_gpu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.libmpv_gpu_context*, %struct.libmpv_gpu_context** %3, align 8
  %9 = getelementptr inbounds %struct.libmpv_gpu_context, %struct.libmpv_gpu_context* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %5, align 8
  %11 = load %struct.priv*, %struct.priv** %5, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ra_swapchain*, %struct.ra_swapchain** %14, align 8
  store %struct.ra_swapchain* %15, %struct.ra_swapchain** %6, align 8
  %16 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %7, i32 0, i32 0
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.ra_swapchain*, %struct.ra_swapchain** %6, align 8
  %19 = call i32 @ra_gl_ctx_submit_frame(%struct.ra_swapchain* %18, %struct.vo_frame* %7)
  ret void
}

declare dso_local i32 @ra_gl_ctx_submit_frame(%struct.ra_swapchain*, %struct.vo_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
