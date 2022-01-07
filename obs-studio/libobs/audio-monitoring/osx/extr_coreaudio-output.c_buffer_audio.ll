; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-output.c_buffer_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-output.c_buffer_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_monitor = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @buffer_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_audio(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_monitor*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.audio_monitor*
  store %struct.audio_monitor* %9, %struct.audio_monitor** %7, align 8
  %10 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %11 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %10, i32 0, i32 3
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %14 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %13, i32 0, i32 5
  %15 = call i32 @circlebuf_push_back(%struct.TYPE_2__* %14, i32* %6, i32 4)
  br label %16

16:                                               ; preds = %27, %3
  %17 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %18 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %24 = call i32 @fill_buffer(%struct.audio_monitor* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %28

27:                                               ; preds = %22
  br label %16

28:                                               ; preds = %26, %16
  %29 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %30 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 12
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %37 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %39 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 3
  %42 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %43 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %45 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @AudioQueuePause(i32 %46)
  br label %48

48:                                               ; preds = %35, %28
  %49 = load %struct.audio_monitor*, %struct.audio_monitor** %7, align 8
  %50 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %49, i32 0, i32 3
  %51 = call i32 @pthread_mutex_unlock(i32* %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @UNUSED_PARAMETER(i32 %52)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @circlebuf_push_back(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @fill_buffer(%struct.audio_monitor*) #1

declare dso_local i32 @AudioQueuePause(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
