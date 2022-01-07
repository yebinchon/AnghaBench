; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/angel64/extr_matrix.c_init_pins.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/angel64/extr_matrix.c_init_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@col_pins = common dso_local global i32* null, align 8
@MATRIX_ROWS = common dso_local global i64 0, align 8
@row_pins = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pins() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 (...) @unselect_rows()
  %4 = call i32 (...) @unselect_cols()
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @MATRIX_COLS, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i32*, i32** @col_pins, align 8
  %11 = load i64, i64* %1, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @setPinInputHigh(i32 %13)
  br label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %5

18:                                               ; preds = %5
  store i64 0, i64* %2, align 8
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @MATRIX_ROWS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32*, i32** @row_pins, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @setPinInputHigh(i32 %27)
  br label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %2, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %2, align 8
  br label %19

32:                                               ; preds = %19
  ret void
}

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @unselect_cols(...) #1

declare dso_local i32 @setPinInputHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
