; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/colemak_es_osx/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/colemak_es_osx/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_layer_state = common dso_local global i32 0, align 4
@QWERTY = common dso_local global i32 0, align 4
@FN = common dso_local global i32 0, align 4
@NUM = common dso_local global i32 0, align 4
@MOUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = call i32 (...) @ergodox_board_led_off()
  %2 = call i32 (...) @led_1_off()
  %3 = call i32 (...) @led_2_off()
  %4 = call i32 (...) @led_3_off()
  %5 = load i32, i32* @default_layer_state, align 4
  %6 = load i32, i32* @QWERTY, align 4
  %7 = call i64 @layer_state_cmp(i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @led_3_on()
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* @default_layer_state, align 4
  %13 = load i32, i32* @FN, align 4
  %14 = call i64 @layer_state_cmp(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @led_2_on()
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* @default_layer_state, align 4
  %20 = load i32, i32* @NUM, align 4
  %21 = call i64 @layer_state_cmp(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 (...) @led_2_on()
  %25 = call i32 (...) @led_3_on()
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @default_layer_state, align 4
  %28 = load i32, i32* @MOUSE, align 4
  %29 = call i64 @layer_state_cmp(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @led_1_on()
  br label %33

33:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @ergodox_board_led_off(...) #1

declare dso_local i32 @led_1_off(...) #1

declare dso_local i32 @led_2_off(...) #1

declare dso_local i32 @led_3_off(...) #1

declare dso_local i64 @layer_state_cmp(i32, i32) #1

declare dso_local i32 @led_3_on(...) #1

declare dso_local i32 @led_2_on(...) #1

declare dso_local i32 @led_1_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
