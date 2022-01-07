; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/froggy/extr_keymap.c_register_delay_code.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/froggy/extr_keymap.c_register_delay_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@delay_key_stat = common dso_local global i32 0, align 4
@keymaps = common dso_local global i32*** null, align 8
@delay_mat_row = common dso_local global i64 0, align 8
@delay_mat_col = common dso_local global i64 0, align 8
@QK_LSFT = common dso_local global i32 0, align 4
@KC_LSFT = common dso_local global i32 0, align 4
@QK_LCTL = common dso_local global i32 0, align 4
@KC_LCTL = common dso_local global i32 0, align 4
@QK_LALT = common dso_local global i32 0, align 4
@KC_LALT = common dso_local global i32 0, align 4
@QK_LGUI = common dso_local global i32 0, align 4
@KC_LGUI = common dso_local global i32 0, align 4
@delay_registered_code = common dso_local global i32 0, align 4
@tapping_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_delay_code(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @delay_key_stat, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %53

6:                                                ; preds = %1
  %7 = call i32 (...) @unregister_delay_code()
  %8 = load i32***, i32**** @keymaps, align 8
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds i32**, i32*** %8, i64 %9
  %11 = load i32**, i32*** %10, align 8
  %12 = load i64, i64* @delay_mat_row, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @delay_mat_col, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @pgm_read_word(i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @QK_LSFT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @KC_LSFT, align 4
  %24 = call i32 @register_code(i32 %23)
  br label %25

25:                                               ; preds = %22, %6
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @QK_LCTL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @KC_LCTL, align 4
  %32 = call i32 @register_code(i32 %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @QK_LALT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @KC_LALT, align 4
  %40 = call i32 @register_code(i32 %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @QK_LGUI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @KC_LGUI, align 4
  %48 = call i32 @register_code(i32 %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @register_code(i32 %50)
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* @delay_registered_code, align 4
  store i32 0, i32* @delay_key_stat, align 4
  store i32 1, i32* @tapping_key, align 4
  br label %53

53:                                               ; preds = %49, %1
  ret void
}

declare dso_local i32 @unregister_delay_code(...) #1

declare dso_local i32 @pgm_read_word(i32*) #1

declare dso_local i32 @register_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
