; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_update_async_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_update_async_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.obs_source_frame = type { i64 }

@obs = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @obs_source_update_async_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_source_update_async_video(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.obs_source_frame*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = call %struct.obs_source_frame* @obs_source_get_frame(%struct.TYPE_11__* %9)
  store %struct.obs_source_frame* %10, %struct.obs_source_frame** %3, align 8
  %11 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %12 = icmp ne %struct.obs_source_frame* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %16 = call %struct.obs_source_frame* @filter_async_video(%struct.TYPE_11__* %14, %struct.obs_source_frame* %15)
  store %struct.obs_source_frame* %16, %struct.obs_source_frame** %3, align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %21 = icmp ne %struct.obs_source_frame* %20, null
  br i1 %21, label %22, label %69

22:                                               ; preds = %17
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %25 = call i32 @check_to_swap_bgrx_bgra(%struct.TYPE_11__* %23, %struct.obs_source_frame* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @obs, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %41 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %35, %30
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @update_async_textures(%struct.TYPE_11__* %54, %struct.obs_source_frame* %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %53, %48
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = load %struct.obs_source_frame*, %struct.obs_source_frame** %3, align 8
  %68 = call i32 @obs_source_release_frame(%struct.TYPE_11__* %66, %struct.obs_source_frame* %67)
  br label %69

69:                                               ; preds = %65, %17
  br label %70

70:                                               ; preds = %69, %1
  ret void
}

declare dso_local %struct.obs_source_frame* @obs_source_get_frame(%struct.TYPE_11__*) #1

declare dso_local %struct.obs_source_frame* @filter_async_video(%struct.TYPE_11__*, %struct.obs_source_frame*) #1

declare dso_local i32 @check_to_swap_bgrx_bgra(%struct.TYPE_11__*, %struct.obs_source_frame*) #1

declare dso_local i32 @update_async_textures(%struct.TYPE_11__*, %struct.obs_source_frame*, i32, i32) #1

declare dso_local i32 @obs_source_release_frame(%struct.TYPE_11__*, %struct.obs_source_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
