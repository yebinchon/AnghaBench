; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/split_common/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/split_common/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isLeftHand = common dso_local global i64 0, align 8
@ROWS_PER_HAND = common dso_local global i64 0, align 8
@thisHand = common dso_local global i64 0, align 8
@thatHand = common dso_local global i64 0, align 8
@MATRIX_ROWS = common dso_local global i32 0, align 4
@matrix = common dso_local global i64* null, align 8
@DIRECT_PINS_RIGHT = common dso_local global i32** null, align 8
@MATRIX_COLS = common dso_local global i32 0, align 4
@MATRIX_COL_PINS_RIGHT = common dso_local global i32* null, align 8
@MATRIX_ROW_PINS_RIGHT = common dso_local global i32* null, align 8
@col_pins = common dso_local global i32* null, align 8
@direct_pins = common dso_local global i32** null, align 8
@row_pins = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @keyboard_split_setup()
  %3 = load i64, i64* @isLeftHand, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i64, i64* @isLeftHand, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %12

10:                                               ; preds = %6
  %11 = load i64, i64* @ROWS_PER_HAND, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i64 [ 0, %9 ], [ %11, %10 ]
  store i64 %13, i64* @thisHand, align 8
  %14 = load i64, i64* @ROWS_PER_HAND, align 8
  %15 = load i64, i64* @thisHand, align 8
  %16 = sub nsw i64 %14, %15
  store i64 %16, i64* @thatHand, align 8
  %17 = call i32 (...) @init_pins()
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %27, %12
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @MATRIX_ROWS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i64*, i64** @matrix, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %18

30:                                               ; preds = %18
  %31 = load i64, i64* @ROWS_PER_HAND, align 8
  %32 = call i32 @debounce_init(i64 %31)
  %33 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @keyboard_split_setup(...) #1

declare dso_local i32 @init_pins(...) #1

declare dso_local i32 @debounce_init(i64) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
