; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_skip_video_filter.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_skip_video_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"obs_source_skip_video_filter\00", align 1
@OBS_SOURCE_CUSTOM_DRAW = common dso_local global i32 0, align 4
@OBS_SOURCE_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_skip_video_filter(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = call i32 @obs_ptr_valid(%struct.TYPE_16__* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %68

12:                                               ; preds = %1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = call %struct.TYPE_16__* @obs_filter_get_target(%struct.TYPE_16__* %13)
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %3, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = call %struct.TYPE_16__* @obs_filter_get_parent(%struct.TYPE_16__* %15)
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %4, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @OBS_SOURCE_CUSTOM_DRAW, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @OBS_SOURCE_ASYNC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = icmp eq %struct.TYPE_16__* %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %12
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = call i32 @obs_source_default_render(%struct.TYPE_16__* %41)
  br label %64

43:                                               ; preds = %37, %34
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = call i32 @obs_source_main_render(%struct.TYPE_16__* %50)
  br label %63

52:                                               ; preds = %43
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = call i64 @deinterlacing_enabled(%struct.TYPE_16__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = call i32 @deinterlace_render(%struct.TYPE_16__* %57)
  br label %62

59:                                               ; preds = %52
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = call i32 @obs_source_render_async_video(%struct.TYPE_16__* %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %40
  br label %68

65:                                               ; preds = %12
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = call i32 @obs_source_video_render(%struct.TYPE_16__* %66)
  br label %68

68:                                               ; preds = %11, %65, %64
  ret void
}

declare dso_local i32 @obs_ptr_valid(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.TYPE_16__* @obs_filter_get_target(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @obs_filter_get_parent(%struct.TYPE_16__*) #1

declare dso_local i32 @obs_source_default_render(%struct.TYPE_16__*) #1

declare dso_local i32 @obs_source_main_render(%struct.TYPE_16__*) #1

declare dso_local i64 @deinterlacing_enabled(%struct.TYPE_16__*) #1

declare dso_local i32 @deinterlace_render(%struct.TYPE_16__*) #1

declare dso_local i32 @obs_source_render_async_video(%struct.TYPE_16__*) #1

declare dso_local i32 @obs_source_video_render(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
