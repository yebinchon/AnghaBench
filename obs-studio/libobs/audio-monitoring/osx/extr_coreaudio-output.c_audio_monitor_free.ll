; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-output.c_audio_monitor_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-output.c_audio_monitor_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_monitor = type { i32, i32, i32, i32, i64, i64*, i64, i64 }

@on_audio_playback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_monitor*)* @audio_monitor_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_monitor_free(%struct.audio_monitor* %0) #0 {
  %2 = alloca %struct.audio_monitor*, align 8
  %3 = alloca i64, align 8
  store %struct.audio_monitor* %0, %struct.audio_monitor** %2, align 8
  %4 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %5 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %4, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %10 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @on_audio_playback, align 4
  %13 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %14 = call i32 @obs_source_remove_audio_capture_callback(i64 %11, i32 %12, %struct.audio_monitor* %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %17 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %22 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @AudioQueueStop(i64 %23, i32 1)
  br label %25

25:                                               ; preds = %20, %15
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i64, i64* %3, align 8
  %28 = icmp ult i64 %27, 3
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %31 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %30, i32 0, i32 5
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %39 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %42 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %41, i32 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @AudioQueueFreeBuffer(i64 %40, i64 %46)
  br label %48

48:                                               ; preds = %37, %29
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %26

52:                                               ; preds = %26
  %53 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %54 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %59 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @AudioQueueDispose(i64 %60, i32 1)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %64 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @audio_resampler_destroy(i32 %65)
  %67 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %68 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %67, i32 0, i32 2
  %69 = call i32 @circlebuf_free(i32* %68)
  %70 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %71 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %70, i32 0, i32 1
  %72 = call i32 @circlebuf_free(i32* %71)
  %73 = load %struct.audio_monitor*, %struct.audio_monitor** %2, align 8
  %74 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %73, i32 0, i32 0
  %75 = call i32 @pthread_mutex_destroy(i32* %74)
  ret void
}

declare dso_local i32 @obs_source_remove_audio_capture_callback(i64, i32, %struct.audio_monitor*) #1

declare dso_local i32 @AudioQueueStop(i64, i32) #1

declare dso_local i32 @AudioQueueFreeBuffer(i64, i64) #1

declare dso_local i32 @AudioQueueDispose(i64, i32) #1

declare dso_local i32 @audio_resampler_destroy(i32) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
