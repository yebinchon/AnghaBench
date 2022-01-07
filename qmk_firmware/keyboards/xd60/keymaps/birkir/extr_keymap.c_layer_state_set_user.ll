; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd60/keymaps/birkir/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd60/keymaps/birkir/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@edit = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@hue = common dso_local global i32 0, align 4
@sat = common dso_local global i32 0, align 4
@val = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @layer_state_set_user(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i32, i32* @edit, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = call i32 (...) @rgblight_get_mode()
  store i32 %9, i32* @mode, align 4
  %10 = call i32 (...) @rgblight_get_hue()
  store i32 %10, i32* @hue, align 4
  %11 = call i32 (...) @rgblight_get_sat()
  store i32 %11, i32* @sat, align 4
  %12 = call i32 (...) @rgblight_get_val()
  store i32 %12, i32* @val, align 4
  store i32 0, i32* @edit, align 4
  br label %13

13:                                               ; preds = %8, %5, %1
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @biton32(i64 %14)
  switch i32 %15, label %22 [
    i32 1, label %16
    i32 2, label %19
  ]

16:                                               ; preds = %13
  %17 = call i32 @rgblight_mode(i32 1)
  %18 = call i32 @rgblight_setrgb(i32 211, i32 127, i32 237)
  br label %29

19:                                               ; preds = %13
  %20 = call i32 @rgblight_mode(i32 1)
  %21 = call i32 @rgblight_setrgb(i32 255, i32 0, i32 0)
  store i32 1, i32* @edit, align 4
  br label %29

22:                                               ; preds = %13
  %23 = load i32, i32* @mode, align 4
  %24 = call i32 @rgblight_mode(i32 %23)
  %25 = load i32, i32* @hue, align 4
  %26 = load i32, i32* @sat, align 4
  %27 = load i32, i32* @val, align 4
  %28 = call i32 @rgblight_sethsv(i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %19, %16
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i32 @rgblight_get_mode(...) #1

declare dso_local i32 @rgblight_get_hue(...) #1

declare dso_local i32 @rgblight_get_sat(...) #1

declare dso_local i32 @rgblight_get_val(...) #1

declare dso_local i32 @biton32(i64) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

declare dso_local i32 @rgblight_sethsv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
