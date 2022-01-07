; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_gs_texture_unmap.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_gs_texture_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.gs_texture_2d = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"gs_texture_unmap\00", align 1
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"glUnmapBuffer\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"glTexImage2D\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"gs_texture_unmap (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_texture_unmap(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.gs_texture_2d*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = bitcast %struct.TYPE_6__* %4 to %struct.gs_texture_2d*
  store %struct.gs_texture_2d* %5, %struct.gs_texture_2d** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = call i32 @is_texture_2d(%struct.TYPE_6__* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %12 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %13 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gl_bind_buffer(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %59

18:                                               ; preds = %10
  %19 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %20 = call i32 @glUnmapBuffer(i32 %19)
  %21 = call i32 @gl_success(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %59

24:                                               ; preds = %18
  %25 = load i32, i32* @GL_TEXTURE_2D, align 4
  %26 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %27 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gl_bind_texture(i32 %25, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %59

33:                                               ; preds = %24
  %34 = load i32, i32* @GL_TEXTURE_2D, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %39 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %42 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @glTexImage2D(i32 %34, i32 0, i32 %37, i32 %40, i32 %43, i32 0, i32 %46, i32 %49, i32 0)
  %51 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %33
  br label %59

54:                                               ; preds = %33
  %55 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %56 = call i32 @gl_bind_buffer(i32 %55, i32 0)
  %57 = load i32, i32* @GL_TEXTURE_2D, align 4
  %58 = call i32 @gl_bind_texture(i32 %57, i32 0)
  br label %66

59:                                               ; preds = %53, %32, %23, %17, %9
  %60 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %61 = call i32 @gl_bind_buffer(i32 %60, i32 0)
  %62 = load i32, i32* @GL_TEXTURE_2D, align 4
  %63 = call i32 @gl_bind_texture(i32 %62, i32 0)
  %64 = load i32, i32* @LOG_ERROR, align 4
  %65 = call i32 @blog(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @is_texture_2d(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @gl_bind_buffer(i32, i32) #1

declare dso_local i32 @glUnmapBuffer(i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @gl_bind_texture(i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
