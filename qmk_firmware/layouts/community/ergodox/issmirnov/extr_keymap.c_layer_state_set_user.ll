; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/issmirnov/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/issmirnov/extr_keymap.c_layer_state_set_user.c"
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
  %6 = call i32 (...) @ergodox_board_led_off()
  %7 = call i32 (...) @ergodox_right_led_1_off()
  %8 = call i32 (...) @ergodox_right_led_2_off()
  %9 = call i32 (...) @ergodox_right_led_3_off()
  %10 = call i32 (...) @combo_enable()
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %36 [
    i32 0, label %12
    i32 1, label %13
    i32 2, label %16
    i32 128, label %19
    i32 4, label %23
    i32 5, label %26
    i32 6, label %29
    i32 7, label %32
  ]

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = call i32 (...) @clear_mods()
  %15 = call i32 (...) @ergodox_right_led_1_on()
  br label %37

16:                                               ; preds = %1
  %17 = call i32 (...) @clear_mods()
  %18 = call i32 (...) @ergodox_right_led_2_on()
  br label %37

19:                                               ; preds = %1
  %20 = call i32 (...) @clear_mods()
  %21 = call i32 (...) @combo_disable()
  %22 = call i32 (...) @ergodox_right_led_3_on()
  br label %37

23:                                               ; preds = %1
  %24 = call i32 (...) @ergodox_right_led_1_on()
  %25 = call i32 (...) @ergodox_right_led_2_on()
  br label %37

26:                                               ; preds = %1
  %27 = call i32 (...) @ergodox_right_led_1_on()
  %28 = call i32 (...) @ergodox_right_led_3_on()
  br label %37

29:                                               ; preds = %1
  %30 = call i32 (...) @ergodox_right_led_2_on()
  %31 = call i32 (...) @ergodox_right_led_3_on()
  br label %37

32:                                               ; preds = %1
  %33 = call i32 (...) @ergodox_right_led_1_on()
  %34 = call i32 (...) @ergodox_right_led_2_on()
  %35 = call i32 (...) @ergodox_right_led_3_on()
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %32, %29, %26, %23, %19, %16, %13, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @combo_enable(...) #1

declare dso_local i32 @clear_mods(...) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @combo_disable(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
