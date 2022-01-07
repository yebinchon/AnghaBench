; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_gl_ClipPlane.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_gl_ClipPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32* }

@GL_CLIP_PLANE0 = common dso_local global i64 0, align 8
@MAX_CLIP_PLANES = common dso_local global i64 0, align 8
@GL_INVALID_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"glClipPlane\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_ClipPlane(%struct.TYPE_7__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @GL_CLIP_PLANE0, align 8
  %10 = sub i64 %8, %9
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @MAX_CLIP_PLANES, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = load i32, i32* @GL_INVALID_ENUM, align 4
  %20 = call i32 @gl_error(%struct.TYPE_7__* %18, i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %42

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = call i32 @gl_analyze_modelview_matrix(%struct.TYPE_7__* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @gl_transform_vector(i32 %36, i32* %37, i32 %40)
  br label %42

42:                                               ; preds = %29, %17
  ret void
}

declare dso_local i32 @gl_error(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @gl_analyze_modelview_matrix(%struct.TYPE_7__*) #1

declare dso_local i32 @gl_transform_vector(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
