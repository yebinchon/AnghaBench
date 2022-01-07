; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/bepo_csa/extr_keymap.c_hextokeycode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/bepo_csa/extr_keymap.c_hextokeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_P0 = common dso_local global i64 0, align 8
@KC_P1 = common dso_local global i64 0, align 8
@KC_A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hextokeycode(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i64, i64* @KC_P0, align 8
  store i64 %7, i64* %2, align 8
  br label %23

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i64, i64* @KC_P1, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  store i64 %16, i64* %2, align 8
  br label %23

17:                                               ; preds = %8
  %18 = load i64, i64* @KC_A, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 10
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %17, %11, %6
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
