; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bpruitt-goddard/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/bpruitt-goddard/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_layer_state = common dso_local global i32 0, align 4
@is_macro1_recording = common dso_local global i64 0, align 8
@NUM = common dso_local global i32 0, align 4
@MAC = common dso_local global i32 0, align 4
@QWERTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* @current_layer_state, align 4
  %5 = load i64, i64* @is_macro1_recording, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = call i32 (...) @led_1_on()
  %9 = call i32 (...) @led_2_on()
  %10 = call i32 (...) @led_3_on()
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load i32, i32* @NUM, align 4
  %14 = call i64 @LAYER_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (...) @led_1_on()
  br label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @led_1_off()
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* @MAC, align 4
  %22 = call i64 @LAYER_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @led_2_on()
  br label %28

26:                                               ; preds = %20
  %27 = call i32 (...) @led_2_off()
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* @QWERTY, align 4
  %30 = call i64 @LAYER_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @led_3_on()
  br label %36

34:                                               ; preds = %28
  %35 = call i32 (...) @led_3_off()
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @led_1_on(...) #1

declare dso_local i32 @led_2_on(...) #1

declare dso_local i32 @led_3_on(...) #1

declare dso_local i64 @LAYER_ON(i32) #1

declare dso_local i32 @led_1_off(...) #1

declare dso_local i32 @led_2_off(...) #1

declare dso_local i32 @led_3_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
