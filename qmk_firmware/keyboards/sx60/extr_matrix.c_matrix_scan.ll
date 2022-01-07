; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/sx60/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/sx60/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i64 0, align 8
@mcp23018_reset_loop = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"trying to reset mcp23018\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"left side not responding\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"left side attached\0A\00", align 1
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8
@DEBOUNCE = common dso_local global i64 0, align 8
@debouncing = common dso_local global i32 0, align 4
@debouncing_time = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @mcp23018_status, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %0
  %5 = load i64, i64* @mcp23018_reset_loop, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* @mcp23018_reset_loop, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 (...) @init_mcp23018()
  store i64 %10, i64* @mcp23018_status, align 8
  %11 = load i64, i64* @mcp23018_status, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %17

15:                                               ; preds = %8
  %16 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %13
  br label %18

18:                                               ; preds = %17, %4
  br label %19

19:                                               ; preds = %18, %0
  store i64 0, i64* %1, align 8
  br label %20

20:                                               ; preds = %28, %19
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @MATRIX_ROWS, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32*, i32** @matrix, align 8
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @read_cols_on_row(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %1, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %1, align 8
  br label %20

31:                                               ; preds = %20
  %32 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @print(i8*) #1

declare dso_local i64 @init_mcp23018(...) #1

declare dso_local i32 @read_cols_on_row(i32*, i64) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
