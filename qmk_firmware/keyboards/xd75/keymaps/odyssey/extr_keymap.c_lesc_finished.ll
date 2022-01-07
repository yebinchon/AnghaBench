; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/odyssey/extr_keymap.c_lesc_finished.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/odyssey/extr_keymap.c_lesc_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@td_state = common dso_local global i32 0, align 4
@KC_ESC = common dso_local global i32 0, align 4
@_FN = common dso_local global i32 0, align 4
@sstate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lesc_finished(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @cur_dance(i32* %5)
  store i32 %6, i32* @td_state, align 4
  %7 = load i32, i32* @td_state, align 4
  switch i32 %7, label %17 [
    i32 128, label %8
    i32 129, label %11
    i32 131, label %15
    i32 130, label %16
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @KC_ESC, align 4
  %10 = call i32 @register_code16(i32 %9)
  br label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @_FN, align 4
  %13 = call i32 @layer_on(i32 %12)
  %14 = call i32 (...) @update_led_state_c()
  store i32 0, i32* @sstate, align 4
  br label %17

15:                                               ; preds = %2
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %2, %16, %15, %11, %8
  ret void
}

declare dso_local i32 @cur_dance(i32*) #1

declare dso_local i32 @register_code16(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_led_state_c(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
