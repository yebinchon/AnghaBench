; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/colemak_programmer/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/colemak_programmer/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_scan_user.state = internal global i32 0, align 4
@default_layer_state = common dso_local global i64 0, align 8
@layer_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @ergodox_board_led_off()
  %3 = call i32 (...) @ergodox_right_led_1_off()
  %4 = call i32 (...) @ergodox_right_led_2_off()
  %5 = call i32 (...) @ergodox_right_led_3_off()
  %6 = load i32, i32* @matrix_scan_user.state, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @matrix_scan_user.state, align 4
  %8 = icmp slt i32 %7, 6
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %28

10:                                               ; preds = %0
  store i32 0, i32* @matrix_scan_user.state, align 4
  %11 = load i64, i64* @default_layer_state, align 8
  %12 = and i64 %11, 2
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @ergodox_right_led_1_on()
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* @layer_state, align 4
  %18 = call i32 @biton32(i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @ergodox_right_led_2_on()
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @ergodox_right_led_3_on()
  br label %28

28:                                               ; preds = %9, %26, %23
  ret void
}

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
