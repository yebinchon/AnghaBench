; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_device_stage_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_device_stage_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.gs_texture_2d = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"glGetTexImage\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"device_stage_texture (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_stage_texture(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gs_texture_2d*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = bitcast i32* %8 to %struct.gs_texture_2d*
  store %struct.gs_texture_2d* %9, %struct.gs_texture_2d** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %7, align 8
  %12 = call i32 @can_stage(%struct.TYPE_6__* %10, %struct.gs_texture_2d* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %49

15:                                               ; preds = %3
  %16 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gl_bind_buffer(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %49

23:                                               ; preds = %15
  %24 = load i32, i32* @GL_TEXTURE_2D, align 4
  %25 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %7, align 8
  %26 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gl_bind_texture(i32 %24, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %49

32:                                               ; preds = %23
  %33 = load i32, i32* @GL_TEXTURE_2D, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @glGetTexImage(i32 %33, i32 0, i32 %36, i32 %39, i32 0)
  %41 = call i32 @gl_success(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %49

44:                                               ; preds = %32
  %45 = load i32, i32* @GL_TEXTURE_2D, align 4
  %46 = call i32 @gl_bind_texture(i32 %45, i32 0)
  %47 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %48 = call i32 @gl_bind_buffer(i32 %47, i32 0)
  br label %58

49:                                               ; preds = %43, %31, %22, %14
  %50 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %51 = call i32 @gl_bind_buffer(i32 %50, i32 0)
  %52 = load i32, i32* @GL_TEXTURE_2D, align 4
  %53 = call i32 @gl_bind_texture(i32 %52, i32 0)
  %54 = load i32, i32* @LOG_ERROR, align 4
  %55 = call i32 @blog(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @UNUSED_PARAMETER(i32* %56)
  br label %58

58:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @can_stage(%struct.TYPE_6__*, %struct.gs_texture_2d*) #1

declare dso_local i32 @gl_bind_buffer(i32, i32) #1

declare dso_local i32 @gl_bind_texture(i32, i32) #1

declare dso_local i32 @glGetTexImage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
