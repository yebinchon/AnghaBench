; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_listen.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alsa_data = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.obs_source_audio = type { i32, i32, i64, i32, i32, i32* }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Capture thread started.\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@STARTUP_TIMEOUT_NS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Capture thread is about to exit.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_alsa_listen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.alsa_data*, align 8
  %4 = alloca %struct.obs_source_audio, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.alsa_data*
  store %struct.alsa_data* %7, %struct.alsa_data** %3, align 8
  %8 = load i32, i32* @LOG_DEBUG, align 4
  %9 = call i32 @blog(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %11 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %17 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @_alsa_to_obs_audio_format(i32 %18)
  %20 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %22 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @_alsa_channels_to_obs_speakers(i32 %23)
  %25 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 3
  store i32 %24, i32* %25, align 8
  %26 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %27 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %31 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %30, i32 0, i32 4
  %32 = call i32 @os_atomic_set_bool(i32* %31, i32 1)
  br label %33

33:                                               ; preds = %104, %1
  %34 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %35 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %38 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %41 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_pcm_readi(i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %45 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %44, i32 0, i32 4
  %46 = call i64 @os_atomic_load_bool(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %33
  br label %109

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %54 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @snd_pcm_recover(i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %62 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @snd_pcm_wait(i32 %63, i32 100)
  br label %104

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %5, align 4
  %68 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = call i64 (...) @os_gettime_ns()
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @NSEC_PER_SEC, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %74 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %69, %77
  %79 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 2
  store i64 %78, i64* %79, align 8
  %80 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %81 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @STARTUP_TIMEOUT_NS, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %90 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %66
  %92 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %4, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %95 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %100 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @obs_source_output_audio(i32 %101, %struct.obs_source_audio* %4)
  br label %103

103:                                              ; preds = %98, %91
  br label %104

104:                                              ; preds = %103, %60
  %105 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %106 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %105, i32 0, i32 4
  %107 = call i64 @os_atomic_load_bool(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %33, label %109

109:                                              ; preds = %104, %48
  %110 = load i32, i32* @LOG_DEBUG, align 4
  %111 = call i32 @blog(i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %112 = call i32 @pthread_exit(i32* null)
  ret i8* null
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @_alsa_to_obs_audio_format(i32) #1

declare dso_local i32 @_alsa_channels_to_obs_speakers(i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @snd_pcm_readi(i32, i32, i32) #1

declare dso_local i64 @os_atomic_load_bool(i32*) #1

declare dso_local i32 @snd_pcm_recover(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_wait(i32, i32) #1

declare dso_local i64 @os_gettime_ns(...) #1

declare dso_local i32 @obs_source_output_audio(i32, %struct.obs_source_audio*) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
