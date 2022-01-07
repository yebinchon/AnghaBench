; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bigswitch/keymaps/333fred/extr_keymap.c_dance_cycle.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bigswitch/keymaps/333fred/extr_keymap.c_dance_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tap_dance_active = common dso_local global i64 0, align 8
@timer = common dso_local global i32 0, align 4
@tap_dance_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dance_cycle(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @tap_dance_active, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load i32, i32* @timer, align 4
  %7 = call i32 @timer_elapsed(i32 %6)
  %8 = icmp sgt i32 %7, 100
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9, %5
  %13 = load i32, i32* @tap_dance_state, align 4
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 130, label %16
    i32 128, label %18
  ]

14:                                               ; preds = %12
  %15 = call i32 (...) @rgblight_increase_hue_noeeprom()
  br label %21

16:                                               ; preds = %12
  %17 = call i32 (...) @rgblight_step_noeeprom()
  br label %21

18:                                               ; preds = %12
  %19 = call i32 (...) @rgblight_toggle_noeeprom()
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18, %16, %14
  %22 = call i32 (...) @timer_read()
  store i32 %22, i32* @timer, align 4
  br label %23

23:                                               ; preds = %21, %9
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @rgblight_increase_hue_noeeprom(...) #1

declare dso_local i32 @rgblight_step_noeeprom(...) #1

declare dso_local i32 @rgblight_toggle_noeeprom(...) #1

declare dso_local i32 @timer_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
