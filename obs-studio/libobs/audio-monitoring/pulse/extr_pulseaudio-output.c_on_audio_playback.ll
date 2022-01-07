; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_on_audio_playback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_on_audio_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i32 }
%struct.audio_data = type { i64, i64 }
%struct.audio_monitor = type { i64, i64, i32, i32, i32, i32 }

@MAX_AV_PLANES = common dso_local global i32 0, align 4
@EPSILON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, %struct.audio_data*, i32)* @on_audio_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_audio_playback(i8* %0, %struct.TYPE_3__* %1, %struct.audio_data* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.audio_monitor*, align 8
  %10 = alloca float, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.audio_data* %2, %struct.audio_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.audio_monitor*
  store %struct.audio_monitor* %19, %struct.audio_monitor** %9, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load float, float* %21, align 4
  store float %22, float* %10, align 4
  %23 = load i32, i32* @MAX_AV_PLANES, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i32*, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %28 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %27, i32 0, i32 2
  %29 = call i64 @pthread_mutex_trylock(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  br label %99

32:                                               ; preds = %4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = call i64 @os_atomic_load_long(i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %93

38:                                               ; preds = %32
  %39 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %40 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %43 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32**
  %46 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %47 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @audio_resampler_resample(i32 %41, i32** %26, i64* %14, i32* %15, i32** %45, i64 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %93

53:                                               ; preds = %38
  %54 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %55 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = mul i64 %56, %57
  store i64 %58, i64* %11, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = getelementptr inbounds i32*, i32** %26, i64 0
  %63 = load i32*, i32** %62, align 16
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @memset(i32* %63, i32 0, i64 %64)
  br label %77

66:                                               ; preds = %53
  %67 = load float, float* %10, align 4
  %68 = load i32, i32* @EPSILON, align 4
  %69 = call i32 @close_float(float %67, float 1.000000e+00, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %73 = load float, float* %10, align 4
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @process_volume(%struct.audio_monitor* %72, float %73, i32** %26, i64 %74)
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %61
  %78 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %79 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %78, i32 0, i32 4
  %80 = getelementptr inbounds i32*, i32** %26, i64 0
  %81 = load i32*, i32** %80, align 16
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @circlebuf_push_back(i32* %79, i32* %81, i64 %82)
  %84 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %85 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %90 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, %88
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %77, %52, %37
  %94 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %95 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %94, i32 0, i32 2
  %96 = call i32 @pthread_mutex_unlock(i32* %95)
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @do_stream_write(i8* %97)
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %93, %31
  %100 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %17, align 4
  switch i32 %101, label %103 [
    i32 0, label %102
    i32 1, label %102
  ]

102:                                              ; preds = %99, %99
  ret void

103:                                              ; preds = %99
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pthread_mutex_trylock(i32*) #2

declare dso_local i64 @os_atomic_load_long(i32*) #2

declare dso_local i32 @audio_resampler_resample(i32, i32**, i64*, i32*, i32**, i64) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

declare dso_local i32 @close_float(float, float, i32) #2

declare dso_local i32 @process_volume(%struct.audio_monitor*, float, i32**, i64) #2

declare dso_local i32 @circlebuf_push_back(i32*, i32*, i64) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @do_stream_write(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
