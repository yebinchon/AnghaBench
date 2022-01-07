; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/issmirnov/extr_rgb.c_layer_state_set_rgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/issmirnov/extr_rgb.c_layer_state_set_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RGBLIGHT_MODE_STATIC_LIGHT = common dso_local global i32 0, align 4
@RGB_CLEAR = common dso_local global i32 0, align 4
@HSV_AZURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_rgb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @get_highest_layer(i32 %3)
  switch i32 %4, label %19 [
    i32 129, label %5
    i32 128, label %10
    i32 131, label %12
    i32 130, label %14
    i32 132, label %16
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @RGBLIGHT_MODE_STATIC_LIGHT, align 4
  %7 = call i32 @rgblight_mode(i32 %6)
  %8 = load i32, i32* @RGB_CLEAR, align 4
  %9 = call i32 @rgblight_sethsv_noeeprom(i32 %8)
  br label %20

10:                                               ; preds = %1
  %11 = call i32 (...) @rgblight_sethsv_noeeprom_red()
  br label %20

12:                                               ; preds = %1
  %13 = call i32 (...) @rgblight_sethsv_noeeprom_green()
  br label %20

14:                                               ; preds = %1
  %15 = call i32 (...) @rgblight_sethsv_noeeprom_blue()
  br label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @HSV_AZURE, align 4
  %18 = call i32 @rgblight_sethsv_noeeprom(i32 %17)
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %16, %14, %12, %10, %5
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @get_highest_layer(i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_red(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_green(...) #1

declare dso_local i32 @rgblight_sethsv_noeeprom_blue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
