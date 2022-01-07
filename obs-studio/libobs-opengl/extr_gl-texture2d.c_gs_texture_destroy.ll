; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_gs_texture_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_gs_texture_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i64 }
%struct.gs_texture_2d = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"gs_texture_destroy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_texture_destroy(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.gs_texture_2d*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = bitcast %struct.TYPE_5__* %4 to %struct.gs_texture_2d*
  store %struct.gs_texture_2d* %5, %struct.gs_texture_2d** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %65

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = call i32 @is_texture_2d(%struct.TYPE_5__* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %65

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gs_samplerstate_destroy(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %36 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %3, align 8
  %41 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %40, i32 0, i32 0
  %42 = call i32 @gl_delete_buffers(i32 1, i64* %41)
  br label %43

43:                                               ; preds = %39, %34, %29, %24
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = call i32 @gl_delete_textures(i32 1, i64* %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @fbo_info_destroy(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = call i32 @bfree(%struct.TYPE_5__* %63)
  br label %65

65:                                               ; preds = %62, %13, %8
  ret void
}

declare dso_local i32 @is_texture_2d(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @gs_samplerstate_destroy(i64) #1

declare dso_local i32 @gl_delete_buffers(i32, i64*) #1

declare dso_local i32 @gl_delete_textures(i32, i64*) #1

declare dso_local i32 @fbo_info_destroy(i64) #1

declare dso_local i32 @bfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
