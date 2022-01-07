; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-deinterlace.c_deinterlace_update_async_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-deinterlace.c_deinterlace_update_async_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32*, i32**, i32** }
%struct.obs_source_frame = type { i32 }

@MAX_AV_PLANES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deinterlace_update_async_video(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.obs_source_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %100

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call %struct.obs_source_frame* @get_prev_frame(%struct.TYPE_8__* %14, i32* %4)
  store %struct.obs_source_frame* %15, %struct.obs_source_frame** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %19 = icmp ne %struct.obs_source_frame* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %23 = call %struct.obs_source_frame* @filter_async_video(%struct.TYPE_8__* %21, %struct.obs_source_frame* %22)
  store %struct.obs_source_frame* %23, %struct.obs_source_frame** %3, align 8
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %26 = icmp ne %struct.obs_source_frame* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %30 = call i64 @set_async_texture_size(%struct.TYPE_8__* %28, %struct.obs_source_frame* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load i32**, i32*** %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @update_async_textures(%struct.TYPE_8__* %33, %struct.obs_source_frame* %34, i32** %37, i32* %40)
  br label %42

42:                                               ; preds = %32, %27
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %45 = call i32 @obs_source_release_frame(%struct.TYPE_8__* %43, %struct.obs_source_frame* %44)
  br label %100

46:                                               ; preds = %24
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %99

49:                                               ; preds = %46
  store i64 0, i64* %5, align 8
  br label %50

50:                                               ; preds = %78, %49
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @MAX_AV_PLANES, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %6, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32**, i32*** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = load i32**, i32*** %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i32*, i32** %69, i64 %70
  store i32* %66, i32** %71, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32**, i32*** %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  store i32* %72, i32** %77, align 8
  br label %78

78:                                               ; preds = %54
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %5, align 8
  br label %50

81:                                               ; preds = %50
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %7, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  br label %98

98:                                               ; preds = %86, %81
  br label %99

99:                                               ; preds = %98, %46
  br label %100

100:                                              ; preds = %12, %99, %42
  ret void
}

declare dso_local %struct.obs_source_frame* @get_prev_frame(%struct.TYPE_8__*, i32*) #1

declare dso_local %struct.obs_source_frame* @filter_async_video(%struct.TYPE_8__*, %struct.obs_source_frame*) #1

declare dso_local i64 @set_async_texture_size(%struct.TYPE_8__*, %struct.obs_source_frame*) #1

declare dso_local i32 @update_async_textures(%struct.TYPE_8__*, %struct.obs_source_frame*, i32**, i32*) #1

declare dso_local i32 @obs_source_release_frame(%struct.TYPE_8__*, %struct.obs_source_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
