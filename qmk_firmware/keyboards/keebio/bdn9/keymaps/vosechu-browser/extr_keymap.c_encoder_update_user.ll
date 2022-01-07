; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bdn9/keymaps/vosechu-browser/extr_keymap.c_encoder_update_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/keebio/bdn9/keymaps/vosechu-browser/extr_keymap.c_encoder_update_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_RBRC = common dso_local global i32 0, align 4
@KC_LBRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update_user(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, i32* @KC_RBRC, align 4
  %12 = call i32 @LGUI(i32 %11)
  %13 = call i32 @LSFT(i32 %12)
  %14 = call i32 @tap_code16(i32 %13)
  br label %20

15:                                               ; preds = %7
  %16 = load i32, i32* @KC_LBRC, align 4
  %17 = call i32 @LGUI(i32 %16)
  %18 = call i32 @LSFT(i32 %17)
  %19 = call i32 @tap_code16(i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  br label %37

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @KC_RBRC, align 4
  %29 = call i32 @LGUI(i32 %28)
  %30 = call i32 @tap_code16(i32 %29)
  br label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @KC_LBRC, align 4
  %33 = call i32 @LGUI(i32 %32)
  %34 = call i32 @tap_code16(i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %20
  ret void
}

declare dso_local i32 @tap_code16(i32) #1

declare dso_local i32 @LSFT(i32) #1

declare dso_local i32 @LGUI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
