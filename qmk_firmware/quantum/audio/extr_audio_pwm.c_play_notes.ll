; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_pwm.c_play_notes.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_pwm.c_play_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@audio_initialized = common dso_local global i32 0, align 4
@audio_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DISABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@playing_note = common dso_local global i64 0, align 8
@playing_notes = common dso_local global i32 0, align 4
@notes_pointer = common dso_local global float*** null, align 8
@notes_count = common dso_local global i32 0, align 4
@notes_repeat = common dso_local global i32 0, align 4
@notes_rest = common dso_local global float 0.000000e+00, align 4
@place = common dso_local global i64 0, align 8
@current_note = common dso_local global i64 0, align 8
@note_frequency = common dso_local global float 0.000000e+00, align 4
@note_tempo = common dso_local global i64 0, align 8
@note_length = common dso_local global float 0.000000e+00, align 4
@note_position = common dso_local global i64 0, align 8
@ENABLE_AUDIO_COUNTER_3_ISR = common dso_local global i32 0, align 4
@ENABLE_AUDIO_COUNTER_3_OUTPUT = common dso_local global i32 0, align 4
@SAMPLE_RATE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_notes([0 x [2 x float]]* %0, i32 %1, i32 %2, float %3) #0 {
  %5 = alloca [0 x [2 x float]]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store [0 x [2 x float]]* %0, [0 x [2 x float]]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %9 = load i32, i32* @audio_initialized, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = call i32 (...) @audio_init()
  br label %13

13:                                               ; preds = %11, %4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audio_config, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load i32, i32* @DISABLE_AUDIO_COUNTER_3_ISR, align 4
  %18 = load i64, i64* @playing_note, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @stop_all_notes()
  br label %22

22:                                               ; preds = %20, %16
  store i32 1, i32* @playing_notes, align 4
  %23 = load [0 x [2 x float]]*, [0 x [2 x float]]** %5, align 8
  %24 = bitcast [0 x [2 x float]]* %23 to float***
  store float*** %24, float**** @notes_pointer, align 8
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* @notes_count, align 4
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* @notes_repeat, align 4
  %27 = load float, float* %8, align 4
  store float %27, float* @notes_rest, align 4
  store i64 0, i64* @place, align 8
  store i64 0, i64* @current_note, align 8
  %28 = load float***, float**** @notes_pointer, align 8
  %29 = load float**, float*** %28, align 8
  %30 = load i64, i64* @current_note, align 8
  %31 = getelementptr inbounds float*, float** %29, i64 %30
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  %34 = load float, float* %33, align 4
  store float %34, float* @note_frequency, align 4
  %35 = load float***, float**** @notes_pointer, align 8
  %36 = load float**, float*** %35, align 8
  %37 = load i64, i64* @current_note, align 8
  %38 = getelementptr inbounds float*, float** %36, i64 %37
  %39 = load float*, float** %38, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  %41 = load float, float* %40, align 4
  %42 = fdiv float %41, 4.000000e+00
  %43 = load i64, i64* @note_tempo, align 8
  %44 = sitofp i64 %43 to float
  %45 = fdiv float %44, 1.000000e+02
  %46 = fmul float %42, %45
  store float %46, float* @note_length, align 4
  store i64 0, i64* @note_position, align 8
  %47 = load i32, i32* @ENABLE_AUDIO_COUNTER_3_ISR, align 4
  %48 = load i32, i32* @ENABLE_AUDIO_COUNTER_3_OUTPUT, align 4
  br label %49

49:                                               ; preds = %22, %13
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
