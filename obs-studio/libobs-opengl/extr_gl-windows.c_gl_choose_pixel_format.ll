; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_choose_pixel_format.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-windows.c_gl_choose_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_init_data = type { i32, i32 }
%struct.darray = type { i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"gl_init_pixel_format: color format not supported\00", align 1
@WGL_DRAW_TO_WINDOW_ARB = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@WGL_SUPPORT_OPENGL_ARB = common dso_local global i32 0, align 4
@WGL_ACCELERATION_ARB = common dso_local global i32 0, align 4
@WGL_FULL_ACCELERATION_ARB = common dso_local global i32 0, align 4
@WGL_DOUBLE_BUFFER_ARB = common dso_local global i32 0, align 4
@WGL_PIXEL_TYPE_ARB = common dso_local global i32 0, align 4
@WGL_TYPE_RGBA_ARB = common dso_local global i32 0, align 4
@WGL_COLOR_BITS_ARB = common dso_local global i32 0, align 4
@WGL_DEPTH_BITS_ARB = common dso_local global i32 0, align 4
@WGL_STENCIL_BITS_ARB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"wglChoosePixelFormatARB failed, %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gs_init_data*)* @gl_choose_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_choose_pixel_format(i32 %0, %struct.gs_init_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_init_data*, align 8
  %6 = alloca %struct.darray, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.gs_init_data* %1, %struct.gs_init_data** %5, align 8
  %13 = load %struct.gs_init_data*, %struct.gs_init_data** %5, align 8
  %14 = getelementptr inbounds %struct.gs_init_data, %struct.gs_init_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @get_color_format_bits(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.gs_init_data*, %struct.gs_init_data** %5, align 8
  %18 = getelementptr inbounds %struct.gs_init_data, %struct.gs_init_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_depth_format_bits(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.gs_init_data*, %struct.gs_init_data** %5, align 8
  %22 = getelementptr inbounds %struct.gs_init_data, %struct.gs_init_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_stencil_format_bits(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @LOG_ERROR, align 4
  %29 = call i32 (i32, i8*, ...) @blog(i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

30:                                               ; preds = %2
  %31 = call i32 @darray_init(%struct.darray* %6)
  %32 = load i32, i32* @WGL_DRAW_TO_WINDOW_ARB, align 4
  %33 = load i32, i32* @GL_TRUE, align 4
  %34 = call i32 @add_attrib(%struct.darray* %6, i32 %32, i32 %33)
  %35 = load i32, i32* @WGL_SUPPORT_OPENGL_ARB, align 4
  %36 = load i32, i32* @GL_TRUE, align 4
  %37 = call i32 @add_attrib(%struct.darray* %6, i32 %35, i32 %36)
  %38 = load i32, i32* @WGL_ACCELERATION_ARB, align 4
  %39 = load i32, i32* @WGL_FULL_ACCELERATION_ARB, align 4
  %40 = call i32 @add_attrib(%struct.darray* %6, i32 %38, i32 %39)
  %41 = load i32, i32* @WGL_DOUBLE_BUFFER_ARB, align 4
  %42 = load i32, i32* @GL_TRUE, align 4
  %43 = call i32 @add_attrib(%struct.darray* %6, i32 %41, i32 %42)
  %44 = load i32, i32* @WGL_PIXEL_TYPE_ARB, align 4
  %45 = load i32, i32* @WGL_TYPE_RGBA_ARB, align 4
  %46 = call i32 @add_attrib(%struct.darray* %6, i32 %44, i32 %45)
  %47 = load i32, i32* @WGL_COLOR_BITS_ARB, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @add_attrib(%struct.darray* %6, i32 %47, i32 %48)
  %50 = load i32, i32* @WGL_DEPTH_BITS_ARB, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @add_attrib(%struct.darray* %6, i32 %50, i32 %51)
  %53 = load i32, i32* @WGL_STENCIL_BITS_ARB, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @add_attrib(%struct.darray* %6, i32 %53, i32 %54)
  %56 = call i32 @add_attrib(%struct.darray* %6, i32 0, i32 0)
  %57 = load i32, i32* %4, align 4
  %58 = getelementptr inbounds %struct.darray, %struct.darray* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wglChoosePixelFormatARB(i32 %57, i32 %59, i32* null, i32 1, i32* %12, i32* %10)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %30
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63, %30
  %67 = load i32, i32* @LOG_ERROR, align 4
  %68 = call i32 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @blog(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = call i32 @darray_free(%struct.darray* %6)
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %27
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @get_color_format_bits(i32) #1

declare dso_local i32 @get_depth_format_bits(i32) #1

declare dso_local i32 @get_stencil_format_bits(i32) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @darray_init(%struct.darray*) #1

declare dso_local i32 @add_attrib(%struct.darray*, i32, i32) #1

declare dso_local i32 @wglChoosePixelFormatARB(i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @darray_free(%struct.darray*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
