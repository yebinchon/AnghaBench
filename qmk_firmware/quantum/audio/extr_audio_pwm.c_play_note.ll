; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_pwm.c_play_note.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_pwm.c_play_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@audio_initialized = common dso_local global i32 0, align 4
@audio_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@voices = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@playing_notes = common dso_local global i64 0, align 8
@playing_note = common dso_local global i32 0, align 4
@envelope_index = common dso_local global i64 0, align 8
@frequencies = common dso_local global float* null, align 8
@volumes = common dso_local global i32* null, align 8
@ENABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@ENABLE_AUDIO_COUNTER_3_OUTPUT = common dso_local global i32 0, align 4
@SAMPLE_RATE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_note(float %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store float %0, float* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @audio_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 (...) @audio_init()
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audio_config, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load i32, i32* @voices, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load i32, i32* @DISABLE_AUDIO_COUNTER_3_ISR, align 4
  %17 = load i64, i64* @playing_notes, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (...) @stop_all_notes()
  br label %21

21:                                               ; preds = %19, %15
  store i32 1, i32* @playing_note, align 4
  store i64 0, i64* @envelope_index, align 8
  %22 = load float, float* %3, align 4
  %23 = fcmp ogt float %22, 0.000000e+00
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load float, float* %3, align 4
  %26 = load float*, float** @frequencies, align 8
  %27 = load i32, i32* @voices, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  store float %25, float* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** @volumes, align 8
  %32 = load i32, i32* @voices, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* @voices, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @voices, align 4
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, i32* @ENABLE_AUDIO_COUNTER_3_ISR, align 4
  %39 = load i32, i32* @ENABLE_AUDIO_COUNTER_3_OUTPUT, align 4
  br label %40

40:                                               ; preds = %37, %12, %9
  ret void
}

declare dso_local i32 @audio_init(...) #1

declare dso_local i32 @stop_all_notes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
