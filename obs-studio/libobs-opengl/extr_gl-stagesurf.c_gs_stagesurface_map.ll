; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_gs_stagesurface_map.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_gs_stagesurface_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_READ_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"glMapBuffer\00", align 1
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"stagesurf_map (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gs_stagesurface_map(%struct.TYPE_3__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gl_bind_buffer(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %34

15:                                               ; preds = %3
  %16 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %17 = load i32, i32* @GL_READ_ONLY, align 4
  %18 = call i32* @glMapBuffer(i32 %16, i32 %17)
  %19 = load i32**, i32*** %6, align 8
  store i32* %18, i32** %19, align 8
  %20 = call i32 @gl_success(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %34

23:                                               ; preds = %15
  %24 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %25 = call i32 @gl_bind_buffer(i32 %24, i32 0)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  store i32 1, i32* %4, align 4
  br label %37

34:                                               ; preds = %22, %14
  %35 = load i32, i32* @LOG_ERROR, align 4
  %36 = call i32 @blog(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @gl_bind_buffer(i32, i32) #1

declare dso_local i32* @glMapBuffer(i32, i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
