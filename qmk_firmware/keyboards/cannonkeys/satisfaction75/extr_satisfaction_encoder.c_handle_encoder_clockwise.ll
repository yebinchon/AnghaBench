; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_handle_encoder_clockwise.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction_encoder.c_handle_encoder_clockwise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@encoder_mode = common dso_local global i32 0, align 4
@KC_VOLU = common dso_local global i32 0, align 4
@KC_MEDIA_NEXT_TRACK = common dso_local global i32 0, align 4
@KC_WH_D = common dso_local global i32 0, align 4
@kb_backlight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BACKLIGHT_LEVELS = common dso_local global i32 0, align 4
@KC_BRIGHTNESS_UP = common dso_local global i32 0, align 4
@queue_for_send = common dso_local global i32 0, align 4
@ENC_CUSTOM_CW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_encoder_clockwise() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @encoder_mode, align 4
  switch i32 %2, label %3 [
    i32 128, label %4
    i32 130, label %6
    i32 129, label %8
    i32 136, label %10
    i32 135, label %25
    i32 134, label %27
  ]

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i32, i32* @KC_VOLU, align 4
  store i32 %5, i32* %1, align 4
  br label %29

6:                                                ; preds = %0
  %7 = load i32, i32* @KC_MEDIA_NEXT_TRACK, align 4
  store i32 %7, i32* %1, align 4
  br label %29

8:                                                ; preds = %0
  %9 = load i32, i32* @KC_WH_D, align 4
  store i32 %9, i32* %1, align 4
  br label %29

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 1), align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 1), align 4
  %14 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 1), align 4
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 1), align 4
  %20 = call i32 @backlight_set(i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 1), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 0), align 4
  br label %24

24:                                               ; preds = %23, %18
  br label %29

25:                                               ; preds = %0
  %26 = load i32, i32* @KC_BRIGHTNESS_UP, align 4
  store i32 %26, i32* %1, align 4
  br label %29

27:                                               ; preds = %0
  %28 = call i32 @update_time_config(i32 1)
  store i32 1, i32* @queue_for_send, align 4
  br label %29

29:                                               ; preds = %27, %25, %24, %8, %6, %4
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @backlight_set(i32) #1

declare dso_local i32 @update_time_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
