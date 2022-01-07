; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/tdl-jturner/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/tdl-jturner/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @biton32(i32 %3)
  switch i32 %4, label %21 [
    i32 135, label %5
    i32 132, label %7
    i32 129, label %9
    i32 130, label %11
    i32 131, label %13
    i32 128, label %15
    i32 134, label %17
    i32 133, label %19
  ]

5:                                                ; preds = %1
  %6 = call i32 (...) @rgblight_setrgb_user_LYFK()
  br label %23

7:                                                ; preds = %1
  %8 = call i32 (...) @rgblight_setrgb_user_LYMED()
  br label %23

9:                                                ; preds = %1
  %10 = call i32 (...) @rgblight_setrgb_user_LYNUM()
  br label %23

11:                                               ; preds = %1
  %12 = call i32 (...) @rgblight_setrgb_user_LYNAV()
  br label %23

13:                                               ; preds = %1
  %14 = call i32 (...) @rgblight_setrgb_user_LYMOS()
  br label %23

15:                                               ; preds = %1
  %16 = call i32 (...) @rgblight_setrgb_user_LYSYS()
  br label %23

17:                                               ; preds = %1
  %18 = call i32 (...) @rgblight_setrgb_user_LYLT()
  br label %23

19:                                               ; preds = %1
  %20 = call i32 (...) @rgblight_setrgb_user_LYMD()
  br label %23

21:                                               ; preds = %1
  %22 = call i32 (...) @rgblight_setrgb_user_base()
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11, %9, %7, %5
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_setrgb_user_LYFK(...) #1

declare dso_local i32 @rgblight_setrgb_user_LYMED(...) #1

declare dso_local i32 @rgblight_setrgb_user_LYNUM(...) #1

declare dso_local i32 @rgblight_setrgb_user_LYNAV(...) #1

declare dso_local i32 @rgblight_setrgb_user_LYMOS(...) #1

declare dso_local i32 @rgblight_setrgb_user_LYSYS(...) #1

declare dso_local i32 @rgblight_setrgb_user_LYLT(...) #1

declare dso_local i32 @rgblight_setrgb_user_LYMD(...) #1

declare dso_local i32 @rgblight_setrgb_user_base(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
