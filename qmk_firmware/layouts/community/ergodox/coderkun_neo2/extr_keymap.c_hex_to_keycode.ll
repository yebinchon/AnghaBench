; ModuleID = '/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/coderkun_neo2/extr_keymap.c_hex_to_keycode.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/layouts/community/ergodox/coderkun_neo2/extr_keymap.c_hex_to_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KC_0 = common dso_local global i32 0, align 4
@NEO_A = common dso_local global i32 0, align 4
@NEO_B = common dso_local global i32 0, align 4
@NEO_C = common dso_local global i32 0, align 4
@NEO_D = common dso_local global i32 0, align 4
@NEO_E = common dso_local global i32 0, align 4
@NEO_F = common dso_local global i32 0, align 4
@KC_NO = common dso_local global i32 0, align 4
@KC_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hex_to_keycode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @KC_0, align 4
  store i32 %7, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 10
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %25 [
    i32 10, label %13
    i32 11, label %15
    i32 12, label %17
    i32 13, label %19
    i32 14, label %21
    i32 15, label %23
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @NEO_A, align 4
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %11
  %16 = load i32, i32* @NEO_B, align 4
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %11
  %18 = load i32, i32* @NEO_C, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %11
  %20 = load i32, i32* @NEO_D, align 4
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %11
  %22 = load i32, i32* @NEO_E, align 4
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %11
  %24 = load i32, i32* @NEO_F, align 4
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %11
  %26 = load i32, i32* @KC_NO, align 4
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @KC_1, align 4
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, 1
  %32 = add nsw i32 %29, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %25, %23, %21, %19, %17, %15, %13, %6
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
