; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bepo_tm_style/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bepo_tm_style/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_layer_state = common dso_local global i32 0, align 4
@SWAP = common dso_local global i32 0, align 4
@swap_hands = common dso_local global i64 0, align 8
@is_macro1_recording = common dso_local global i64 0, align 8
@SYSLEDS = common dso_local global i32 0, align 4
@sys_led_state = common dso_local global i32 0, align 4
@FN = common dso_local global i32 0, align 4
@NUMS = common dso_local global i32 0, align 4
@MOUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* @current_layer_state, align 4
  %5 = load i32, i32* @SWAP, align 4
  %6 = call i64 @LAYER_ON(i32 %5)
  store i64 %6, i64* @swap_hands, align 8
  %7 = load i64, i64* @is_macro1_recording, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call i32 (...) @led_1_on()
  %11 = call i32 (...) @led_2_on()
  %12 = call i32 (...) @led_3_on()
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load i32, i32* @SYSLEDS, align 4
  %16 = call i64 @LAYER_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @sys_led_state, align 4
  %20 = call i32 @led_set_user(i32 %19)
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %14
  %23 = load i32, i32* @FN, align 4
  %24 = call i64 @LAYER_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @led_1_on()
  br label %30

28:                                               ; preds = %22
  %29 = call i32 (...) @led_1_off()
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* @NUMS, align 4
  %32 = call i64 @LAYER_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @led_2_on()
  br label %38

36:                                               ; preds = %30
  %37 = call i32 (...) @led_2_off()
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* @MOUSE, align 4
  %40 = call i64 @LAYER_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (...) @led_3_on()
  br label %46

44:                                               ; preds = %38
  %45 = call i32 (...) @led_3_off()
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %18, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @LAYER_ON(i32) #1

declare dso_local i32 @led_1_on(...) #1

declare dso_local i32 @led_2_on(...) #1

declare dso_local i32 @led_3_on(...) #1

declare dso_local i32 @led_set_user(i32) #1

declare dso_local i32 @led_1_off(...) #1

declare dso_local i32 @led_2_off(...) #1

declare dso_local i32 @led_3_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
