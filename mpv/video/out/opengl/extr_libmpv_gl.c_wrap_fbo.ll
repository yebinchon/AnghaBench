; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_libmpv_gl.c_wrap_fbo.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_libmpv_gl.c_wrap_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libmpv_gpu_context = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.ra_swapchain* }
%struct.ra_swapchain = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ra_tex = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ra_fbo = type { %struct.ra_tex* }

@MPV_RENDER_PARAM_OPENGL_FBO = common dso_local global i32 0, align 4
@MPV_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@MPGL_CAP_FB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Rendering to FBO requested, but no FBO extension found!\0A\00", align 1
@MPV_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libmpv_gpu_context*, i32*, %struct.ra_tex**)* @wrap_fbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrap_fbo(%struct.libmpv_gpu_context* %0, i32* %1, %struct.ra_tex** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.libmpv_gpu_context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ra_tex**, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.ra_swapchain*, align 8
  %11 = alloca %struct.ra_fbo, align 8
  store %struct.libmpv_gpu_context* %0, %struct.libmpv_gpu_context** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ra_tex** %2, %struct.ra_tex*** %7, align 8
  %12 = load %struct.libmpv_gpu_context*, %struct.libmpv_gpu_context** %5, align 8
  %13 = getelementptr inbounds %struct.libmpv_gpu_context, %struct.libmpv_gpu_context* %12, i32 0, i32 0
  %14 = load %struct.priv*, %struct.priv** %13, align 8
  store %struct.priv* %14, %struct.priv** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @MPV_RENDER_PARAM_OPENGL_FBO, align 4
  %17 = call %struct.TYPE_7__* @get_mpv_render_param(i32* %15, i32 %16, i32* null)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %9, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @MPV_ERROR_INVALID_PARAMETER, align 4
  store i32 %21, i32* %4, align 4
  br label %62

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.priv*, %struct.priv** %8, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MPGL_CAP_FB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load %struct.libmpv_gpu_context*, %struct.libmpv_gpu_context** %5, align 8
  %38 = call i32 @MP_FATAL(%struct.libmpv_gpu_context* %37, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @MPV_ERROR_UNSUPPORTED, align 4
  store i32 %39, i32* %4, align 4
  br label %62

40:                                               ; preds = %27, %22
  %41 = load %struct.priv*, %struct.priv** %8, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.ra_swapchain*, %struct.ra_swapchain** %44, align 8
  store %struct.ra_swapchain* %45, %struct.ra_swapchain** %10, align 8
  %46 = load %struct.ra_swapchain*, %struct.ra_swapchain** %10, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ra_gl_ctx_resize(%struct.ra_swapchain* %46, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.ra_swapchain*, %struct.ra_swapchain** %10, align 8
  %58 = call i32 @ra_gl_ctx_start_frame(%struct.ra_swapchain* %57, %struct.ra_fbo* %11)
  %59 = getelementptr inbounds %struct.ra_fbo, %struct.ra_fbo* %11, i32 0, i32 0
  %60 = load %struct.ra_tex*, %struct.ra_tex** %59, align 8
  %61 = load %struct.ra_tex**, %struct.ra_tex*** %7, align 8
  store %struct.ra_tex* %60, %struct.ra_tex** %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %40, %36, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_7__* @get_mpv_render_param(i32*, i32, i32*) #1

declare dso_local i32 @MP_FATAL(%struct.libmpv_gpu_context*, i8*) #1

declare dso_local i32 @ra_gl_ctx_resize(%struct.ra_swapchain*, i32, i32, i32) #1

declare dso_local i32 @ra_gl_ctx_start_frame(%struct.ra_swapchain*, %struct.ra_fbo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
