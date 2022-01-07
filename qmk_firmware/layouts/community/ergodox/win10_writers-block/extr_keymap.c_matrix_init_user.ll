; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/win10_writers-block/extr_keymap.c_matrix_init_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/win10_writers-block/extr_keymap.c_matrix_init_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_user() #0 {
  %1 = call i32 @wait_ms(i32 500)
  %2 = call i32 (...) @ergodox_board_led_on()
  %3 = call i32 @wait_ms(i32 200)
  %4 = call i32 (...) @ergodox_right_led_1_on()
  %5 = call i32 @wait_ms(i32 200)
  %6 = call i32 (...) @ergodox_right_led_2_on()
  %7 = call i32 @wait_ms(i32 200)
  %8 = call i32 (...) @ergodox_right_led_3_on()
  %9 = call i32 @wait_ms(i32 200)
  %10 = call i32 (...) @ergodox_board_led_off()
  %11 = call i32 @wait_ms(i32 200)
  %12 = call i32 (...) @ergodox_right_led_1_off()
  %13 = call i32 @wait_ms(i32 200)
  %14 = call i32 (...) @ergodox_right_led_2_off()
  %15 = call i32 @wait_ms(i32 200)
  %16 = call i32 (...) @ergodox_right_led_3_off()
  ret void
}

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @ergodox_board_led_on(...) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
