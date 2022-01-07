; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_audio_monitor_init_final.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_audio_monitor_init_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_monitor = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OBS_SOURCE_VIDEO = common dso_local global i32 0, align 4
@on_audio_playback = common dso_local global i32 0, align 4
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
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %10 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @OBS_SOURCE_VIDEO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %20 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %22 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* @on_audio_playback, align 4
  %25 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %26 = call i32 @obs_source_add_audio_capture_callback(%struct.TYPE_4__* %23, i32 %24, %struct.audio_monitor* %25)
  br label %27

27:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @obs_source_add_audio_capture_callback(%struct.TYPE_4__*, i32, %struct.audio_monitor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
