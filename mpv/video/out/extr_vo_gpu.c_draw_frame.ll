; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_draw_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_draw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.gpu_priv* }
%struct.gpu_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ra_swapchain* }
%struct.ra_swapchain = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ra_swapchain*, %struct.vo_frame*)*, i32 (%struct.ra_swapchain*, %struct.ra_fbo*)* }
%struct.ra_fbo = type { i32 }
%struct.vo_frame = type { i32 }

@RENDER_FRAME_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed presenting frame!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.vo_frame*)* @draw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_frame(%struct.vo* %0, %struct.vo_frame* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  %5 = alloca %struct.gpu_priv*, align 8
  %6 = alloca %struct.ra_swapchain*, align 8
  %7 = alloca %struct.ra_fbo, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.vo_frame* %1, %struct.vo_frame** %4, align 8
  %8 = load %struct.vo*, %struct.vo** %3, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 0
  %10 = load %struct.gpu_priv*, %struct.gpu_priv** %9, align 8
  store %struct.gpu_priv* %10, %struct.gpu_priv** %5, align 8
  %11 = load %struct.gpu_priv*, %struct.gpu_priv** %5, align 8
  %12 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ra_swapchain*, %struct.ra_swapchain** %14, align 8
  store %struct.ra_swapchain* %15, %struct.ra_swapchain** %6, align 8
  %16 = load %struct.ra_swapchain*, %struct.ra_swapchain** %6, align 8
  %17 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (%struct.ra_swapchain*, %struct.ra_fbo*)*, i32 (%struct.ra_swapchain*, %struct.ra_fbo*)** %19, align 8
  %21 = load %struct.ra_swapchain*, %struct.ra_swapchain** %6, align 8
  %22 = call i32 %20(%struct.ra_swapchain* %21, %struct.ra_fbo* %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %46

25:                                               ; preds = %2
  %26 = load %struct.gpu_priv*, %struct.gpu_priv** %5, align 8
  %27 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %30 = load i32, i32* @RENDER_FRAME_DEF, align 4
  %31 = getelementptr inbounds %struct.ra_fbo, %struct.ra_fbo* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gl_video_render_frame(i32 %28, %struct.vo_frame* %29, i32 %32, i32 %30)
  %34 = load %struct.ra_swapchain*, %struct.ra_swapchain** %6, align 8
  %35 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.ra_swapchain*, %struct.vo_frame*)*, i32 (%struct.ra_swapchain*, %struct.vo_frame*)** %37, align 8
  %39 = load %struct.ra_swapchain*, %struct.ra_swapchain** %6, align 8
  %40 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %41 = call i32 %38(%struct.ra_swapchain* %39, %struct.vo_frame* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %25
  %44 = load %struct.vo*, %struct.vo** %3, align 8
  %45 = call i32 @MP_ERR(%struct.vo* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %24, %43, %25
  ret void
}

declare dso_local i32 @gl_video_render_frame(i32, %struct.vo_frame*, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
