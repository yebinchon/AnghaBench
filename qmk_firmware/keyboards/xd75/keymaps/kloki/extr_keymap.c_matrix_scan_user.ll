; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/kloki/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/kloki/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@SHIFTDOWN = common dso_local global i64 0, align 8
@CTRLDOWN = common dso_local global i64 0, align 8
@WINDOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @layer_state, align 4
  %3 = call i32 @biton32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  switch i32 %4, label %15 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 4, label %13
  ]

5:                                                ; preds = %0
  %6 = call i32 @rgblight_setrgb(i32 0, i32 240, i32 255)
  br label %16

7:                                                ; preds = %0
  %8 = call i32 @rgblight_setrgb(i32 0, i32 255, i32 100)
  br label %16

9:                                                ; preds = %0
  %10 = call i32 @rgblight_setrgb(i32 10, i32 255, i32 0)
  br label %16

11:                                               ; preds = %0
  %12 = call i32 @rgblight_setrgb(i32 255, i32 0, i32 85)
  br label %16

13:                                               ; preds = %0
  %14 = call i32 @rgblight_setrgb(i32 240, i32 255, i32 0)
  br label %16

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %15, %13, %11, %9, %7, %5
  %17 = load i64, i64* @SHIFTDOWN, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @rgblight_setrgb(i32 255, i32 255, i32 255)
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i64, i64* @CTRLDOWN, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @rgblight_setrgb(i32 240, i32 255, i32 0)
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i64, i64* @WINDOWN, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @rgblight_setrgb(i32 255, i32 255, i32 255)
  br label %31

31:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
