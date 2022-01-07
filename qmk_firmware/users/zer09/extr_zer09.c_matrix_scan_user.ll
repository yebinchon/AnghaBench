; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_zer09.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/zer09/extr_zer09.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_scan_user.is_leds_changes = internal global i32 1, align 4
@layer_state = common dso_local global i32 0, align 4
@c_lyr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = load i32, i32* @layer_state, align 4
  %2 = call i32 @biton32(i32 %1)
  store i32 %2, i32* @c_lyr, align 4
  %3 = load i32, i32* @matrix_scan_user.is_leds_changes, align 4
  %4 = load i32, i32* @c_lyr, align 4
  %5 = call i32 @set_layer_led(i32 %4)
  %6 = shl i32 %3, %5
  store i32 %6, i32* @matrix_scan_user.is_leds_changes, align 4
  %7 = load i32, i32* @matrix_scan_user.is_leds_changes, align 4
  %8 = call i32 (...) @shifted_layer()
  %9 = shl i32 %7, %8
  store i32 %9, i32* @matrix_scan_user.is_leds_changes, align 4
  %10 = load i32, i32* @matrix_scan_user.is_leds_changes, align 4
  %11 = load i32, i32* @c_lyr, align 4
  %12 = call i32 @rainbow_loop(i32 %11)
  %13 = shl i32 %10, %12
  store i32 %13, i32* @matrix_scan_user.is_leds_changes, align 4
  %14 = load i32, i32* @matrix_scan_user.is_leds_changes, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 (...) @rgblight_set()
  store i32 1, i32* @matrix_scan_user.is_leds_changes, align 4
  br label %18

18:                                               ; preds = %16, %0
  %19 = call i32 (...) @matrix_scan_keymap()
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @set_layer_led(i32) #1

declare dso_local i32 @shifted_layer(...) #1

declare dso_local i32 @rainbow_loop(i32) #1

declare dso_local i32 @rgblight_set(...) #1

declare dso_local i32 @matrix_scan_keymap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
