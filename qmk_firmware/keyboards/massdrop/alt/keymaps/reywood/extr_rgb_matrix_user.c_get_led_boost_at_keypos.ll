; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_rgb_matrix_user.c_get_led_boost_at_keypos.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/massdrop/alt/keymaps/reywood/extr_rgb_matrix_user.c_get_led_boost_at_keypos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@MATRIX_COLS = common dso_local global i64 0, align 8
@KEY_TO_LED_MAP = common dso_local global i64** null, align 8
@led_boosts = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @get_led_boost_at_keypos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_led_boost_at_keypos(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @MATRIX_ROWS, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MATRIX_COLS, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %13, %9, %2
  store i64 0, i64* %3, align 8
  br label %37

21:                                               ; preds = %16
  %22 = load i64**, i64*** @KEY_TO_LED_MAP, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i64*, i64** %22, i64 %23
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i64 0, i64* %3, align 8
  br label %37

32:                                               ; preds = %21
  %33 = load i64*, i64** @led_boosts, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %32, %31, %20
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
