; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kmini/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kmini/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@matrix_debouncing = common dso_local global i32* null, align 8
@debouncing = common dso_local global i32 0, align 4
@debouncing_time = common dso_local global i32 0, align 4
@DEBOUNCE = common dso_local global i64 0, align 8
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @MATRIX_COLS, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i32*, i32** @matrix_debouncing, align 8
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @read_rows_on_col(i32* %9, i64 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  store i32 1, i32* @debouncing, align 4
  %15 = call i32 (...) @timer_read()
  store i32 %15, i32* @debouncing_time, align 4
  br label %16

16:                                               ; preds = %14, %8
  br label %17

17:                                               ; preds = %16
  %18 = load i64, i64* %1, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %1, align 8
  br label %4

20:                                               ; preds = %4
  %21 = load i32, i32* @debouncing, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load i32, i32* @debouncing_time, align 4
  %25 = call i64 @timer_elapsed(i32 %24)
  %26 = load i64, i64* @DEBOUNCE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @MATRIX_ROWS, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32*, i32** @matrix_debouncing, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @matrix, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %3, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %29

44:                                               ; preds = %29
  store i32 0, i32* @debouncing, align 4
  br label %45

45:                                               ; preds = %44, %23, %20
  %46 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @read_rows_on_col(i32*, i64) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
