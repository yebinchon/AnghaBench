; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/gordon/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/gordon/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @layer_state, align 4
  %3 = call i32 @biton32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @ergodox_board_led_on()
  %5 = call i32 (...) @ergodox_led_all_on()
  %6 = call i32 (...) @ergodox_board_led_off()
  %7 = call i32 (...) @ergodox_right_led_1_off()
  %8 = call i32 (...) @ergodox_right_led_2_off()
  %9 = call i32 (...) @ergodox_right_led_3_off()
  %10 = load i32, i32* %1, align 4
  switch i32 %10, label %39 [
    i32 129, label %11
    i32 135, label %13
    i32 133, label %15
    i32 134, label %17
    i32 136, label %20
    i32 137, label %21
    i32 138, label %22
    i32 132, label %25
    i32 128, label %29
    i32 131, label %32
    i32 130, label %36
  ]

11:                                               ; preds = %0
  %12 = call i32 (...) @ergodox_right_led_1_on()
  br label %40

13:                                               ; preds = %0
  %14 = call i32 (...) @ergodox_right_led_2_on()
  br label %40

15:                                               ; preds = %0
  %16 = call i32 (...) @ergodox_right_led_3_on()
  br label %40

17:                                               ; preds = %0
  %18 = call i32 (...) @ergodox_right_led_1_on()
  %19 = call i32 (...) @ergodox_right_led_2_on()
  br label %40

20:                                               ; preds = %0
  br label %40

21:                                               ; preds = %0
  br label %40

22:                                               ; preds = %0
  %23 = call i32 (...) @ergodox_right_led_2_on()
  %24 = call i32 (...) @ergodox_right_led_3_on()
  br label %40

25:                                               ; preds = %0
  %26 = call i32 (...) @ergodox_right_led_1_on()
  %27 = call i32 (...) @ergodox_right_led_2_on()
  %28 = call i32 (...) @ergodox_right_led_3_on()
  br label %40

29:                                               ; preds = %0
  %30 = call i32 (...) @ergodox_right_led_1_on()
  %31 = call i32 (...) @ergodox_right_led_3_on()
  br label %40

32:                                               ; preds = %0
  %33 = call i32 (...) @ergodox_right_led_1_on()
  %34 = call i32 (...) @ergodox_right_led_2_on()
  %35 = call i32 (...) @ergodox_right_led_3_on()
  br label %40

36:                                               ; preds = %0
  %37 = call i32 (...) @ergodox_right_led_2_on()
  %38 = call i32 (...) @ergodox_right_led_3_on()
  br label %39

39:                                               ; preds = %0, %36
  br label %40

40:                                               ; preds = %39, %32, %29, %25, %22, %21, %20, %17, %15, %13, %11
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_board_led_on(...) #1

declare dso_local i32 @ergodox_led_all_on(...) #1

declare dso_local i32 @ergodox_board_led_off(...) #1

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
