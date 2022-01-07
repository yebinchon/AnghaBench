; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/smurmann/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/smurmann/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@layer_state = common dso_local global i32 0, align 4
@LED_BRIGHTNESS_HI = common dso_local global i32 0, align 4
@capsOn = common dso_local global i64 0, align 8
@keyboard_report = common dso_local global %struct.TYPE_2__* null, align 8
@KC_LSFT = common dso_local global i32 0, align 4
@LED_BRIGHTNESS_LO = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@KC_LCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @layer_state, align 4
  %3 = call i32 @biton32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = call i32 (...) @ergodox_right_led_2_on()
  %8 = call i32 (...) @ergodox_right_led_3_on()
  %9 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  %10 = call i32 @ergodox_right_led_2_set(i32 %9)
  %11 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  %12 = call i32 @ergodox_right_led_3_set(i32 %11)
  br label %13

13:                                               ; preds = %6, %0
  %14 = load i64, i64* @capsOn, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  %18 = call i32 @ergodox_right_led_1_set(i32 %17)
  %19 = call i32 (...) @ergodox_right_led_1_on()
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keyboard_report, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @KC_LSFT, align 4
  %25 = call i32 @MOD_BIT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  %30 = call i32 @ergodox_right_led_1_set(i32 %29)
  %31 = call i32 (...) @ergodox_right_led_1_on()
  br label %40

32:                                               ; preds = %20
  %33 = load i32, i32* @LED_BRIGHTNESS_LO, align 4
  %34 = call i32 @ergodox_right_led_1_set(i32 %33)
  %35 = load i64, i64* @capsOn, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = call i32 (...) @ergodox_right_led_1_off()
  br label %39

39:                                               ; preds = %37, %32
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keyboard_report, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @KC_LALT, align 4
  %45 = call i32 @MOD_BIT(i32 %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  %50 = call i32 @ergodox_right_led_2_set(i32 %49)
  %51 = call i32 (...) @ergodox_right_led_2_on()
  br label %60

52:                                               ; preds = %40
  %53 = load i32, i32* @LED_BRIGHTNESS_LO, align 4
  %54 = call i32 @ergodox_right_led_2_set(i32 %53)
  %55 = load i32, i32* %1, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = call i32 (...) @ergodox_right_led_2_off()
  br label %59

59:                                               ; preds = %57, %52
  br label %60

60:                                               ; preds = %59, %48
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keyboard_report, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @KC_LCTRL, align 4
  %65 = call i32 @MOD_BIT(i32 %64)
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  %70 = call i32 @ergodox_right_led_3_set(i32 %69)
  %71 = call i32 (...) @ergodox_right_led_3_on()
  br label %80

72:                                               ; preds = %60
  %73 = load i32, i32* @LED_BRIGHTNESS_LO, align 4
  %74 = call i32 @ergodox_right_led_3_set(i32 %73)
  %75 = load i32, i32* %1, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 (...) @ergodox_right_led_3_off()
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79, %68
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

declare dso_local i32 @ergodox_right_led_2_set(i32) #1

declare dso_local i32 @ergodox_right_led_3_set(i32) #1

declare dso_local i32 @ergodox_right_led_1_set(i32) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @MOD_BIT(i32) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
