; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_pwm.c_stop_all_notes.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_pwm.c_stop_all_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@audio_initialized = common dso_local global i32 0, align 4
@voices = common dso_local global i64 0, align 8
@DISABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_3_OUTPUT = common dso_local global i32 0, align 4
@playing_notes = common dso_local global i32 0, align 4
@playing_note = common dso_local global i32 0, align 4
@frequency = common dso_local global i64 0, align 8
@volume = common dso_local global i64 0, align 8
@frequencies = common dso_local global i64* null, align 8
@volumes = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_all_notes() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @audio_initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @audio_init()
  br label %6

6:                                                ; preds = %4, %0
  store i64 0, i64* @voices, align 8
  %7 = load i32, i32* @DISABLE_AUDIO_COUNTER_3_ISR, align 4
  %8 = load i32, i32* @DISABLE_AUDIO_COUNTER_3_OUTPUT, align 4
  store i32 0, i32* @playing_notes, align 4
  store i32 0, i32* @playing_note, align 4
  store i64 0, i64* @frequency, align 8
  store i64 0, i64* @volume, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %21, %6
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i64*, i64** @frequencies, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  store i64 0, i64* %16, align 8
  %17 = load i64*, i64** @volumes, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %9

24:                                               ; preds = %9
  ret void
}

declare dso_local i32 @audio_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
