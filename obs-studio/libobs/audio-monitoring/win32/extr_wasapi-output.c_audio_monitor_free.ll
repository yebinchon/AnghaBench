; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_audio_monitor_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_audio_monitor_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_monitor = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }

@on_audio_playback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_monitor*)* @audio_monitor_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_monitor_free(%struct.audio_monitor* %0) #0 {
  %2 = alloca %struct.audio_monitor*, align 8
  store %struct.audio_monitor* %0, %struct.audio_monitor** %2, align 8
  %3 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %4 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %3, i32 0, i32 7
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %61

8:                                                ; preds = %1
  %9 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %10 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %15 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @on_audio_playback, align 4
  %18 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %19 = call i32 @obs_source_remove_audio_capture_callback(i64 %16, i32 %17, %struct.audio_monitor* %18)
  br label %20

20:                                               ; preds = %13, %8
  %21 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %22 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %27 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %31, align 8
  %33 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %34 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %33, i32 0, i32 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 %32(%struct.TYPE_5__* %35)
  br label %37

37:                                               ; preds = %25, %20
  %38 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %39 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %38, i32 0, i32 5
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @safe_release(%struct.TYPE_5__* %40)
  %42 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %43 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %42, i32 0, i32 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = call i32 @safe_release(%struct.TYPE_5__* %44)
  %46 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %47 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %46, i32 0, i32 3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @safe_release(%struct.TYPE_5__* %48)
  %50 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %51 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @audio_resampler_destroy(i32 %52)
  %54 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %55 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %54, i32 0, i32 1
  %56 = call i32 @circlebuf_free(i32* %55)
  %57 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %58 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @da_free(i32 %59)
  br label %61

61:                                               ; preds = %37, %7
  ret void
}

declare dso_local i32 @obs_source_remove_audio_capture_callback(i64, i32, %struct.audio_monitor*) #1

declare dso_local i32 @safe_release(%struct.TYPE_5__*) #1

declare dso_local i32 @audio_resampler_destroy(i32) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @da_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
