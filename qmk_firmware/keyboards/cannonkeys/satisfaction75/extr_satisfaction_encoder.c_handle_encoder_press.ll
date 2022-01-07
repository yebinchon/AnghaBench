; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_handle_encoder_press.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_handle_encoder_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@encoder_mode = common dso_local global i32 0, align 4
@KC_MUTE = common dso_local global i32 0, align 4
@KC_MEDIA_PLAY_PAUSE = common dso_local global i32 0, align 4
@KC_BTN3 = common dso_local global i32 0, align 4
@kb_backlight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@time_config_idx = common dso_local global i32 0, align 4
@ENC_CUSTOM_PRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_encoder_press() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @encoder_mode, align 4
  switch i32 %2, label %5 [
    i32 128, label %3
    i32 130, label %6
    i32 129, label %8
    i32 136, label %10
    i32 134, label %22
    i32 135, label %26
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @KC_MUTE, align 4
  store i32 %4, i32* %1, align 4
  br label %27

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %0, %5
  %7 = load i32, i32* @KC_MEDIA_PLAY_PAUSE, align 4
  store i32 %7, i32* %1, align 4
  br label %27

8:                                                ; preds = %0
  %9 = load i32, i32* @KC_BTN3, align 4
  store i32 %9, i32* %1, align 4
  br label %27

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 0), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 0), align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = call i32 (...) @breathing_disable()
  br label %21

19:                                               ; preds = %10
  %20 = call i32 (...) @breathing_enable()
  br label %21

21:                                               ; preds = %19, %17
  br label %27

22:                                               ; preds = %0
  %23 = load i32, i32* @time_config_idx, align 4
  %24 = add nsw i32 %23, 1
  %25 = srem i32 %24, 5
  store i32 %25, i32* @time_config_idx, align 4
  br label %26

26:                                               ; preds = %0, %22
  br label %27

27:                                               ; preds = %26, %21, %8, %6, %3
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @breathing_disable(...) #1

declare dso_local i32 @breathing_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
