; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bfo9000/keymaps/abstractkb/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bfo9000/keymaps/abstractkb/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGBLIGHT_MODE_RAINBOW_SWIRL = common dso_local global i32 0, align 4
@RGBLIGHT_MODE_STATIC_LIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @biton32(i32 %3)
  switch i32 %4, label %9 [
    i32 128, label %5
  ]

5:                                                ; preds = %1
  %6 = call i32 @rgblight_sethsv_noeeprom(i32 0, i32 255, i32 255)
  %7 = load i32, i32* @RGBLIGHT_MODE_RAINBOW_SWIRL, align 4
  %8 = call i32 @rgblight_mode_noeeprom(i32 %7)
  br label %13

9:                                                ; preds = %1
  %10 = call i32 @rgblight_sethsv_noeeprom(i32 0, i32 0, i32 255)
  %11 = load i32, i32* @RGBLIGHT_MODE_STATIC_LIGHT, align 4
  %12 = call i32 @rgblight_mode_noeeprom(i32 %11)
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom(i32, i32, i32) #1

declare dso_local i32 @rgblight_mode_noeeprom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
