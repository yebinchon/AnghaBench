; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_reset_resampler.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_reset_resampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.obs_source_audio = type { i64, i64, i64 }
%struct.audio_output_info = type { i64, i64, i64 }
%struct.resample_info = type { i64, i64, i64 }

@obs = common dso_local global %struct.TYPE_8__* null, align 8
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"creation of resampler failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.obs_source_audio*)* @reset_resampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_resampler(%struct.TYPE_7__* %0, %struct.obs_source_audio* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.obs_source_audio*, align 8
  %5 = alloca %struct.audio_output_info*, align 8
  %6 = alloca %struct.resample_info, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.obs_source_audio* %1, %struct.obs_source_audio** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @obs, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.audio_output_info* @audio_output_get_info(i32 %10)
  store %struct.audio_output_info* %11, %struct.audio_output_info** %5, align 8
  %12 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %13 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.resample_info, %struct.resample_info* %6, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %17 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.resample_info, %struct.resample_info* %6, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %21 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.resample_info, %struct.resample_info* %6, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %25 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %31 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i64 %32, i64* %35, align 8
  %36 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %37 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i64 %38, i64* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @audio_resampler_destroy(i32* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %55 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %64 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %58
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.audio_output_info*, %struct.audio_output_info** %5, align 8
  %73 = getelementptr inbounds %struct.audio_output_info, %struct.audio_output_info* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %99

79:                                               ; preds = %67, %58, %2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = call i32* @audio_resampler_create(%struct.resample_info* %6, %struct.TYPE_9__* %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  %89 = zext i1 %88 to i32
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %79
  %97 = load i32, i32* @LOG_ERROR, align 4
  %98 = call i32 @blog(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %76, %96, %79
  ret void
}

declare dso_local %struct.audio_output_info* @audio_output_get_info(i32) #1

declare dso_local i32 @audio_resampler_destroy(i32*) #1

declare dso_local i32* @audio_resampler_create(%struct.resample_info*, %struct.TYPE_9__*) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
