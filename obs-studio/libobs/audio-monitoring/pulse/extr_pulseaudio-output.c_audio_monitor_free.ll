; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_audio_monitor_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_audio_monitor_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_monitor = type { i32, i64, i32, i32, i64, i64 }

@on_audio_playback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_monitor*)* @audio_monitor_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_monitor_free(%struct.audio_monitor* %0) #0 {
  %2 = alloca %struct.audio_monitor*, align 8
  store %struct.audio_monitor* %0, %struct.audio_monitor** %2, align 8
  %3 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %4 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %41

8:                                                ; preds = %1
  %9 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %10 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %15 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @on_audio_playback, align 4
  %18 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %19 = call i32 @obs_source_remove_audio_capture_callback(i64 %16, i32 %17, %struct.audio_monitor* %18)
  br label %20

20:                                               ; preds = %13, %8
  %21 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %22 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @audio_resampler_destroy(i32 %23)
  %25 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %26 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %25, i32 0, i32 2
  %27 = call i32 @circlebuf_free(i32* %26)
  %28 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %29 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %34 = call i32 @pulseaudio_stop_playback(%struct.audio_monitor* %33)
  br label %35

35:                                               ; preds = %32, %20
  %36 = call i32 (...) @pulseaudio_unref()
  %37 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %38 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bfree(i32 %39)
  br label %41

41:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @obs_source_remove_audio_capture_callback(i64, i32, %struct.audio_monitor*) #1

declare dso_local i32 @audio_resampler_destroy(i32) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @pulseaudio_stop_playback(%struct.audio_monitor*) #1

declare dso_local i32 @pulseaudio_unref(...) #1

declare dso_local i32 @bfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
