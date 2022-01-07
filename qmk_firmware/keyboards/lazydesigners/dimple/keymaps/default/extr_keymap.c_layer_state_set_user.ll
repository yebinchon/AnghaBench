; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lazydesigners/dimple/keymaps/default/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lazydesigners/dimple/keymaps/default/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HSV_GREEN = common dso_local global i32 0, align 4
@HSV_GOLD = common dso_local global i32 0, align 4
@HSV_RED = common dso_local global i32 0, align 4
@HSV_WHITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @update_tri_layer_state(i32 %3, i32 129, i32 128, i32 130)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @biton32(i32 %5)
  switch i32 %6, label %16 [
    i32 129, label %7
    i32 128, label %10
    i32 130, label %13
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @HSV_GREEN, align 4
  %9 = call i32 @rgblight_sethsv_noeeprom(i32 %8)
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @HSV_GOLD, align 4
  %12 = call i32 @rgblight_sethsv_noeeprom(i32 %11)
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @HSV_RED, align 4
  %15 = call i32 @rgblight_sethsv_noeeprom(i32 %14)
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @HSV_WHITE, align 4
  %18 = call i32 @rgblight_sethsv_noeeprom(i32 %17)
  br label %19

19:                                               ; preds = %16, %13, %10, %7
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @update_tri_layer_state(i32, i32, i32, i32) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
