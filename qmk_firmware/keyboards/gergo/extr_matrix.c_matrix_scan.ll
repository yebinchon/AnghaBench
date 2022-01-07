; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gergo/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gergo/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcp23018_status = common dso_local global i64 0, align 8
@mcp23018_reset_loop = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"trying to reset mcp23018\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"left side not responding\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"left side attached\0A\00", align 1
@MATRIX_ROWS_PER_SIDE = common dso_local global i32 0, align 4
@raw_matrix = common dso_local global i32 0, align 4
@matrix = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4
@MATRIX_COLS = common dso_local global i32 0, align 4
@MOUSE_BTN1 = common dso_local global i32 0, align 4
@PINE = common dso_local global i32 0, align 4
@SCROLLSTEP = common dso_local global i64 0, align 8
@TRKBTN = common dso_local global i32 0, align 4
@TRKSTEP = common dso_local global i64 0, align 8
@layer_state = common dso_local global i32 0, align 4
@tbDnCnt = common dso_local global i64 0, align 8
@tbLtCnt = common dso_local global i64 0, align 8
@tbRtCnt = common dso_local global i64 0, align 8
@tbUpCnt = common dso_local global i64 0, align 8
@trkBtnState = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @enableInterrupts()
  %6 = load i64, i64* @mcp23018_status, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %0
  %9 = load i64, i64* @mcp23018_reset_loop, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* @mcp23018_reset_loop, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = call i64 (...) @init_mcp23018()
  store i64 %14, i64* @mcp23018_status, align 8
  %15 = load i64, i64* @mcp23018_status, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %21

19:                                               ; preds = %12
  %20 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %8
  br label %23

23:                                               ; preds = %22, %0
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @MATRIX_ROWS_PER_SIDE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @MATRIX_ROWS_PER_SIDE, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @select_row(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @select_row(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @store_raw_matrix_row(i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @store_raw_matrix_row(i32 %41)
  %43 = load i32, i32* %1, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %1, align 4
  %45 = call i32 (...) @unselect_rows()
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load i32, i32* @raw_matrix, align 4
  %51 = load i32, i32* @matrix, align 4
  %52 = load i32, i32* @MATRIX_ROWS, align 4
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @debounce(i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = call i32 (...) @matrix_scan_quantum()
  %56 = call i32 (...) @enableInterrupts()
  ret i32 1
}

declare dso_local i32 @enableInterrupts(...) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i64 @init_mcp23018(...) #1

declare dso_local i32 @select_row(i32) #1

declare dso_local i32 @store_raw_matrix_row(i32) #1

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @debounce(i32, i32, i32, i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
