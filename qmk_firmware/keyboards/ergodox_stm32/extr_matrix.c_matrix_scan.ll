; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_stm32/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_stm32/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23017_status = common dso_local global i64 0, align 8
@mcp23017_reset_loop = common dso_local global i64 0, align 8
@MATRIX_ROWS_PER_SIDE = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @mcp23017_status, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i64, i64* @mcp23017_reset_loop, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* @mcp23017_reset_loop, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = call i64 (...) @init_mcp23017()
  store i64 %9, i64* @mcp23017_status, align 8
  %10 = load i64, i64* @mcp23017_status, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 (...) @ergodox_blink_all_leds()
  br label %14

14:                                               ; preds = %12, %8
  br label %15

15:                                               ; preds = %14, %4
  br label %16

16:                                               ; preds = %15, %0
  store i64 0, i64* %1, align 8
  br label %17

17:                                               ; preds = %43, %16
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @MATRIX_ROWS_PER_SIDE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @select_row(i64 %22)
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @MATRIX_ROWS_PER_SIDE, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @select_row(i64 %26)
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @debounce_read_cols(i64 %28)
  %30 = load i32*, i32** @matrix, align 8
  %31 = load i64, i64* %1, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @MATRIX_ROWS_PER_SIDE, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @debounce_read_cols(i64 %35)
  %37 = load i32*, i32** @matrix, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @MATRIX_ROWS_PER_SIDE, align 8
  %40 = add i64 %38, %39
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %36, i32* %41, align 4
  %42 = call i32 (...) @unselect_rows()
  br label %43

43:                                               ; preds = %21
  %44 = load i64, i64* %1, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %1, align 8
  br label %17

46:                                               ; preds = %17
  %47 = call i32 (...) @matrix_scan_quantum()
  ret i64 0
}

declare dso_local i64 @init_mcp23017(...) #1

declare dso_local i32 @ergodox_blink_all_leds(...) #1

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @debounce_read_cols(i64) #1

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
