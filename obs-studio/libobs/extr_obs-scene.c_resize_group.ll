; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_resize_group.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_resize_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.vec2 = type { float, float }

@OBS_BOUNDS_NONE = common dso_local global i64 0, align 8
@OBS_ALIGN_LEFT = common dso_local global i32 0, align 4
@OBS_ALIGN_RIGHT = common dso_local global i32 0, align 4
@OBS_ALIGN_TOP = common dso_local global i32 0, align 4
@OBS_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @resize_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_group(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vec2, align 4
  %5 = alloca %struct.vec2, align 4
  %6 = alloca %struct.vec2, align 4
  %7 = alloca %struct.vec2, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 6
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 5
  %16 = call i64 @os_atomic_load_long(i32* %15)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %111

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @resize_scene_base(i32* %20, %struct.vec2* %4, %struct.vec2* %5, %struct.vec2* %6)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %111

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OBS_BOUNDS_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %105

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @OBS_ALIGN_LEFT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.vec2, %struct.vec2* %4, i32 0, i32 0
  %39 = load float, float* %38, align 4
  %40 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 0
  store float %39, float* %40, align 4
  br label %64

41:                                               ; preds = %30
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @OBS_ALIGN_RIGHT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.vec2, %struct.vec2* %5, i32 0, i32 0
  %50 = load float, float* %49, align 4
  %51 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 0
  store float %50, float* %51, align 4
  br label %63

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.vec2, %struct.vec2* %5, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = getelementptr inbounds %struct.vec2, %struct.vec2* %4, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = fsub float %54, %56
  %58 = fmul float %57, 5.000000e-01
  %59 = getelementptr inbounds %struct.vec2, %struct.vec2* %4, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = fadd float %58, %60
  %62 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 0
  store float %61, float* %62, align 4
  br label %63

63:                                               ; preds = %52, %48
  br label %64

64:                                               ; preds = %63, %37
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @OBS_ALIGN_TOP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.vec2, %struct.vec2* %4, i32 0, i32 1
  %73 = load float, float* %72, align 4
  %74 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 1
  store float %73, float* %74, align 4
  br label %98

75:                                               ; preds = %64
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @OBS_ALIGN_BOTTOM, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.vec2, %struct.vec2* %5, i32 0, i32 1
  %84 = load float, float* %83, align 4
  %85 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 1
  store float %84, float* %85, align 4
  br label %97

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.vec2, %struct.vec2* %5, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = getelementptr inbounds %struct.vec2, %struct.vec2* %4, i32 0, i32 1
  %90 = load float, float* %89, align 4
  %91 = fsub float %88, %90
  %92 = fmul float %91, 5.000000e-01
  %93 = getelementptr inbounds %struct.vec2, %struct.vec2* %4, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = fadd float %92, %94
  %96 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 1
  store float %95, float* %96, align 4
  br label %97

97:                                               ; preds = %86, %82
  br label %98

98:                                               ; preds = %97, %71
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = call i32 @transform_val(%struct.vec2* %7, i32* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = call i32 @vec2_copy(i32* %103, %struct.vec2* %7)
  br label %105

105:                                              ; preds = %98, %24
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = call i32 @os_atomic_set_bool(i32* %107, i32 0)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %110 = call i32 @update_item_transform(%struct.TYPE_8__* %109, i32 0)
  br label %111

111:                                              ; preds = %105, %23, %18
  ret void
}

declare dso_local i64 @os_atomic_load_long(i32*) #1

declare dso_local i32 @resize_scene_base(i32*, %struct.vec2*, %struct.vec2*, %struct.vec2*) #1

declare dso_local i32 @transform_val(%struct.vec2*, i32*) #1

declare dso_local i32 @vec2_copy(i32*, %struct.vec2*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @update_item_transform(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
