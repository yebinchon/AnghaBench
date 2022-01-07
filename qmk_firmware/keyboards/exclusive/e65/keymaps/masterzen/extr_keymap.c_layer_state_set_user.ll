; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/exclusive/e65/keymaps/masterzen/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/exclusive/e65/keymaps/masterzen/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@BASE = common dso_local global i64 0, align 8
@edit = common dso_local global i32 0, align 4
@temp_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @layer_state_set_user(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @BASE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* @edit, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = call i32 (...) @rgblight_get_hue()
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @temp_config, i32 0, i32 2), align 4
  %11 = call i32 (...) @rgblight_get_sat()
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @temp_config, i32 0, i32 1), align 4
  %12 = call i32 (...) @rgblight_get_val()
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @temp_config, i32 0, i32 0), align 4
  store i32 0, i32* @edit, align 4
  br label %13

13:                                               ; preds = %9, %6, %1
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @biton32(i64 %14)
  switch i32 %15, label %20 [
    i32 128, label %16
  ]

16:                                               ; preds = %13
  %17 = call i32 (...) @rgblight_get_mode()
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @temp_config, i32 0, i32 3), align 4
  %18 = call i32 @rgblight_mode_noeeprom(i32 1)
  %19 = call i32 @rgblight_setrgb(i32 211, i32 127, i32 237)
  store i32 1, i32* @edit, align 4
  br label %27

20:                                               ; preds = %13
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @temp_config, i32 0, i32 3), align 4
  %22 = call i32 @rgblight_mode(i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @temp_config, i32 0, i32 2), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @temp_config, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @temp_config, i32 0, i32 0), align 4
  %26 = call i32 @rgblight_sethsv(i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

declare dso_local i32 @rgblight_get_hue(...) #1

declare dso_local i32 @rgblight_get_sat(...) #1

declare dso_local i32 @rgblight_get_val(...) #1

declare dso_local i32 @biton32(i64) #1

declare dso_local i32 @rgblight_get_mode(...) #1

declare dso_local i32 @rgblight_mode_noeeprom(i32) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @rgblight_sethsv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
