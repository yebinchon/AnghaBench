; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio.c_audio_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio.c_audio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@audio_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@audio_initialized = common dso_local global i32 0, align 4
@startup_song = common dso_local global i32 0, align 4
@CPU_PRESCALER = common dso_local global i32 0, align 4
@CS10 = common dso_local global i32 0, align 4
@CS11 = common dso_local global i32 0, align 4
@CS12 = common dso_local global i32 0, align 4
@CS30 = common dso_local global i32 0, align 4
@CS31 = common dso_local global i32 0, align 4
@CS32 = common dso_local global i32 0, align 4
@F_CPU = common dso_local global i64 0, align 8
@TIMER_1_DUTY_CYCLE = common dso_local global i8* null, align 8
@TIMER_1_PERIOD = common dso_local global i8* null, align 8
@TIMER_3_DUTY_CYCLE = common dso_local global i8* null, align 8
@TIMER_3_PERIOD = common dso_local global i8* null, align 8
@WGM12 = common dso_local global i32 0, align 4
@WGM13 = common dso_local global i32 0, align 4
@WGM32 = common dso_local global i32 0, align 4
@WGM33 = common dso_local global i32 0, align 4
@note_timbre = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_init() #0 {
  %1 = call i32 (...) @eeconfig_is_enabled()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32 (...) @eeconfig_init()
  br label %5

5:                                                ; preds = %3, %0
  %6 = call i32 (...) @eeconfig_read_audio()
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audio_config, i32 0, i32 1), align 8
  %7 = load i32, i32* @audio_initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i32 1, i32* @audio_initialized, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audio_config, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @startup_song, align 4
  %15 = call i32 @PLAY_SONG(i32 %14)
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_audio(...) #1

declare dso_local i32 @PLAY_SONG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
