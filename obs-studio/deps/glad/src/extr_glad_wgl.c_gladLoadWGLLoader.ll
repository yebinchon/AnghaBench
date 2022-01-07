; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_wgl.c_gladLoadWGLLoader.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_wgl.c_gladLoadWGLLoader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"wglGetExtensionsStringARB\00", align 1
@wglGetExtensionsStringARB = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"wglGetExtensionsStringEXT\00", align 1
@wglGetExtensionsStringEXT = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gladLoadWGLLoader(i64 (i8*)* %0, i32 %1) #0 {
  %3 = alloca i64 (i8*)*, align 8
  %4 = alloca i32, align 4
  store i64 (i8*)* %0, i64 (i8*)** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %6 = call i64 %5(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** @wglGetExtensionsStringARB, align 8
  %8 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %9 = call i64 %8(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** @wglGetExtensionsStringEXT, align 8
  %11 = load i32*, i32** @wglGetExtensionsStringARB, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** @wglGetExtensionsStringEXT, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %83

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @find_coreWGL(i32 %18)
  %20 = call i32 (...) @find_extensionsWGL()
  %21 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %22 = call i32 @load_WGL_I3D_image_buffer(i64 (i8*)* %21)
  %23 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %24 = call i32 @load_WGL_I3D_swap_frame_usage(i64 (i8*)* %23)
  %25 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %26 = call i32 @load_WGL_NV_delay_before_swap(i64 (i8*)* %25)
  %27 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %28 = call i32 @load_WGL_OML_sync_control(i64 (i8*)* %27)
  %29 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %30 = call i32 @load_WGL_ARB_create_context(i64 (i8*)* %29)
  %31 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %32 = call i32 @load_WGL_NV_swap_group(i64 (i8*)* %31)
  %33 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %34 = call i32 @load_WGL_NV_gpu_affinity(i64 (i8*)* %33)
  %35 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %36 = call i32 @load_WGL_EXT_pixel_format(i64 (i8*)* %35)
  %37 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %38 = call i32 @load_WGL_ARB_extensions_string(i64 (i8*)* %37)
  %39 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %40 = call i32 @load_WGL_NV_video_capture(i64 (i8*)* %39)
  %41 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %42 = call i32 @load_WGL_ARB_render_texture(i64 (i8*)* %41)
  %43 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %44 = call i32 @load_WGL_ARB_pixel_format(i64 (i8*)* %43)
  %45 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %46 = call i32 @load_WGL_I3D_genlock(i64 (i8*)* %45)
  %47 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %48 = call i32 @load_WGL_NV_DX_interop(i64 (i8*)* %47)
  %49 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %50 = call i32 @load_WGL_3DL_stereo_control(i64 (i8*)* %49)
  %51 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %52 = call i32 @load_WGL_EXT_pbuffer(i64 (i8*)* %51)
  %53 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %54 = call i32 @load_WGL_EXT_display_color_table(i64 (i8*)* %53)
  %55 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %56 = call i32 @load_WGL_NV_video_output(i64 (i8*)* %55)
  %57 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %58 = call i32 @load_WGL_I3D_gamma(i64 (i8*)* %57)
  %59 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %60 = call i32 @load_WGL_NV_copy_image(i64 (i8*)* %59)
  %61 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %62 = call i32 @load_WGL_NV_present_video(i64 (i8*)* %61)
  %63 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %64 = call i32 @load_WGL_ARB_make_current_read(i64 (i8*)* %63)
  %65 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %66 = call i32 @load_WGL_EXT_extensions_string(i64 (i8*)* %65)
  %67 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %68 = call i32 @load_WGL_EXT_swap_control(i64 (i8*)* %67)
  %69 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %70 = call i32 @load_WGL_I3D_digital_video_control(i64 (i8*)* %69)
  %71 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %72 = call i32 @load_WGL_ARB_pbuffer(i64 (i8*)* %71)
  %73 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %74 = call i32 @load_WGL_NV_vertex_array_range(i64 (i8*)* %73)
  %75 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %76 = call i32 @load_WGL_AMD_gpu_association(i64 (i8*)* %75)
  %77 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %78 = call i32 @load_WGL_EXT_make_current_read(i64 (i8*)* %77)
  %79 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %80 = call i32 @load_WGL_I3D_swap_frame_lock(i64 (i8*)* %79)
  %81 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %82 = call i32 @load_WGL_ARB_buffer_region(i64 (i8*)* %81)
  br label %83

83:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @find_coreWGL(i32) #1

declare dso_local i32 @find_extensionsWGL(...) #1

declare dso_local i32 @load_WGL_I3D_image_buffer(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_I3D_swap_frame_usage(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_NV_delay_before_swap(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_OML_sync_control(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_ARB_create_context(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_NV_swap_group(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_NV_gpu_affinity(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_EXT_pixel_format(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_ARB_extensions_string(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_NV_video_capture(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_ARB_render_texture(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_ARB_pixel_format(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_I3D_genlock(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_NV_DX_interop(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_3DL_stereo_control(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_EXT_pbuffer(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_EXT_display_color_table(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_NV_video_output(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_I3D_gamma(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_NV_copy_image(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_NV_present_video(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_ARB_make_current_read(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_EXT_extensions_string(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_EXT_swap_control(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_I3D_digital_video_control(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_ARB_pbuffer(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_NV_vertex_array_range(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_AMD_gpu_association(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_EXT_make_current_read(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_I3D_swap_frame_lock(i64 (i8*)*) #1

declare dso_local i32 @load_WGL_ARB_buffer_region(i64 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
