; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/tanuki/keymaps/default/extr_keymap.c_layer_state_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/tanuki/keymaps/default/extr_keymap.c_layer_state_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@user_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @user_config, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @biton32(i32 %6)
  switch i32 %7, label %20 [
    i32 131, label %8
    i32 130, label %11
    i32 128, label %14
    i32 129, label %17
  ]

8:                                                ; preds = %5
  %9 = call i32 @rgblight_sethsv_noeeprom(i32 0, i32 10, i32 255)
  %10 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %20

11:                                               ; preds = %5
  %12 = call i32 @rgblight_sethsv_noeeprom(i32 130, i32 200, i32 255)
  %13 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %20

14:                                               ; preds = %5
  %15 = call i32 @rgblight_sethsv_noeeprom(i32 170, i32 200, i32 255)
  %16 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %20

17:                                               ; preds = %5
  %18 = call i32 @rgblight_sethsv_noeeprom(i32 0, i32 180, i32 255)
  %19 = call i32 @rgblight_mode_noeeprom(i32 1)
  br label %20

20:                                               ; preds = %5, %17, %14, %11, %8
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @rgblight_sethsv_noeeprom(i32, i32, i32) #1

declare dso_local i32 @rgblight_mode_noeeprom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
