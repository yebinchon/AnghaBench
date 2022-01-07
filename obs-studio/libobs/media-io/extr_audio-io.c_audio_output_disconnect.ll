; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_output_disconnect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_output_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.audio_mix* }
%struct.audio_mix = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@DARRAY_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_output_disconnect(%struct.TYPE_5__* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.audio_mix*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %4
  br label %53

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @audio_get_input_idx(%struct.TYPE_5__* %22, i64 %23, i32 %24, i8* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @DARRAY_INVALID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %18
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.audio_mix*, %struct.audio_mix** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %33, i64 %34
  store %struct.audio_mix* %35, %struct.audio_mix** %10, align 8
  %36 = load %struct.audio_mix*, %struct.audio_mix** %10, align 8
  %37 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %39, %40
  %42 = call i32 @audio_input_free(i64 %41)
  %43 = load %struct.audio_mix*, %struct.audio_mix** %10, align 8
  %44 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %43, i32 0, i32 0
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @da_erase(i64 %47, i64 %45)
  br label %49

49:                                               ; preds = %30, %18
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @pthread_mutex_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %17
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @audio_get_input_idx(%struct.TYPE_5__*, i64, i32, i8*) #1

declare dso_local i32 @audio_input_free(i64) #1

declare dso_local i32 @da_erase(i64, i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
