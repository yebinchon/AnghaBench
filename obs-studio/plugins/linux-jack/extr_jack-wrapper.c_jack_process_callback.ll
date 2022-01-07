; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-wrapper.c_jack_process_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-wrapper.c_jack_process_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jack_data = type { i32, i32, i32, i32, i32* }
%struct.obs_source_audio = type { i64, i32, i32**, i32, i32, i32 }

@AUDIO_FORMAT_FLOAT_PLANAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jack_process_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jack_data*, align 8
  %7 = alloca %struct.obs_source_audio, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.jack_data*
  store %struct.jack_data* %11, %struct.jack_data** %6, align 8
  %12 = load %struct.jack_data*, %struct.jack_data** %6, align 8
  %13 = icmp eq %struct.jack_data* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = load %struct.jack_data*, %struct.jack_data** %6, align 8
  %17 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %16, i32 0, i32 1
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  %19 = load %struct.jack_data*, %struct.jack_data** %6, align 8
  %20 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @jack_channels_to_obs_speakers(i32 %21)
  %23 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %7, i32 0, i32 5
  store i32 %22, i32* %23, align 8
  %24 = load %struct.jack_data*, %struct.jack_data** %6, align 8
  %25 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @jack_get_sample_rate(i32 %26)
  %28 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %7, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @AUDIO_FORMAT_FLOAT_PLANAR, align 4
  %30 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %7, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %54, %15
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.jack_data*, %struct.jack_data** %6, align 8
  %34 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.jack_data*, %struct.jack_data** %6, align 8
  %39 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @jack_port_get_buffer(i32 %44, i32 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %7, i32 0, i32 2
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* %48, i32** %53, align 8
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load i32, i32* %4, align 4
  %59 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %7, i32 0, i32 1
  store i32 %58, i32* %59, align 8
  %60 = call i64 (...) @os_gettime_ns()
  %61 = load %struct.jack_data*, %struct.jack_data** %6, align 8
  %62 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @jack_frames_to_time(i32 %63, i32 %64)
  %66 = sub nsw i64 %60, %65
  %67 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %7, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load %struct.jack_data*, %struct.jack_data** %6, align 8
  %69 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @obs_source_output_audio(i32 %70, %struct.obs_source_audio* %7)
  %72 = load %struct.jack_data*, %struct.jack_data** %6, align 8
  %73 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %72, i32 0, i32 1
  %74 = call i32 @pthread_mutex_unlock(i32* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %57, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @jack_channels_to_obs_speakers(i32) #1

declare dso_local i32 @jack_get_sample_rate(i32) #1

declare dso_local i64 @jack_port_get_buffer(i32, i32) #1

declare dso_local i64 @os_gettime_ns(...) #1

declare dso_local i64 @jack_frames_to_time(i32, i32) #1

declare dso_local i32 @obs_source_output_audio(i32, %struct.obs_source_audio*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
