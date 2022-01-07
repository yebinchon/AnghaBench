; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_output_close.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_audio_output_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.audio_mix*, i32, i64 }
%struct.audio_mix = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_output_close(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.audio_mix*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %72

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @os_event_signal(i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pthread_join(i32 %22, i8** %3)
  br label %24

24:                                               ; preds = %15, %10
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.audio_mix*, %struct.audio_mix** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %32, i64 %33
  store %struct.audio_mix* %34, %struct.audio_mix** %5, align 8
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %50, %29
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.audio_mix*, %struct.audio_mix** %5, align 8
  %38 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.audio_mix*, %struct.audio_mix** %5, align 8
  %44 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %46, %47
  %49 = call i32 @audio_input_free(i64 %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %35

53:                                               ; preds = %35
  %54 = load %struct.audio_mix*, %struct.audio_mix** %5, align 8
  %55 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %54, i32 0, i32 0
  %56 = bitcast %struct.TYPE_6__* %55 to { i64, i64 }*
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @da_free(i64 %58, i64 %60)
  br label %62

62:                                               ; preds = %53
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %4, align 8
  br label %25

65:                                               ; preds = %25
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @os_event_destroy(i32 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = call i32 @bfree(%struct.TYPE_5__* %70)
  br label %72

72:                                               ; preds = %65, %9
  ret void
}

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @audio_input_free(i64) #1

declare dso_local i32 @da_free(i64, i64) #1

declare dso_local i32 @os_event_destroy(i32) #1

declare dso_local i32 @bfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
