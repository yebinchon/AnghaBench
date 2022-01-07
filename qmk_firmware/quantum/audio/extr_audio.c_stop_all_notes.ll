; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio.c_stop_all_notes.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio.c_stop_all_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"audio stop all notes\00", align 1
@audio_initialized = common dso_local global i32 0, align 4
@voices = common dso_local global i64 0, align 8
@playing_notes = common dso_local global i32 0, align 4
@playing_note = common dso_local global i32 0, align 4
@frequency = common dso_local global i64 0, align 8
@frequency_alt = common dso_local global i64 0, align 8
@volume = common dso_local global i64 0, align 8
@frequencies = common dso_local global i64* null, align 8
@volumes = common dso_local global i64* null, align 8
@DISABLE_AUDIO_COUNTER_1_ISR = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_1_OUTPUT = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_3_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_all_notes() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @audio_initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @audio_init()
  br label %7

7:                                                ; preds = %5, %0
  store i64 0, i64* @voices, align 8
  store i32 0, i32* @playing_notes, align 4
  store i32 0, i32* @playing_note, align 4
  store i64 0, i64* @frequency, align 8
  store i64 0, i64* @frequency_alt, align 8
  store i64 0, i64* @volume, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %20, %7
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load i64*, i64** @frequencies, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  store i64 0, i64* %15, align 8
  %16 = load i64*, i64** @volumes, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %8

23:                                               ; preds = %8
  ret void
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @audio_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
