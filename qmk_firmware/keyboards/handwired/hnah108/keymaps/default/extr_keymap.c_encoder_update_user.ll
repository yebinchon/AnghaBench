; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/hnah108/keymaps/default/extr_keymap.c_encoder_update_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/hnah108/keymaps/default/extr_keymap.c_encoder_update_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_FN = common dso_local global i32 0, align 4
@KC_BRIU = common dso_local global i32 0, align 4
@KC_BRID = common dso_local global i32 0, align 4
@KC_VOLU = common dso_local global i32 0, align 4
@KC_VOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update_user(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = load i32, i32* @_FN, align 4
  %9 = call i64 @IS_LAYER_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @KC_BRIU, align 4
  %16 = call i32 @tap_code(i32 %15)
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @KC_BRID, align 4
  %19 = call i32 @tap_code(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  br label %31

21:                                               ; preds = %7
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @KC_VOLU, align 4
  %26 = call i32 @tap_code(i32 %25)
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @KC_VOLD, align 4
  %29 = call i32 @tap_code(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %20
  br label %32

32:                                               ; preds = %31, %2
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
