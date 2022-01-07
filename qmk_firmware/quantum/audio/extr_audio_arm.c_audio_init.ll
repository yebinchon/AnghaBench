; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_arm.c_audio_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_audio_arm.c_audio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@audio_initialized = common dso_local global i32 0, align 4
@audio_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GPIOA = common dso_local global i32 0, align 4
@PAL_MODE_INPUT_ANALOG = common dso_local global i32 0, align 4
@DACD1 = common dso_local global i32 0, align 4
@dac1cfg1 = common dso_local global i32 0, align 4
@DACD2 = common dso_local global i32 0, align 4
@dac1cfg2 = common dso_local global i32 0, align 4
@dacgrpcfg1 = common dso_local global i32 0, align 4
@dac_buffer = common dso_local global i64 0, align 8
@DAC_BUFFER_SIZE = common dso_local global i32 0, align 4
@dacgrpcfg2 = common dso_local global i32 0, align 4
@dac_buffer_2 = common dso_local global i64 0, align 8
@startup_song = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_init() #0 {
  %1 = load i32, i32* @audio_initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %30

4:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audio_config, i32 0, i32 0), align 4
  %5 = load i32, i32* @GPIOA, align 4
  %6 = load i32, i32* @PAL_MODE_INPUT_ANALOG, align 4
  %7 = call i32 @palSetPadMode(i32 %5, i32 4, i32 %6)
  %8 = load i32, i32* @GPIOA, align 4
  %9 = load i32, i32* @PAL_MODE_INPUT_ANALOG, align 4
  %10 = call i32 @palSetPadMode(i32 %8, i32 5, i32 %9)
  %11 = call i32 @dacStart(i32* @DACD1, i32* @dac1cfg1)
  %12 = call i32 @dacStart(i32* @DACD2, i32* @dac1cfg2)
  %13 = call i32 (...) @START_CHANNEL_1()
  %14 = call i32 (...) @START_CHANNEL_2()
  %15 = load i64, i64* @dac_buffer, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* @DAC_BUFFER_SIZE, align 4
  %18 = call i32 @dacStartConversion(i32* @DACD1, i32* @dacgrpcfg1, i32* %16, i32 %17)
  %19 = load i64, i64* @dac_buffer_2, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* @DAC_BUFFER_SIZE, align 4
  %22 = call i32 @dacStartConversion(i32* @DACD2, i32* @dacgrpcfg2, i32* %20, i32 %21)
  store i32 1, i32* @audio_initialized, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @audio_config, i32 0, i32 0), align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @startup_song, align 4
  %27 = call i32 @PLAY_SONG(i32 %26)
  br label %30

28:                                               ; preds = %4
  %29 = call i32 (...) @stop_all_notes()
  br label %30

30:                                               ; preds = %3, %28, %25
  ret void
}

declare dso_local i32 @palSetPadMode(i32, i32, i32) #1

declare dso_local i32 @dacStart(i32*, i32*) #1

declare dso_local i32 @START_CHANNEL_1(...) #1

declare dso_local i32 @START_CHANNEL_2(...) #1

declare dso_local i32 @dacStartConversion(i32*, i32*, i32*, i32) #1

declare dso_local i32 @PLAY_SONG(i32) #1

declare dso_local i32 @stop_all_notes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
