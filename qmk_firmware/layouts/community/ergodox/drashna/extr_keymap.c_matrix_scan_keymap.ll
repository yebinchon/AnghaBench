; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/drashna/extr_keymap.c_matrix_scan_keymap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/drashna/extr_keymap.c_matrix_scan_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skip_leds = common dso_local global i32 0, align 4
@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@MOD_MASK_CTRL = common dso_local global i32 0, align 4
@MOD_MASK_ALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_keymap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @get_mods()
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @host_keyboard_leds()
  store i32 %5, i32* %2, align 4
  %6 = call i32 (...) @get_oneshot_mods()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @skip_leds, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %0
  %10 = call i32 (...) @ergodox_board_led_off()
  %11 = call i32 (...) @ergodox_right_led_1_off()
  %12 = call i32 (...) @ergodox_right_led_2_off()
  %13 = call i32 (...) @ergodox_right_led_3_off()
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %9
  %27 = call i32 (...) @ergodox_right_led_2_on()
  %28 = call i32 @ergodox_right_led_2_set(i32 50)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MOD_MASK_CTRL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = call i32 (...) @ergodox_right_led_1_on()
  %38 = call i32 @ergodox_right_led_1_set(i32 10)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MOD_MASK_ALT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = call i32 (...) @ergodox_right_led_3_on()
  %48 = call i32 @ergodox_right_led_3_set(i32 10)
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49, %0
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @get_oneshot_mods(...) #1

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_2_set(i32) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_1_set(i32) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

declare dso_local i32 @ergodox_right_led_3_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
