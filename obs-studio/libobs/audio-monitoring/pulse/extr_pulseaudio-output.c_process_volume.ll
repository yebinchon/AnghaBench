; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_process_volume.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_process_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_monitor = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_volume(%struct.audio_monitor* %0, float %1, i32** %2, i32 %3) #0 {
  %5 = alloca %struct.audio_monitor*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store %struct.audio_monitor* %0, %struct.audio_monitor** %5, align 8
  store float %1, float* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.audio_monitor*, %struct.audio_monitor** %5, align 8
  %10 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %32 [
    i32 1, label %12
    i32 2, label %22
  ]

12:                                               ; preds = %4
  %13 = load i32**, i32*** %7, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.audio_monitor*, %struct.audio_monitor** %5, align 8
  %18 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load float, float* %6, align 4
  %21 = call i32 @process_byte(i32* %15, i32 %16, i32 %19, float %20)
  br label %42

22:                                               ; preds = %4
  %23 = load i32**, i32*** %7, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.audio_monitor*, %struct.audio_monitor** %5, align 8
  %28 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load float, float* %6, align 4
  %31 = call i32 @process_short(i32* %25, i32 %26, i32 %29, float %30)
  br label %42

32:                                               ; preds = %4
  %33 = load i32**, i32*** %7, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.audio_monitor*, %struct.audio_monitor** %5, align 8
  %38 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load float, float* %6, align 4
  %41 = call i32 @process_float(i32* %35, i32 %36, i32 %39, float %40)
  br label %42

42:                                               ; preds = %32, %22, %12
  ret void
}

declare dso_local i32 @process_byte(i32*, i32, i32, float) #1

declare dso_local i32 @process_short(i32*, i32, i32, float) #1

declare dso_local i32 @process_float(i32*, i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
