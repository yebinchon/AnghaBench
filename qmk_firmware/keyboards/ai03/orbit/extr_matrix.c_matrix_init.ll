; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_enable = common dso_local global i32 0, align 4
@debug_matrix = common dso_local global i32 0, align 4
@debug_mouse = common dso_local global i32 0, align 4
@isLeftHand = common dso_local global i64 0, align 8
@ROWS_PER_HAND = common dso_local global i64 0, align 8
@thisHand = common dso_local global i64 0, align 8
@thatHand = common dso_local global i64 0, align 8
@MATRIX_ROWS = common dso_local global i32 0, align 4
@matrix = common dso_local global i64* null, align 8
@MATRIX_COLS = common dso_local global i32 0, align 4
@MATRIX_COL_PINS_RIGHT = common dso_local global i32* null, align 8
@MATRIX_ROW_PINS_RIGHT = common dso_local global i32* null, align 8
@col_pins = common dso_local global i32* null, align 8
@row_pins = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* @debug_enable, align 4
  store i32 1, i32* @debug_matrix, align 4
  store i32 1, i32* @debug_mouse, align 4
  %2 = load i64, i64* @isLeftHand, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i64, i64* @isLeftHand, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %11

9:                                                ; preds = %5
  %10 = load i64, i64* @ROWS_PER_HAND, align 8
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i64 [ 0, %8 ], [ %10, %9 ]
  store i64 %12, i64* @thisHand, align 8
  %13 = load i64, i64* @ROWS_PER_HAND, align 8
  %14 = load i64, i64* @thisHand, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* @thatHand, align 8
  %16 = call i32 (...) @init_pins()
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %26, %11
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @MATRIX_ROWS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i64*, i64** @matrix, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %17

29:                                               ; preds = %17
  %30 = load i64, i64* @ROWS_PER_HAND, align 8
  %31 = call i32 @debounce_init(i64 %30)
  %32 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @init_pins(...) #1

declare dso_local i32 @debounce_init(i64) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
