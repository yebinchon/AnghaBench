; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_gs_texture_map.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_gs_texture_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.gs_texture_2d = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"gs_texture_map\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Texture is not dynamic\00", align 1
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@GL_WRITE_ONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"glMapBuffer\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"gs_texture_map (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gs_texture_map(%struct.TYPE_6__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gs_texture_2d*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = bitcast %struct.TYPE_6__* %9 to %struct.gs_texture_2d*
  store %struct.gs_texture_2d* %10, %struct.gs_texture_2d** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i32 @is_texture_2d(%struct.TYPE_6__* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %58

15:                                               ; preds = %3
  %16 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %8, align 8
  %17 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @LOG_ERROR, align 4
  %23 = call i32 @blog(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %58

24:                                               ; preds = %15
  %25 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %26 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %8, align 8
  %27 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gl_bind_buffer(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %58

32:                                               ; preds = %24
  %33 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %34 = load i32, i32* @GL_WRITE_ONLY, align 4
  %35 = call i32* @glMapBuffer(i32 %33, i32 %34)
  %36 = load i32**, i32*** %6, align 8
  store i32* %35, i32** %36, align 8
  %37 = call i32 @gl_success(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %58

40:                                               ; preds = %32
  %41 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %42 = call i32 @gl_bind_buffer(i32 %41, i32 0)
  %43 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %8, align 8
  %44 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gs_get_format_bpp(i32 %48)
  %50 = mul nsw i32 %45, %49
  %51 = sdiv i32 %50, 8
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 3
  %56 = and i32 %55, -4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 1, i32* %4, align 4
  br label %61

58:                                               ; preds = %39, %31, %21, %14
  %59 = load i32, i32* @LOG_ERROR, align 4
  %60 = call i32 @blog(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %40
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @is_texture_2d(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gl_bind_buffer(i32, i32) #1

declare dso_local i32* @glMapBuffer(i32, i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @gs_get_format_bpp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
