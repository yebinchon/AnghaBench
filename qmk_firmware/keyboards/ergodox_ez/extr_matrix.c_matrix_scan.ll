; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i64 0, align 8
@mcp23018_reset_loop = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"trying to reset mcp23018\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"left side not responding\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"left side attached\0A\00", align 1
@MATRIX_ROWS_PER_SIDE = common dso_local global i64 0, align 8
@raw_matrix = common dso_local global i32 0, align 4
@matrix = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @mcp23018_status, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i64, i64* @mcp23018_reset_loop, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* @mcp23018_reset_loop, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 (...) @init_mcp23018()
  store i64 %13, i64* @mcp23018_status, align 8
  %14 = load i64, i64* @mcp23018_status, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %21

18:                                               ; preds = %11
  %19 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 (...) @ergodox_blink_all_leds()
  br label %21

21:                                               ; preds = %18, %16
  br label %22

22:                                               ; preds = %21, %7
  br label %23

23:                                               ; preds = %22, %0
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @MATRIX_ROWS_PER_SIDE, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i64, i64* %2, align 8
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* @MATRIX_ROWS_PER_SIDE, align 8
  %32 = add nsw i64 %30, %31
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @select_row(i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @select_row(i64 %35)
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @store_raw_matrix_row(i64 %37)
  %39 = load i32, i32* %1, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %1, align 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @store_raw_matrix_row(i64 %41)
  %43 = load i32, i32* %1, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %1, align 4
  %45 = call i32 (...) @unselect_rows()
  br label %46

46:                                               ; preds = %28
  %47 = load i64, i64* %2, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %2, align 8
  br label %24

49:                                               ; preds = %24
  %50 = load i32, i32* @raw_matrix, align 4
  %51 = load i32, i32* @matrix, align 4
  %52 = load i32, i32* @MATRIX_ROWS, align 4
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @debounce(i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @print(i8*) #1

declare dso_local i64 @init_mcp23018(...) #1

declare dso_local i32 @ergodox_blink_all_leds(...) #1

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @store_raw_matrix_row(i64) #1

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @debounce(i32, i32, i32, i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
