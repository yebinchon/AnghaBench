; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_glx.c_gladLoadGLXLoader.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_glx.c_gladLoadGLXLoader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"glXQueryVersion\00", align 1
@glXQueryVersion = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gladLoadGLXLoader(i64 (i8*)* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64 (i8*)*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 (i8*)* %0, i64 (i8*)** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %8 = call i64 %7(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** @glXQueryVersion, align 8
  %10 = load i32*, i32** @glXQueryVersion, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %92

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @find_coreGLX(i32* %14, i32 %15)
  %17 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %18 = call i32 @load_GLX_VERSION_1_0(i64 (i8*)* %17)
  %19 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %20 = call i32 @load_GLX_VERSION_1_1(i64 (i8*)* %19)
  %21 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %22 = call i32 @load_GLX_VERSION_1_2(i64 (i8*)* %21)
  %23 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %24 = call i32 @load_GLX_VERSION_1_3(i64 (i8*)* %23)
  %25 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %26 = call i32 @load_GLX_VERSION_1_4(i64 (i8*)* %25)
  %27 = call i32 (...) @find_extensionsGLX()
  %28 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %29 = call i32 @load_GLX_EXT_import_context(i64 (i8*)* %28)
  %30 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %31 = call i32 @load_GLX_SGIX_pbuffer(i64 (i8*)* %30)
  %32 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %33 = call i32 @load_GLX_NV_swap_group(i64 (i8*)* %32)
  %34 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %35 = call i32 @load_GLX_SGIX_hyperpipe(i64 (i8*)* %34)
  %36 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %37 = call i32 @load_GLX_SGIX_video_resize(i64 (i8*)* %36)
  %38 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %39 = call i32 @load_GLX_NV_copy_image(i64 (i8*)* %38)
  %40 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %41 = call i32 @load_GLX_OML_sync_control(i64 (i8*)* %40)
  %42 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %43 = call i32 @load_GLX_SGI_make_current_read(i64 (i8*)* %42)
  %44 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %45 = call i32 @load_GLX_MESA_swap_control(i64 (i8*)* %44)
  %46 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %47 = call i32 @load_GLX_SGI_swap_control(i64 (i8*)* %46)
  %48 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %49 = call i32 @load_GLX_SGI_video_sync(i64 (i8*)* %48)
  %50 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %51 = call i32 @load_GLX_MESA_agp_offset(i64 (i8*)* %50)
  %52 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %53 = call i32 @load_GLX_MESA_set_3dfx_mode(i64 (i8*)* %52)
  %54 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %55 = call i32 @load_GLX_EXT_texture_from_pixmap(i64 (i8*)* %54)
  %56 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %57 = call i32 @load_GLX_NV_video_capture(i64 (i8*)* %56)
  %58 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %59 = call i32 @load_GLX_NV_delay_before_swap(i64 (i8*)* %58)
  %60 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %61 = call i32 @load_GLX_SGIX_swap_group(i64 (i8*)* %60)
  %62 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %63 = call i32 @load_GLX_EXT_swap_control(i64 (i8*)* %62)
  %64 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %65 = call i32 @load_GLX_SGIX_video_source(i64 (i8*)* %64)
  %66 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %67 = call i32 @load_GLX_MESA_query_renderer(i64 (i8*)* %66)
  %68 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %69 = call i32 @load_GLX_ARB_create_context(i64 (i8*)* %68)
  %70 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %71 = call i32 @load_GLX_SGIX_fbconfig(i64 (i8*)* %70)
  %72 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %73 = call i32 @load_GLX_MESA_pixmap_colormap(i64 (i8*)* %72)
  %74 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %75 = call i32 @load_GLX_NV_video_output(i64 (i8*)* %74)
  %76 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %77 = call i32 @load_GLX_SGIX_dmbuffer(i64 (i8*)* %76)
  %78 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %79 = call i32 @load_GLX_SGIX_swap_barrier(i64 (i8*)* %78)
  %80 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %81 = call i32 @load_GLX_MESA_release_buffers(i64 (i8*)* %80)
  %82 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %83 = call i32 @load_GLX_MESA_copy_sub_buffer(i64 (i8*)* %82)
  %84 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %85 = call i32 @load_GLX_SGI_cushion(i64 (i8*)* %84)
  %86 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %87 = call i32 @load_GLX_NV_present_video(i64 (i8*)* %86)
  %88 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %89 = call i32 @load_GLX_SUN_get_transparent_index(i64 (i8*)* %88)
  %90 = load i64 (i8*)*, i64 (i8*)** %4, align 8
  %91 = call i32 @load_GLX_ARB_get_proc_address(i64 (i8*)* %90)
  br label %92

92:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @find_coreGLX(i32*, i32) #1

declare dso_local i32 @load_GLX_VERSION_1_0(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_VERSION_1_1(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_VERSION_1_2(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_VERSION_1_3(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_VERSION_1_4(i64 (i8*)*) #1

declare dso_local i32 @find_extensionsGLX(...) #1

declare dso_local i32 @load_GLX_EXT_import_context(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGIX_pbuffer(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_NV_swap_group(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGIX_hyperpipe(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGIX_video_resize(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_NV_copy_image(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_OML_sync_control(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGI_make_current_read(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_MESA_swap_control(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGI_swap_control(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGI_video_sync(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_MESA_agp_offset(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_MESA_set_3dfx_mode(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_EXT_texture_from_pixmap(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_NV_video_capture(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_NV_delay_before_swap(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGIX_swap_group(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_EXT_swap_control(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGIX_video_source(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_MESA_query_renderer(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_ARB_create_context(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGIX_fbconfig(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_MESA_pixmap_colormap(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_NV_video_output(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGIX_dmbuffer(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGIX_swap_barrier(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_MESA_release_buffers(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_MESA_copy_sub_buffer(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SGI_cushion(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_NV_present_video(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_SUN_get_transparent_index(i64 (i8*)*) #1

declare dso_local i32 @load_GLX_ARB_get_proc_address(i64 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
