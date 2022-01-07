; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/odyssey/extr_keymap.c_update_led_state_c.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/odyssey/extr_keymap.c_update_led_state_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rgb = common dso_local global i64 0, align 8
@td_state = common dso_local global i64 0, align 8
@SINGLE_HOLD = common dso_local global i64 0, align 8
@HSV_BLUE = common dso_local global i32 0, align 4
@l_state = common dso_local global i64 0, align 8
@S_ENGLISH = common dso_local global i64 0, align 8
@HSV_RED = common dso_local global i32 0, align 4
@S_QRUSSIAN = common dso_local global i64 0, align 8
@HSV_GREEN = common dso_local global i32 0, align 4
@S_COLEMAK = common dso_local global i64 0, align 8
@HSV_YELLOW = common dso_local global i32 0, align 4
@S_CRUSSIAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_led_state_c() #0 {
  %1 = load i64, i64* @rgb, align 8
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %39

4:                                                ; preds = %0
  %5 = load i64, i64* @td_state, align 8
  %6 = load i64, i64* @SINGLE_HOLD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, i32* @HSV_BLUE, align 4
  %10 = call i32 (i32, ...) @set_colors(i32 %9)
  br label %39

11:                                               ; preds = %4
  %12 = load i64, i64* @l_state, align 8
  %13 = load i64, i64* @S_ENGLISH, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @HSV_RED, align 4
  %17 = call i32 (i32, ...) @set_colors(i32 %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i64, i64* @l_state, align 8
  %20 = load i64, i64* @S_QRUSSIAN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @HSV_GREEN, align 4
  %24 = call i32 (i32, ...) @set_colors(i32 %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i64, i64* @l_state, align 8
  %27 = load i64, i64* @S_COLEMAK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @HSV_YELLOW, align 4
  %31 = call i32 (i32, ...) @set_colors(i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i64, i64* @l_state, align 8
  %34 = load i64, i64* @S_CRUSSIAN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (i32, ...) @set_colors(i32 85, i32 100, i32 100)
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %3, %38, %8
  ret void
}

declare dso_local i32 @set_colors(i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
