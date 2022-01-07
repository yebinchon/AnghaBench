; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/froggy/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/froggy/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@delay_key_stat = common dso_local global i64 0, align 8
@key_timer = common dso_local global i32 0, align 4
@DELAY_TIME = common dso_local global i64 0, align 8
@_BASE = common dso_local global i32 0, align 4
@delay_key_pressed = common dso_local global i32 0, align 4
@layer_state_old = common dso_local global i32 0, align 4
@layer_state = common dso_local global i32 0, align 4
@_OPT = common dso_local global i32 0, align 4
@_NUM = common dso_local global i32 0, align 4
@_SYM = common dso_local global i32 0, align 4
@_FUNC = common dso_local global i32 0, align 4
@RGBAnimation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = load i64, i64* @delay_key_stat, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i32, i32* @key_timer, align 4
  %5 = call i64 @timer_elapsed(i32 %4)
  %6 = load i64, i64* @DELAY_TIME, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = load i32, i32* @_BASE, align 4
  %10 = call i32 @register_delay_code(i32 %9)
  %11 = load i32, i32* @delay_key_pressed, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 (...) @unregister_delay_code()
  br label %15

15:                                               ; preds = %13, %8
  br label %16

16:                                               ; preds = %15, %3, %0
  %17 = load i32, i32* @layer_state_old, align 4
  %18 = load i32, i32* @layer_state, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32, i32* @layer_state, align 4
  switch i32 %21, label %35 [
    i32 132, label %22
    i32 129, label %23
    i32 130, label %26
    i32 128, label %29
    i32 131, label %32
  ]

22:                                               ; preds = %20
  br label %35

23:                                               ; preds = %20
  %24 = load i32, i32* @_OPT, align 4
  %25 = call i32 @register_delay_code(i32 %24)
  br label %35

26:                                               ; preds = %20
  %27 = load i32, i32* @_NUM, align 4
  %28 = call i32 @register_delay_code(i32 %27)
  br label %35

29:                                               ; preds = %20
  %30 = load i32, i32* @_SYM, align 4
  %31 = call i32 @register_delay_code(i32 %30)
  br label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @_FUNC, align 4
  %34 = call i32 @register_delay_code(i32 %33)
  br label %35

35:                                               ; preds = %20, %32, %29, %26, %23, %22
  %36 = load i32, i32* @layer_state, align 4
  store i32 %36, i32* @layer_state_old, align 4
  br label %37

37:                                               ; preds = %35, %16
  ret void
}

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @register_delay_code(i32) #1

declare dso_local i32 @unregister_delay_code(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
