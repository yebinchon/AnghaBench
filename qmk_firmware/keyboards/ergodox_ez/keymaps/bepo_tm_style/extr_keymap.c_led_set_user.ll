; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bepo_tm_style/extr_keymap.c_led_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bepo_tm_style/extr_keymap.c_led_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sys_led_state = common dso_local global i32 0, align 4
@SYSLEDS = common dso_local global i32 0, align 4
@sys_led_mask_caps_lock = common dso_local global i32 0, align 4
@sys_led_mask_num_lock = common dso_local global i32 0, align 4
@sys_led_mask_scroll_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @sys_led_state, align 4
  %4 = load i32, i32* @SYSLEDS, align 4
  %5 = call i64 @LAYER_ON(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load i32, i32* @sys_led_state, align 4
  %9 = load i32, i32* @sys_led_mask_caps_lock, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 (...) @led_1_on()
  br label %16

14:                                               ; preds = %7
  %15 = call i32 (...) @led_1_off()
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* @sys_led_state, align 4
  %18 = load i32, i32* @sys_led_mask_num_lock, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @led_2_on()
  br label %25

23:                                               ; preds = %16
  %24 = call i32 (...) @led_2_off()
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* @sys_led_state, align 4
  %27 = load i32, i32* @sys_led_mask_scroll_lock, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (...) @led_3_on()
  br label %34

32:                                               ; preds = %25
  %33 = call i32 (...) @led_3_off()
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

declare dso_local i64 @LAYER_ON(i32) #1

declare dso_local i32 @led_1_on(...) #1

declare dso_local i32 @led_1_off(...) #1

declare dso_local i32 @led_2_on(...) #1

declare dso_local i32 @led_2_off(...) #1

declare dso_local i32 @led_3_on(...) #1

declare dso_local i32 @led_3_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
