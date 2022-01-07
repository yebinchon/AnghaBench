; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/quefrency/keymaps/georgepetri/extr_keymap.c_update_led.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/quefrency/keymaps/georgepetri/extr_keymap.c_update_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@HSV_BLUE = common dso_local global i32 0, align 4
@HSV_CORAL = common dso_local global i32 0, align 4
@HSV_MAGENTA = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@HSV_WHITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_led() #0 {
  %1 = load i32, i32* @layer_state, align 4
  %2 = call i32 @biton32(i32 %1)
  switch i32 %2, label %12 [
    i32 130, label %3
    i32 129, label %6
    i32 128, label %9
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @HSV_BLUE, align 4
  %5 = call i32 @rgblight_sethsv_noeeprom(i32 %4)
  br label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @HSV_CORAL, align 4
  %8 = call i32 @rgblight_sethsv_noeeprom(i32 %7)
  br label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @HSV_MAGENTA, align 4
  %11 = call i32 @rgblight_sethsv_noeeprom(i32 %10)
  br label %12

12:                                               ; preds = %0, %9, %6, %3
  %13 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %14 = call i64 @IS_HOST_LED_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* @HSV_WHITE, align 4
  %18 = call i32 @rgblight_sethsv_range(i32 %17, i32 0, i32 4)
  %19 = load i32, i32* @HSV_WHITE, align 4
  %20 = call i32 @rgblight_sethsv_range(i32 %19, i32 12, i32 16)
  br label %21

21:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom(i32) #1

declare dso_local i64 @IS_HOST_LED_ON(i32) #1

declare dso_local i32 @rgblight_sethsv_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
