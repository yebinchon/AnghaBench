; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hineybush/h87a/keymaps/gam3cat/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hineybush/h87a/keymaps/gam3cat/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @biton32(i32 %3)
  switch i32 %4, label %17 [
    i32 133, label %5
    i32 128, label %8
    i32 129, label %8
    i32 131, label %8
    i32 132, label %8
    i32 130, label %11
    i32 134, label %14
  ]

5:                                                ; preds = %1
  %6 = call i32 @custom_backlight_level(i32 0)
  %7 = call i32 @rgblight_sethsv_noeeprom(i32 180, i32 100, i32 255)
  br label %20

8:                                                ; preds = %1, %1, %1, %1
  %9 = call i32 @custom_backlight_level(i32 1)
  %10 = call i32 @rgblight_sethsv_noeeprom(i32 230, i32 255, i32 255)
  br label %20

11:                                               ; preds = %1
  %12 = call i32 @custom_backlight_level(i32 2)
  %13 = call i32 @rgblight_sethsv_noeeprom(i32 240, i32 255, i32 255)
  br label %20

14:                                               ; preds = %1
  %15 = call i32 @custom_backlight_level(i32 3)
  %16 = call i32 @rgblight_sethsv_noeeprom(i32 255, i32 255, i32 255)
  br label %20

17:                                               ; preds = %1
  %18 = call i32 @custom_backlight_level(i32 0)
  %19 = call i32 @rgblight_sethsv_noeeprom(i32 180, i32 100, i32 100)
  br label %20

20:                                               ; preds = %17, %14, %11, %8, %5
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @custom_backlight_level(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
