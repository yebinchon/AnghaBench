; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/default/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/default/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGBLIGHT_COLOR_LAYER_0 = common dso_local global i32 0, align 4
@RGBLIGHT_COLOR_LAYER_1 = common dso_local global i32 0, align 4
@RGBLIGHT_COLOR_LAYER_2 = common dso_local global i32 0, align 4
@RGBLIGHT_COLOR_LAYER_3 = common dso_local global i32 0, align 4
@RGBLIGHT_COLOR_LAYER_4 = common dso_local global i32 0, align 4
@RGBLIGHT_COLOR_LAYER_5 = common dso_local global i32 0, align 4
@RGBLIGHT_COLOR_LAYER_6 = common dso_local global i32 0, align 4
@RGBLIGHT_COLOR_LAYER_7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @ergodox_board_led_off()
  %5 = call i32 (...) @ergodox_right_led_1_off()
  %6 = call i32 (...) @ergodox_right_led_2_off()
  %7 = call i32 (...) @ergodox_right_led_3_off()
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @biton32(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %31 [
    i32 0, label %11
    i32 1, label %12
    i32 2, label %14
    i32 3, label %16
    i32 4, label %18
    i32 5, label %21
    i32 6, label %24
    i32 7, label %27
  ]

11:                                               ; preds = %1
  br label %32

12:                                               ; preds = %1
  %13 = call i32 (...) @ergodox_right_led_1_on()
  br label %32

14:                                               ; preds = %1
  %15 = call i32 (...) @ergodox_right_led_2_on()
  br label %32

16:                                               ; preds = %1
  %17 = call i32 (...) @ergodox_right_led_3_on()
  br label %32

18:                                               ; preds = %1
  %19 = call i32 (...) @ergodox_right_led_1_on()
  %20 = call i32 (...) @ergodox_right_led_2_on()
  br label %32

21:                                               ; preds = %1
  %22 = call i32 (...) @ergodox_right_led_1_on()
  %23 = call i32 (...) @ergodox_right_led_3_on()
  br label %32

24:                                               ; preds = %1
  %25 = call i32 (...) @ergodox_right_led_2_on()
  %26 = call i32 (...) @ergodox_right_led_3_on()
  br label %32

27:                                               ; preds = %1
  %28 = call i32 (...) @ergodox_right_led_1_on()
  %29 = call i32 (...) @ergodox_right_led_2_on()
  %30 = call i32 (...) @ergodox_right_led_3_on()
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %31, %27, %24, %21, %18, %16, %14, %12, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
