; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_get_audio_mix.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_get_audio_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32** }
%struct.obs_source_audio_mix = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"obs_source_get_audio_mix\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@MAX_AUDIO_CHANNELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_get_audio_mix(%struct.TYPE_6__* %0, %struct.obs_source_audio_mix* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.obs_source_audio_mix*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.obs_source_audio_mix* %1, %struct.obs_source_audio_mix** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i32 @obs_source_valid(%struct.TYPE_6__* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %52

11:                                               ; preds = %2
  %12 = load %struct.obs_source_audio_mix*, %struct.obs_source_audio_mix** %4, align 8
  %13 = call i32 @obs_ptr_valid(%struct.obs_source_audio_mix* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %52

16:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %49, %16
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @MAX_AUDIO_CHANNELS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.obs_source_audio_mix*, %struct.obs_source_audio_mix** %4, align 8
  %37 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %35, i32* %44, align 4
  br label %45

45:                                               ; preds = %26
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %6, align 8
  br label %22

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %17

52:                                               ; preds = %10, %15, %17
  ret void
}

declare dso_local i32 @obs_source_valid(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @obs_ptr_valid(%struct.obs_source_audio_mix*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
