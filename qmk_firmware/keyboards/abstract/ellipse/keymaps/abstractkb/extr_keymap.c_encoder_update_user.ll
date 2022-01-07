; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/abstract/ellipse/keymaps/abstractkb/extr_keymap.c_encoder_update_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/abstract/ellipse/keymaps/abstractkb/extr_keymap.c_encoder_update_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_VOLU = common dso_local global i32 0, align 4
@KC_VOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update_user(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @KC_VOLU, align 4
  %12 = call i32 @tap_code(i32 %11)
  br label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @KC_VOLD, align 4
  %15 = call i32 @tap_code(i32 %14)
  br label %16

16:                                               ; preds = %13, %10
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @rgblight_increase_hue_noeeprom()
  br label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @rgblight_decrease_hue_noeeprom()
  br label %27

27:                                               ; preds = %25, %23
  br label %40

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @backlight_increase()
  br label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @backlight_decrease()
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39, %27
  br label %41

41:                                               ; preds = %40, %16
  ret void
}

declare dso_local i32 @tap_code(i32) #1

declare dso_local i32 @rgblight_increase_hue_noeeprom(...) #1

declare dso_local i32 @rgblight_decrease_hue_noeeprom(...) #1

declare dso_local i32 @backlight_increase(...) #1

declare dso_local i32 @backlight_decrease(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
