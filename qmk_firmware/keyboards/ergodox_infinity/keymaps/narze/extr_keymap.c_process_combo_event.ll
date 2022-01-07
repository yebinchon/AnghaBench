; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/narze/extr_keymap.c_process_combo_event.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/narze/extr_keymap.c_process_combo_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SUPERDUPER = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_combo_event(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %13 [
    i32 128, label %9
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @_SUPERDUPER, align 4
  %11 = call i32 @layer_on(i32 %10)
  %12 = call i32 (...) @ergodox_board_led_on()
  br label %13

13:                                               ; preds = %7, %9
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* @_SUPERDUPER, align 4
  %16 = call i32 @layer_off(i32 %15)
  %17 = call i32 (...) @ergodox_board_led_off()
  %18 = load i32, i32* @KC_LGUI, align 4
  %19 = call i32 @MOD_BIT(i32 %18)
  %20 = load i32, i32* @KC_LCTL, align 4
  %21 = call i32 @MOD_BIT(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* @KC_LALT, align 4
  %24 = call i32 @MOD_BIT(i32 %23)
  %25 = or i32 %22, %24
  %26 = call i32 @unregister_mods(i32 %25)
  br label %27

27:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @ergodox_board_led_on(...) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @unregister_mods(i32) #1

declare dso_local i32 @MOD_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
