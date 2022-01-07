; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/dactyl_manuform/dmote/62key/keymaps/default/extr_keymap.c_modal_leds.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/dactyl_manuform/dmote/62key/keymaps/default/extr_keymap.c_modal_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_COLEMAK = common dso_local global i32 0, align 4
@_NUMERIC = common dso_local global i32 0, align 4
@MOD_MASK_SHIFT = common dso_local global i32 0, align 4
@MOD_MASK_ALT = common dso_local global i32 0, align 4
@MOD_MASK_CTRL = common dso_local global i32 0, align 4
@_leds_dirty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modal_leds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @get_mods()
  store i32 %5, i32* %1, align 4
  store i32 355, i32* %2, align 4
  store i32 255, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @_COLEMAK, align 4
  %7 = call i64 @layer_state_is(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = sub nsw i32 %10, 50
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 20
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 20
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %9, %0
  %17 = load i32, i32* @_NUMERIC, align 4
  %18 = call i64 @layer_state_is(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 30
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @MOD_MASK_SHIFT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 20
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @MOD_MASK_ALT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = sub nsw i32 %39, 100
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 20
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 30
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @MOD_MASK_CTRL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %2, align 4
  %52 = sub nsw i32 %51, 200
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %3, align 4
  %54 = sub nsw i32 %53, 20
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 30
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @rgblight_sethsv_eeprom_helper(i32 %58, i32 %59, i32 %60, i32 0)
  store i32 0, i32* @_leds_dirty, align 4
  ret void
}

declare dso_local i32 @get_mods(...) #1

declare dso_local i64 @layer_state_is(i32) #1

declare dso_local i32 @rgblight_sethsv_eeprom_helper(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
