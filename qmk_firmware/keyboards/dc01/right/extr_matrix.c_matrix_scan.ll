; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/right/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/right/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8
@USB_DeviceState = common dso_local global i64 0, align 8
@DEVICE_STATE_Configured = common dso_local global i64 0, align 8
@i2c_slave_reg = common dso_local global i32* null, align 8
@DEBOUNCE = common dso_local global i64 0, align 8
@MATRIX_COLS = common dso_local global i64 0, align 8
@debouncing = common dso_local global i32 0, align 4
@debouncing_time = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %11, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @MATRIX_ROWS, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i32*, i32** @matrix, align 8
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @read_cols_on_row(i32* %8, i64 %9)
  br label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %1, align 8
  br label %3

14:                                               ; preds = %3
  %15 = load i64, i64* @USB_DeviceState, align 8
  %16 = load i64, i64* @DEVICE_STATE_Configured, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load i32*, i32** @i2c_slave_reg, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 85, i32* %20, align 4
  store i64 0, i64* %2, align 8
  br label %21

21:                                               ; preds = %34, %18
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @MATRIX_ROWS, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32*, i32** @matrix, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @i2c_slave_reg, align 8
  %31 = load i64, i64* %2, align 8
  %32 = add nsw i64 %31, 2
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %25
  %35 = load i64, i64* %2, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %2, align 8
  br label %21

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37, %14
  %39 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @read_cols_on_row(i32*, i64) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
