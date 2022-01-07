; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/issmirnov/extr_rgb.c_set_rgb_indicators.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/levinson/keymaps/issmirnov/extr_rgb.c_set_rgb_indicators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@_QWERTY = common dso_local global i64 0, align 8
@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@SHFT_LED1 = common dso_local global i32 0, align 4
@RGB_CLEAR = common dso_local global i32 0, align 4
@MOD_MASK_GUI = common dso_local global i32 0, align 4
@GUI_LED1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_rgb_indicators(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @layer_state, align 4
  %6 = call i64 @biton32(i32 %5)
  %7 = load i64, i64* @_QWERTY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @SHFT_LED1, align 4
  %18 = call i32 @rgblight_setrgb_gold_at(i32 %17)
  br label %23

19:                                               ; preds = %9
  %20 = load i32, i32* @RGB_CLEAR, align 4
  %21 = load i32, i32* @SHFT_LED1, align 4
  %22 = call i32 @rgblight_setrgb_at(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MOD_MASK_GUI, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @GUI_LED1, align 4
  %32 = call i32 @rgblight_setrgb_purple_at(i32 %31)
  br label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @RGB_CLEAR, align 4
  %35 = load i32, i32* @GUI_LED1, align 4
  %36 = call i32 @rgblight_setrgb_at(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local i64 @biton32(i32) #1

declare dso_local i32 @rgblight_setrgb_gold_at(i32) #1

declare dso_local i32 @rgblight_setrgb_at(i32, i32) #1

declare dso_local i32 @rgblight_setrgb_purple_at(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
