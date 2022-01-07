; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_duplicate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"obs_source_duplicate\00", align 1
@OBS_SOURCE_DO_NOT_DUPLICATE = common dso_local global i32 0, align 4
@OBS_SOURCE_TYPE_SCENE = common dso_local global i64 0, align 8
@OBS_SCENE_DUP_PRIVATE_COPY = common dso_local global i32 0, align 4
@OBS_SCENE_DUP_COPY = common dso_local global i32 0, align 4
@OBS_SOURCE_TYPE_FILTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @obs_source_duplicate(%struct.TYPE_17__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = call i32 @obs_source_valid(%struct.TYPE_17__* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %148

17:                                               ; preds = %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OBS_SOURCE_DO_NOT_DUPLICATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = call i32 @obs_source_addref(%struct.TYPE_17__* %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %4, align 8
  br label %148

29:                                               ; preds = %17
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OBS_SOURCE_TYPE_SCENE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = call i32* @obs_scene_from_source(%struct.TYPE_17__* %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = call i32* @obs_group_from_source(%struct.TYPE_17__* %42)
  store i32* %43, i32** %10, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %148

48:                                               ; preds = %44
  %49 = load i32*, i32** %10, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @OBS_SCENE_DUP_PRIVATE_COPY, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @OBS_SCENE_DUP_COPY, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32* @obs_scene_duplicate(i32* %49, i8* %50, i32 %58)
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call %struct.TYPE_17__* @obs_scene_get_source(i32* %60)
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %12, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %62, %struct.TYPE_17__** %4, align 8
  br label %148

63:                                               ; preds = %29
  %64 = call i32* (...) @obs_data_create()
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 9
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @obs_data_apply(i32* %65, i32* %69)
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call %struct.TYPE_17__* @obs_source_create_private(i32 %77, i8* %78, i32* %79)
  br label %89

81:                                               ; preds = %63
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call %struct.TYPE_17__* @obs_source_create(i32 %85, i8* %86, i32* %87, i32* null)
  br label %89

89:                                               ; preds = %81, %73
  %90 = phi %struct.TYPE_17__* [ %80, %73 ], [ %88, %81 ]
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %8, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @obs_data_apply(i32* %128, i32* %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @OBS_SOURCE_TYPE_FILTER, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %89
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @duplicate_filters(%struct.TYPE_17__* %140, %struct.TYPE_17__* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %89
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @obs_data_release(i32* %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %147, %struct.TYPE_17__** %4, align 8
  br label %148

148:                                              ; preds = %144, %57, %47, %25, %16
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %149
}

declare dso_local i32 @obs_source_valid(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @obs_source_addref(%struct.TYPE_17__*) #1

declare dso_local i32* @obs_scene_from_source(%struct.TYPE_17__*) #1

declare dso_local i32* @obs_group_from_source(%struct.TYPE_17__*) #1

declare dso_local i32* @obs_scene_duplicate(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_17__* @obs_scene_get_source(i32*) #1

declare dso_local i32* @obs_data_create(...) #1

declare dso_local i32 @obs_data_apply(i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @obs_source_create_private(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_17__* @obs_source_create(i32, i8*, i32*, i32*) #1

declare dso_local i32 @duplicate_filters(%struct.TYPE_17__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
