; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_matrix_init_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/algernon/extr_keymap.c_matrix_init_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UC_LNX = common dso_local global i32 0, align 4
@LED_BRIGHTNESS_HI = common dso_local global i32 0, align 4
@LED_BRIGHTNESS_LO = common dso_local global i32 0, align 4
@ADORE = common dso_local global i64 0, align 8
@is_adore = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_user() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @UC_LNX, align 4
  %5 = call i32 @set_unicode_input_mode(i32 %4)
  %6 = call i32 (...) @ergodox_led_all_on()
  %7 = load i32, i32* @LED_BRIGHTNESS_HI, align 4
  store i32 %7, i32* %2, align 4
  br label %8

8:                                                ; preds = %16, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @LED_BRIGHTNESS_LO, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @ergodox_led_all_set(i32 %13)
  %15 = call i32 @wait_ms(i32 5)
  br label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %2, align 4
  br label %8

19:                                               ; preds = %8
  %20 = call i32 @wait_ms(i32 1000)
  %21 = load i32, i32* @LED_BRIGHTNESS_LO, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %29, %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ergodox_led_all_set(i32 %26)
  %28 = call i32 @wait_ms(i32 10)
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %3, align 4
  br label %22

32:                                               ; preds = %22
  %33 = call i32 (...) @ergodox_led_all_off()
  %34 = call i32 (...) @eeconfig_is_enabled()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 (...) @eeconfig_init()
  br label %38

38:                                               ; preds = %36, %32
  %39 = call i64 (...) @eeconfig_read_default_layer()
  store i64 %39, i64* %1, align 8
  %40 = load i64, i64* %1, align 8
  %41 = load i64, i64* @ADORE, align 8
  %42 = shl i64 1, %41
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* @is_adore, align 4
  br label %45

45:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @set_unicode_input_mode(i32) #1

declare dso_local i32 @ergodox_led_all_on(...) #1

declare dso_local i32 @ergodox_led_all_set(i32) #1

declare dso_local i32 @wait_ms(i32) #1

declare dso_local i32 @ergodox_led_all_off(...) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i64 @eeconfig_read_default_layer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
