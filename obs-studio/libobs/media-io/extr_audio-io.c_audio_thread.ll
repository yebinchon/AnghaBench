; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_output = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"audio-io: audio thread\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"audio_thread(%s)\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @audio_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @audio_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.audio_output*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.audio_output*
  store %struct.audio_output* %13, %struct.audio_output** %3, align 8
  %14 = load %struct.audio_output*, %struct.audio_output** %3, align 8
  %15 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %18 = call i64 (...) @os_gettime_ns()
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  %23 = call i64 @audio_frames_to_ns(i64 %21, i64 %22)
  %24 = sdiv i64 %23, 1000000
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = call i32 @os_set_thread_name(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (...) @obs_get_profiler_name_store()
  %28 = load %struct.audio_output*, %struct.audio_output** %3, align 8
  %29 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @profile_store_name(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i8* %32, i8** %10, align 8
  br label %33

33:                                               ; preds = %64, %1
  %34 = load %struct.audio_output*, %struct.audio_output** %3, align 8
  %35 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @os_event_try(i32 %36)
  %38 = load i64, i64* @EAGAIN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @os_sleep_ms(i32 %41)
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @profile_start(i8* %43)
  %45 = call i64 (...) @os_gettime_ns()
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %50, %40
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  %52 = load i64, i64* %5, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @audio_frames_to_ns(i64 %55, i64 %56)
  %58 = add nsw i64 %54, %57
  store i64 %58, i64* %8, align 8
  %59 = load %struct.audio_output*, %struct.audio_output** %3, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @input_and_output(%struct.audio_output* %59, i64 %60, i64 %61)
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %7, align 8
  br label %46

64:                                               ; preds = %46
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @profile_end(i8* %65)
  %67 = call i32 (...) @profile_reenable_thread()
  br label %33

68:                                               ; preds = %33
  ret i8* null
}

declare dso_local i64 @os_gettime_ns(...) #1

declare dso_local i64 @audio_frames_to_ns(i64, i64) #1

declare dso_local i32 @os_set_thread_name(i8*) #1

declare dso_local i8* @profile_store_name(i32, i8*, i32) #1

declare dso_local i32 @obs_get_profiler_name_store(...) #1

declare dso_local i64 @os_event_try(i32) #1

declare dso_local i32 @os_sleep_ms(i32) #1

declare dso_local i32 @profile_start(i8*) #1

declare dso_local i32 @input_and_output(%struct.audio_output*, i64, i64) #1

declare dso_local i32 @profile_end(i8*) #1

declare dso_local i32 @profile_reenable_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
