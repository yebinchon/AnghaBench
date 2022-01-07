; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/ericgebhart/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/ericgebhart/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4

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
  %8 = call i32 (...) @on_qwerty()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = call i32 (...) @ergodox_right_led_1_on()
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* %1, align 4
  switch i32 %13, label %30 [
    i32 131, label %14
    i32 132, label %16
    i32 128, label %22
    i32 129, label %24
    i32 130, label %26
  ]

14:                                               ; preds = %12
  %15 = call i32 (...) @ergodox_right_led_2_on()
  br label %32

16:                                               ; preds = %12
  %17 = call i32 (...) @ergodox_right_led_1_on()
  %18 = call i32 (...) @ergodox_right_led_1_off()
  %19 = call i32 (...) @ergodox_right_led_1_on()
  %20 = call i32 (...) @ergodox_right_led_1_off()
  %21 = call i32 (...) @ergodox_right_led_1_on()
  br label %32

22:                                               ; preds = %12
  %23 = call i32 (...) @ergodox_right_led_3_on()
  br label %32

24:                                               ; preds = %12
  %25 = call i32 (...) @ergodox_right_led_3_on()
  br label %32

26:                                               ; preds = %12
  %27 = call i32 (...) @ergodox_right_led_1_on()
  %28 = call i32 (...) @ergodox_right_led_2_on()
  %29 = call i32 (...) @ergodox_right_led_3_on()
  br label %32

30:                                               ; preds = %12
  %31 = call i32 (...) @ergodox_board_led_off()
  br label %32

32:                                               ; preds = %30, %26, %24, %22, %16, %14
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @on_qwerty(...) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
