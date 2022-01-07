; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_tick_sources.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_tick_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.obs_core_data, %struct.TYPE_5__ }
%struct.obs_core_data = type { i32, %struct.obs_source*, i32, %struct.TYPE_6__ }
%struct.obs_source = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.tick_callback* }
%struct.tick_callback = type { i32, i32 (i32, float)* }
%struct.TYPE_5__ = type { i32 }

@obs = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @tick_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tick_sources(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.obs_core_data*, align 8
  %6 = alloca %struct.obs_source*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tick_callback*, align 8
  %11 = alloca %struct.obs_source*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @obs, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store %struct.obs_core_data* %13, %struct.obs_core_data** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @obs, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @video_output_get_frame_time(i32 %21)
  %23 = sub nsw i64 %17, %22
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %16, %2
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sitofp i64 %28 to double
  %30 = fdiv double %29, 1.000000e+09
  %31 = fptrunc double %30 to float
  store float %31, float* %8, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @obs, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %33, i32 0, i32 2
  %35 = call i32 @pthread_mutex_lock(i32* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @obs, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %61, %24
  %42 = load i64, i64* %9, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @obs, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.tick_callback*, %struct.tick_callback** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds %struct.tick_callback, %struct.tick_callback* %49, i64 %51
  store %struct.tick_callback* %52, %struct.tick_callback** %10, align 8
  %53 = load %struct.tick_callback*, %struct.tick_callback** %10, align 8
  %54 = getelementptr inbounds %struct.tick_callback, %struct.tick_callback* %53, i32 0, i32 1
  %55 = load i32 (i32, float)*, i32 (i32, float)** %54, align 8
  %56 = load %struct.tick_callback*, %struct.tick_callback** %10, align 8
  %57 = getelementptr inbounds %struct.tick_callback, %struct.tick_callback* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load float, float* %8, align 4
  %60 = call i32 %55(i32 %58, float %59)
  br label %61

61:                                               ; preds = %44
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %9, align 8
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @obs, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %66, i32 0, i32 2
  %68 = call i32 @pthread_mutex_unlock(i32* %67)
  %69 = load %struct.obs_core_data*, %struct.obs_core_data** %5, align 8
  %70 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %69, i32 0, i32 0
  %71 = call i32 @pthread_mutex_lock(i32* %70)
  %72 = load %struct.obs_core_data*, %struct.obs_core_data** %5, align 8
  %73 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %72, i32 0, i32 1
  %74 = load %struct.obs_source*, %struct.obs_source** %73, align 8
  store %struct.obs_source* %74, %struct.obs_source** %6, align 8
  br label %75

75:                                               ; preds = %94, %64
  %76 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %77 = icmp ne %struct.obs_source* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %80 = call %struct.obs_source* @obs_source_get_ref(%struct.obs_source* %79)
  store %struct.obs_source* %80, %struct.obs_source** %11, align 8
  %81 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %82 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.obs_source*
  store %struct.obs_source* %85, %struct.obs_source** %6, align 8
  %86 = load %struct.obs_source*, %struct.obs_source** %11, align 8
  %87 = icmp ne %struct.obs_source* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load %struct.obs_source*, %struct.obs_source** %11, align 8
  %90 = load float, float* %8, align 4
  %91 = call i32 @obs_source_video_tick(%struct.obs_source* %89, float %90)
  %92 = load %struct.obs_source*, %struct.obs_source** %11, align 8
  %93 = call i32 @obs_source_release(%struct.obs_source* %92)
  br label %94

94:                                               ; preds = %88, %78
  br label %75

95:                                               ; preds = %75
  %96 = load %struct.obs_core_data*, %struct.obs_core_data** %5, align 8
  %97 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %96, i32 0, i32 0
  %98 = call i32 @pthread_mutex_unlock(i32* %97)
  %99 = load i64, i64* %3, align 8
  ret i64 %99
}

declare dso_local i64 @video_output_get_frame_time(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local %struct.obs_source* @obs_source_get_ref(%struct.obs_source*) #1

declare dso_local i32 @obs_source_video_tick(%struct.obs_source*, float) #1

declare dso_local i32 @obs_source_release(%struct.obs_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
