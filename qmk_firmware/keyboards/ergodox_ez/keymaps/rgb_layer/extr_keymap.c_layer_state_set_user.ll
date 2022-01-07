; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/rgb_layer/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/rgb_layer/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@user_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @ergodox_board_led_off()
  %4 = call i32 (...) @ergodox_right_led_1_off()
  %5 = call i32 (...) @ergodox_right_led_2_off()
  %6 = call i32 (...) @ergodox_right_led_3_off()
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @biton32(i32 %7)
  switch i32 %8, label %70 [
    i32 128, label %9
    i32 129, label %17
    i32 3, label %25
    i32 4, label %33
    i32 5, label %42
    i32 6, label %51
    i32 7, label %60
  ]

9:                                                ; preds = %1
  %10 = call i32 (...) @ergodox_right_led_1_on()
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_config, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = call i32 (...) @rgblight_sethsv_noeeprom_red()
  %15 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %16

16:                                               ; preds = %13, %9
  br label %77

17:                                               ; preds = %1
  %18 = call i32 (...) @ergodox_right_led_2_on()
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_config, i32 0, i32 0), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = call i32 (...) @rgblight_sethsv_noeeprom_green()
  %23 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %24

24:                                               ; preds = %21, %17
  br label %77

25:                                               ; preds = %1
  %26 = call i32 (...) @ergodox_right_led_3_on()
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_config, i32 0, i32 0), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 (...) @rgblight_sethsv_noeeprom_blue()
  %31 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %32

32:                                               ; preds = %29, %25
  br label %77

33:                                               ; preds = %1
  %34 = call i32 (...) @ergodox_right_led_1_on()
  %35 = call i32 (...) @ergodox_right_led_2_on()
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_config, i32 0, i32 0), align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i32 (...) @rgblight_sethsv_noeeprom_orange()
  %40 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %41

41:                                               ; preds = %38, %33
  br label %77

42:                                               ; preds = %1
  %43 = call i32 (...) @ergodox_right_led_1_on()
  %44 = call i32 (...) @ergodox_right_led_3_on()
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_config, i32 0, i32 0), align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 (...) @rgblight_sethsv_noeeprom_yellow()
  %49 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %50

50:                                               ; preds = %47, %42
  br label %77

51:                                               ; preds = %1
  %52 = call i32 (...) @ergodox_right_led_2_on()
  %53 = call i32 (...) @ergodox_right_led_3_on()
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_config, i32 0, i32 0), align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = call i32 (...) @rgblight_sethsv_noeeprom_pink()
  %58 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %59

59:                                               ; preds = %56, %51
  br label %77

60:                                               ; preds = %1
  %61 = call i32 (...) @ergodox_right_led_1_on()
  %62 = call i32 (...) @ergodox_right_led_2_on()
  %63 = call i32 (...) @ergodox_right_led_3_on()
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_config, i32 0, i32 0), align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = call i32 (...) @rgblight_sethsv_noeeprom_white()
  %68 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %69

69:                                               ; preds = %66, %60
  br label %77

70:                                               ; preds = %1
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_config, i32 0, i32 0), align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = call i32 (...) @rgblight_sethsv_noeeprom_cyan()
  %75 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %69, %59, %50, %41, %32, %24, %16
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_red(...) #1

declare dso_local i32 @rgblight_mode_noeeprom(i32) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_green(...) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_blue(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_orange(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_yellow(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_pink(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_white(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_cyan(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
