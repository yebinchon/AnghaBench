; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/teckinesis/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/teckinesis/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@caps_shift = common dso_local global i64 0, align 8
@keyboard_report = common dso_local global %struct.TYPE_2__* null, align 8
@KC_RSFT = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@layer_state = common dso_local global i64 0, align 8
@SYMB = common dso_local global i64 0, align 8
@MDIA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = load i64, i64* @caps_shift, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %17, label %3

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keyboard_report, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @KC_RSFT, align 4
  %8 = call i32 @MOD_BIT(i32 %7)
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = call i32 (...) @host_keyboard_leds()
  %13 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %3, %0
  %18 = call i32 (...) @ergodox_right_led_1_on()
  br label %21

19:                                               ; preds = %11
  %20 = call i32 (...) @ergodox_right_led_1_off()
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i64, i64* @layer_state, align 8
  %23 = load i64, i64* @SYMB, align 8
  %24 = shl i64 1, %23
  %25 = and i64 %22, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @ergodox_right_led_2_on()
  br label %31

29:                                               ; preds = %21
  %30 = call i32 (...) @ergodox_right_led_2_off()
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i64, i64* @layer_state, align 8
  %33 = load i64, i64* @MDIA, align 8
  %34 = shl i64 1, %33
  %35 = and i64 %32, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (...) @ergodox_right_led_3_on()
  br label %41

39:                                               ; preds = %31
  %40 = call i32 (...) @ergodox_right_led_3_off()
  br label %41

41:                                               ; preds = %39, %37
  ret void
}

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
