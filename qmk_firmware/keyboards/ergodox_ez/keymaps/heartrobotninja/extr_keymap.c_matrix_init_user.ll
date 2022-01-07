; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/heartrobotninja/extr_keymap.c_matrix_init_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/heartrobotninja/extr_keymap.c_matrix_init_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LED_BRIGHTNESS_HI = common dso_local global i32 0, align 4
@LED_BRIGHTNESS_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @ergodox_led_all_on()
  %4 = call i32 (...) @rgblight_init()
  %5 = call i32 (...) @rgblight_enable()
  %6 = call i32 @rgblight_setrgb(i32 255, i32 0, i32 0)
  %7 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %16, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @LED_BRIGHTNESS_LO, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @ergodox_led_all_set(i32 %13)
  %15 = call i32 @wait_ms(i32 5)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %1, align 4
  br label %8

19:                                               ; preds = %8
  %20 = call i32 @rgblight_setrgb(i32 255, i32 255, i32 0)
  %21 = call i32 @wait_ms(i32 1000)
  %22 = load i32, i32* @LED_BRIGHTNESS_LO, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %30, %19
  %24 = load i32, i32* %2, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @ergodox_led_all_set(i32 %27)
  %29 = call i32 @wait_ms(i32 10)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %2, align 4
  br label %23

33:                                               ; preds = %23
  %34 = call i32 @rgblight_setrgb(i32 0, i32 255, i32 255)
  %35 = call i32 (...) @ergodox_led_all_off()
  %36 = call i32 @wait_ms(i32 1000)
  %37 = call i32 @rgblight_effect_knight(i32 50)
  ret void
}

declare dso_local i32 @ergodox_led_all_on(...) #1

declare dso_local i32 @rgblight_init(...) #1

declare dso_local i32 @rgblight_enable(...) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

declare dso_local i32 @ergodox_led_all_set(i32) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @ergodox_led_all_off(...) #1

declare dso_local i32 @rgblight_effect_knight(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
