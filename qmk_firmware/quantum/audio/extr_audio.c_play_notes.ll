; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio.c_play_notes.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio.c_play_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@audio_initialized = common dso_local global i32 0, align 4
@audio_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@playing_note = common dso_local global i64 0, align 8
@playing_notes = common dso_local global i32 0, align 4
@notes_pointer = common dso_local global i32*** null, align 8
@notes_count = common dso_local global i32 0, align 4
@notes_repeat = common dso_local global i32 0, align 4
@place = common dso_local global i64 0, align 8
@current_note = common dso_local global i64 0, align 8
@note_frequency = common dso_local global i32 0, align 4
@note_tempo = common dso_local global i64 0, align 8
@note_length = common dso_local global i32 0, align 4
@note_position = common dso_local global i64 0, align 8
@DISABLE_AUDIO_COUNTER_1_ISR = common dso_local global i32 0, align 4
@DISABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@ENABLE_AUDIO_COUNTER_1_ISR = common dso_local global i32 0, align 4
@ENABLE_AUDIO_COUNTER_1_OUTPUT = common dso_local global i32 0, align 4
@ENABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@ENABLE_AUDIO_COUNTER_3_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_notes([0 x [2 x float]]* %0, i32 %1, i32 %2) #0 {
  %4 = alloca [0 x [2 x float]]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store [0 x [2 x float]]* %0, [0 x [2 x float]]** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @audio_initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = call i32 (...) @audio_init()
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audio_config, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load i64, i64* @playing_note, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @stop_all_notes()
  br label %19

19:                                               ; preds = %17, %14
  store i32 1, i32* @playing_notes, align 4
  %20 = load [0 x [2 x float]]*, [0 x [2 x float]]** %4, align 8
  %21 = bitcast [0 x [2 x float]]* %20 to i32***
  store i32*** %21, i32**** @notes_pointer, align 8
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* @notes_count, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* @notes_repeat, align 4
  store i64 0, i64* @place, align 8
  store i64 0, i64* @current_note, align 8
  %24 = load i32***, i32**** @notes_pointer, align 8
  %25 = load i32**, i32*** %24, align 8
  %26 = load i64, i64* @current_note, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @note_frequency, align 4
  %31 = load i32***, i32**** @notes_pointer, align 8
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* @current_note, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 4
  %39 = sitofp i32 %38 to float
  %40 = load i64, i64* @note_tempo, align 8
  %41 = sitofp i64 %40 to float
  %42 = fdiv float %41, 1.000000e+02
  %43 = fmul float %39, %42
  %44 = fptosi float %43 to i32
  store i32 %44, i32* @note_length, align 4
  store i64 0, i64* @note_position, align 8
  br label %45

45:                                               ; preds = %19, %11
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
