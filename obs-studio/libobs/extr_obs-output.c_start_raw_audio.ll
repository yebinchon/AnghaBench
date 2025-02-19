; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_start_raw_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_start_raw_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@MAX_AUDIO_MIXES = common dso_local global i32 0, align 4
@default_raw_audio_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @start_raw_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_raw_audio(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %34, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %14
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = call i32 @get_audio_conversion(%struct.TYPE_8__* %28)
  %30 = load i32, i32* @default_raw_audio_callback, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = call i32 @audio_output_connect(i32 %26, i32 %27, i32 %29, i32 %30, %struct.TYPE_8__* %31)
  br label %33

33:                                               ; preds = %23, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %10

37:                                               ; preds = %10
  br label %49

38:                                               ; preds = %1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = call i32 @get_first_mixer(%struct.TYPE_8__* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = call i32 @get_audio_conversion(%struct.TYPE_8__* %44)
  %46 = load i32, i32* @default_raw_audio_callback, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = call i32 @audio_output_connect(i32 %41, i32 %43, i32 %45, i32 %46, %struct.TYPE_8__* %47)
  br label %49

49:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @audio_output_connect(i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @get_audio_conversion(%struct.TYPE_8__*) #1

declare dso_local i32 @get_first_mixer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
