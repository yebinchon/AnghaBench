; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/ordinary_osx/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/ordinary_osx/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@keyboard_report = common dso_local global %struct.TYPE_2__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@layer_state = common dso_local global i64 0, align 8
@SYMB = common dso_local global i64 0, align 8
@MDIA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keyboard_report, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @KC_LSFT, align 4
  %5 = call i32 @MOD_BIT(i32 %4)
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keyboard_report, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @KC_RSFT, align 4
  %13 = call i32 @MOD_BIT(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = call i32 (...) @host_keyboard_leds()
  %18 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %8, %0
  %23 = call i32 (...) @ergodox_right_led_1_on()
  br label %26

24:                                               ; preds = %16
  %25 = call i32 (...) @ergodox_right_led_1_off()
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i64, i64* @layer_state, align 8
  %28 = load i64, i64* @SYMB, align 8
  %29 = shl i64 1, %28
  %30 = and i64 %27, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (...) @ergodox_right_led_2_on()
  br label %36

34:                                               ; preds = %26
  %35 = call i32 (...) @ergodox_right_led_2_off()
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i64, i64* @layer_state, align 8
  %38 = load i64, i64* @MDIA, align 8
  %39 = shl i64 1, %38
  %40 = and i64 %37, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (...) @ergodox_right_led_3_on()
  br label %46

44:                                               ; preds = %36
  %45 = call i32 (...) @ergodox_right_led_3_off()
  br label %46

46:                                               ; preds = %44, %42
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
