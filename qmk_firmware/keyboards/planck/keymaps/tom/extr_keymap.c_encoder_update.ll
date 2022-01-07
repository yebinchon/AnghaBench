; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/tom/extr_keymap.c_encoder_update.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/tom/extr_keymap.c_encoder_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@muse_mode = common dso_local global i64 0, align 8
@_RAISE = common dso_local global i32 0, align 4
@muse_offset = common dso_local global i32 0, align 4
@muse_tempo = common dso_local global i32 0, align 4
@KC_PGDN = common dso_local global i32 0, align 4
@KC_PGUP = common dso_local global i32 0, align 4
@KC_MS_WH_DOWN = common dso_local global i32 0, align 4
@KC_MS_WH_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @muse_mode, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load i32, i32* @_RAISE, align 4
  %7 = call i64 @IS_LAYER_ON(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* @muse_offset, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @muse_offset, align 4
  br label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @muse_offset, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @muse_offset, align 4
  br label %18

18:                                               ; preds = %15, %12
  br label %29

19:                                               ; preds = %5
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @muse_tempo, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @muse_tempo, align 4
  br label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @muse_tempo, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* @muse_tempo, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %18
  br label %40

30:                                               ; preds = %1
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @KC_PGDN, align 4
  %35 = call i32 @tap_code(i32 %34)
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @KC_PGUP, align 4
  %38 = call i32 @tap_code(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %29
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
