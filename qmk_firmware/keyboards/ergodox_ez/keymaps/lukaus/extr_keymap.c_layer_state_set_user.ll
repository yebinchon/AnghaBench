; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/lukaus/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/lukaus/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @biton32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @ergodox_right_led_1_off()
  %7 = call i32 (...) @ergodox_right_led_2_off()
  %8 = call i32 (...) @ergodox_right_led_3_off()
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %20 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %13
    i32 3, label %15
    i32 4, label %17
  ]

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  %12 = call i32 (...) @ergodox_right_led_1_on()
  br label %21

13:                                               ; preds = %1
  %14 = call i32 (...) @ergodox_right_led_2_on()
  br label %21

15:                                               ; preds = %1
  %16 = call i32 (...) @ergodox_right_led_3_on()
  br label %21

17:                                               ; preds = %1
  %18 = call i32 (...) @ergodox_right_led_1_on()
  %19 = call i32 (...) @ergodox_right_led_3_on()
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %17, %15, %13, %11, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
