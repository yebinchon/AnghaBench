; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_audio_monitor_init_final.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_audio_monitor_init_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_monitor = type { i32, i32, i64 }

@on_audio_playback = common dso_local global i32 0, align 4
@pulseaudio_stream_write = common dso_local global i32 0, align 4
@pulseaudio_underflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_monitor*)* @audio_monitor_init_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_monitor_init_final(%struct.audio_monitor* %0) #0 {
  %2 = alloca %struct.audio_monitor*, align 8
  store %struct.audio_monitor* %0, %struct.audio_monitor** %2, align 8
  %3 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %4 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %10 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @on_audio_playback, align 4
  %13 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %14 = call i32 @obs_source_add_audio_capture_callback(i32 %11, i32 %12, %struct.audio_monitor* %13)
  %15 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %16 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @pulseaudio_stream_write, align 4
  %19 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %20 = bitcast %struct.audio_monitor* %19 to i8*
  %21 = call i32 @pulseaudio_write_callback(i32 %17, i32 %18, i8* %20)
  %22 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %23 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @pulseaudio_underflow, align 4
  %26 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %27 = bitcast %struct.audio_monitor* %26 to i8*
  %28 = call i32 @pulseaudio_set_underflow_callback(i32 %24, i32 %25, i8* %27)
  br label %29

29:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @obs_source_add_audio_capture_callback(i32, i32, %struct.audio_monitor*) #1

declare dso_local i32 @pulseaudio_write_callback(i32, i32, i8*) #1

declare dso_local i32 @pulseaudio_set_underflow_callback(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
