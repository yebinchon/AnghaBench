; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/coderkun_neo2/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/coderkun_neo2/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@LED_BRIGHTNESS_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @layer_state, align 4
  %3 = call i32 @biton32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @ergodox_board_led_off()
  %5 = call i32 (...) @ergodox_right_led_1_off()
  %6 = call i32 (...) @ergodox_right_led_2_off()
  %7 = call i32 (...) @ergodox_right_led_3_off()
  %8 = load i32, i32* %1, align 4
  switch i32 %8, label %15 [
    i32 130, label %9
    i32 128, label %11
    i32 129, label %13
  ]

9:                                                ; preds = %0
  %10 = call i32 (...) @ergodox_right_led_1_on()
  br label %28

11:                                               ; preds = %0
  %12 = call i32 (...) @ergodox_right_led_2_on()
  br label %28

13:                                               ; preds = %0
  %14 = call i32 (...) @ergodox_right_led_3_on()
  br label %28

15:                                               ; preds = %0
  %16 = call i32 (...) @host_keyboard_leds()
  %17 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  %23 = call i32 @ergodox_led_all_set(i32 %22)
  %24 = call i32 (...) @ergodox_right_led_1_on()
  br label %27

25:                                               ; preds = %15
  %26 = call i32 (...) @ergodox_board_led_off()
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %13, %11, %9
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @ergodox_led_all_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
