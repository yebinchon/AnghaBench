; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/nick/extr_keymap.c_encoder_update.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/nick/extr_keymap.c_encoder_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RAISE = common dso_local global i32 0, align 4
@KC_MS_WH_DOWN = common dso_local global i32 0, align 4
@KC_MS_WH_UP = common dso_local global i32 0, align 4
@KC_VOLU = common dso_local global i32 0, align 4
@KC_VOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i32, i32* @_RAISE, align 4
  %7 = call i64 @IS_LAYER_ON(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* @KC_MS_WH_DOWN, align 4
  %11 = call i32 @tap_code(i32 %10)
  br label %45

12:                                               ; preds = %5, %1
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @_RAISE, align 4
  %17 = call i64 @IS_LAYER_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @KC_MS_WH_UP, align 4
  %21 = call i32 @tap_code(i32 %20)
  br label %44

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* @_RAISE, align 4
  %27 = call i64 @IS_LAYER_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @KC_VOLU, align 4
  %31 = call i32 @tap_code(i32 %30)
  br label %43

32:                                               ; preds = %25, %22
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @_RAISE, align 4
  %37 = call i64 @IS_LAYER_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @KC_VOLD, align 4
  %41 = call i32 @tap_code(i32 %40)
  br label %42

42:                                               ; preds = %39, %35, %32
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %44, %9
  ret void
}

declare dso_local i64 @IS_LAYER_ON(i32) #1

declare dso_local i32 @tap_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
