; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_arm.c_play_note.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_arm.c_play_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"audio play note freq=%d vol=%d\00", align 1
@audio_initialized = common dso_local global i32 0, align 4
@audio_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@voices = common dso_local global i32 0, align 4
@playing_notes = common dso_local global i64 0, align 8
@playing_note = common dso_local global i32 0, align 4
@envelope_index = common dso_local global i64 0, align 8
@frequencies = common dso_local global float* null, align 8
@volumes = common dso_local global i32* null, align 8
@GPTD8 = common dso_local global i32 0, align 4
@gpt8cfg1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_note(float %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  store float %0, float* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = fptosi float %5 to i32
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7)
  %9 = load i32, i32* @audio_initialized, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (...) @audio_init()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audio_config, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load i32, i32* @voices, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i64, i64* @playing_notes, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @stop_all_notes()
  br label %24

24:                                               ; preds = %22, %19
  store i32 1, i32* @playing_note, align 4
  store i64 0, i64* @envelope_index, align 8
  %25 = load float, float* %3, align 4
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load float, float* %3, align 4
  %29 = load float*, float** @frequencies, align 8
  %30 = load i32, i32* @voices, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  store float %28, float* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32*, i32** @volumes, align 8
  %35 = load i32, i32* @voices, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @voices, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @voices, align 4
  br label %40

40:                                               ; preds = %27, %24
  %41 = call i32 @gptStart(i32* @GPTD8, i32* @gpt8cfg1)
  %42 = call i32 @gptStartContinuous(i32* @GPTD8, i32 2)
  %43 = call i32 (...) @RESTART_CHANNEL_1()
  %44 = call i32 (...) @RESTART_CHANNEL_2()
  br label %45

45:                                               ; preds = %40, %16, %13
  ret void
}

declare dso_local i32 @dprintf(i8*, i32, i32) #1

declare dso_local i32 @audio_init(...) #1

declare dso_local i32 @stop_all_notes(...) #1

declare dso_local i32 @gptStart(i32*, i32*) #1

declare dso_local i32 @gptStartContinuous(i32*, i32) #1

declare dso_local i32 @RESTART_CHANNEL_1(...) #1

declare dso_local i32 @RESTART_CHANNEL_2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
