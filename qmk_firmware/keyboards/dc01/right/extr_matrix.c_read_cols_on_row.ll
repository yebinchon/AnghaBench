; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/right/extr_matrix.c_read_cols_on_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dc01/right/extr_matrix.c_read_cols_on_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@col_pins = common dso_local global i64* null, align 8
@ROW_SHIFTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @read_cols_on_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cols_on_row(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @select_row(i64 %16)
  %18 = call i32 @wait_us(i32 30)
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %49, %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @MATRIX_COLS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load i64*, i64** @col_pins, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = lshr i64 %28, 4
  %30 = call i64 @_SFR_IO8(i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = and i64 %31, 15
  %33 = call i64 @_BV(i64 %32)
  %34 = and i64 %30, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %42

38:                                               ; preds = %23
  %39 = load i64, i64* @ROW_SHIFTER, align 8
  %40 = load i64, i64* %6, align 8
  %41 = shl i64 %39, %40
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i64 [ 0, %37 ], [ %41, %38 ]
  %44 = load i64*, i64** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = or i64 %47, %43
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %19

52:                                               ; preds = %19
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @unselect_row(i64 %53)
  %55 = load i64, i64* %5, align 8
  %56 = load i64*, i64** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %55, %59
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i32 @select_row(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i64 @_SFR_IO8(i64) #1

declare dso_local i64 @_BV(i64) #1

declare dso_local i32 @unselect_row(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
