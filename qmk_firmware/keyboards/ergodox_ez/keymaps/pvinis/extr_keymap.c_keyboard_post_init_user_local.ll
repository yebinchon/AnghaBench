; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/pvinis/extr_keymap.c_keyboard_post_init_user_local.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/pvinis/extr_keymap.c_keyboard_post_init_user_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LED_BRIGHTNESS_HI = common dso_local global i32 0, align 4
@LED_BRIGHTNESS_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keyboard_post_init_user_local() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @ergodox_led_all_on()
  %4 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %13, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @LED_BRIGHTNESS_LO, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @ergodox_led_all_set(i32 %10)
  %12 = call i32 @wait_ms(i32 5)
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %1, align 4
  br label %5

16:                                               ; preds = %5
  %17 = call i32 @wait_ms(i32 1000)
  %18 = load i32, i32* @LED_BRIGHTNESS_LO, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %26, %16
  %20 = load i32, i32* %2, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @ergodox_led_all_set(i32 %23)
  %25 = call i32 @wait_ms(i32 10)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %2, align 4
  br label %19

29:                                               ; preds = %19
  %30 = call i32 (...) @ergodox_led_all_off()
  %31 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  %32 = call i32 @ergodox_led_all_set(i32 %31)
  ret void
}

declare dso_local i32 @ergodox_led_all_on(...) #1

declare dso_local i32 @ergodox_led_all_set(i32) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @ergodox_led_all_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
