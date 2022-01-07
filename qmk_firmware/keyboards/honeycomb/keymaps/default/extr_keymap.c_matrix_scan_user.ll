; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/honeycomb/keymaps/default/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/honeycomb/keymaps/default/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encoderValue = common dso_local global i64 0, align 8
@KC_VOLD = common dso_local global i32 0, align 4
@KC_VOLU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i64, i64* @encoderValue, align 8
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load i32, i32* @KC_VOLD, align 4
  %6 = call i32 @tap_code(i32 %5)
  %7 = load i64, i64* @encoderValue, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* @encoderValue, align 8
  br label %1

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %13, %9
  %11 = load i64, i64* @encoderValue, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @KC_VOLU, align 4
  %15 = call i32 @tap_code(i32 %14)
  %16 = load i64, i64* @encoderValue, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* @encoderValue, align 8
  br label %10

18:                                               ; preds = %10
  ret void
}

declare dso_local i32 @tap_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
