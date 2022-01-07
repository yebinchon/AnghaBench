; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/bocaj/extr_keymap.c_matrix_scan_keymap.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/bocaj/extr_keymap.c_matrix_scan_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@MODS_SHIFT_MASK = common dso_local global i32 0, align 4
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@MODS_CTRL_MASK = common dso_local global i32 0, align 4
@MODS_GUI_MASK = common dso_local global i32 0, align 4
@MODS_ALT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_keymap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @get_mods()
  store i32 %5, i32* %1, align 4
  %6 = call i32 (...) @host_keyboard_leds()
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @get_oneshot_mods()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @layer_state, align 4
  %9 = call i32 @biton32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 (...) @ergodox_board_led_off()
  %11 = call i32 (...) @ergodox_right_led_1_off()
  %12 = call i32 (...) @ergodox_right_led_2_off()
  %13 = call i32 (...) @ergodox_right_led_3_off()
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %104 [
    i32 128, label %15
    i32 130, label %15
    i32 129, label %15
    i32 131, label %95
    i32 133, label %98
    i32 132, label %101
  ]

15:                                               ; preds = %0, %0, %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @MODS_SHIFT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MODS_SHIFT_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %20, %15
  %32 = call i32 (...) @ergodox_right_led_1_on()
  %33 = call i32 @ergodox_right_led_1_set(i32 25)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @MODS_CTRL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @MODS_CTRL_MASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @MODS_GUI_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @MODS_GUI_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %49, %44, %39, %34
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @MODS_CTRL_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @MODS_CTRL_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @MODS_GUI_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @MODS_GUI_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = call i32 (...) @ergodox_right_led_2_on()
  %76 = call i32 @ergodox_right_led_2_set(i32 50)
  br label %80

77:                                               ; preds = %69, %59
  %78 = call i32 (...) @ergodox_right_led_2_on()
  %79 = call i32 @ergodox_right_led_2_set(i32 10)
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* @MODS_ALT_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @MODS_ALT_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %81
  %92 = call i32 (...) @ergodox_right_led_3_on()
  %93 = call i32 @ergodox_right_led_3_set(i32 10)
  br label %94

94:                                               ; preds = %91, %86
  br label %105

95:                                               ; preds = %0
  %96 = call i32 (...) @ergodox_right_led_3_on()
  %97 = call i32 @ergodox_right_led_3_set(i32 10)
  br label %105

98:                                               ; preds = %0
  %99 = call i32 (...) @ergodox_right_led_2_on()
  %100 = call i32 @ergodox_right_led_2_set(i32 10)
  br label %105

101:                                              ; preds = %0
  %102 = call i32 (...) @ergodox_right_led_1_on()
  %103 = call i32 @ergodox_right_led_1_set(i32 10)
  br label %105

104:                                              ; preds = %0
  br label %105

105:                                              ; preds = %104, %101, %98, %95, %94
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @get_oneshot_mods(...) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @ergodox_right_led_1_off(...) #1

declare dso_local i32 @ergodox_right_led_2_off(...) #1

declare dso_local i32 @ergodox_right_led_3_off(...) #1

declare dso_local i32 @ergodox_right_led_1_on(...) #1

declare dso_local i32 @ergodox_right_led_1_set(i32) #1

declare dso_local i32 @ergodox_right_led_2_on(...) #1

declare dso_local i32 @ergodox_right_led_2_set(i32) #1

declare dso_local i32 @ergodox_right_led_3_on(...) #1

declare dso_local i32 @ergodox_right_led_3_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
