; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_matrix.c_read_rows_on_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_matrix.c_read_rows_on_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@row_pins = common dso_local global i32* null, align 8
@ROW_SHIFTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @read_rows_on_col to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rows_on_col(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @select_col(i64 %8)
  %10 = call i32 @wait_us(i32 30)
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %65, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MATRIX_ROWS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %11
  %16 = load i64*, i64** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** @row_pins, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 4
  %25 = call i32 @_SFR_IO8(i32 %24)
  %26 = load i32*, i32** @row_pins, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 15
  %31 = call i32 @_BV(i32 %30)
  %32 = and i32 %25, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %15
  %35 = load i64, i64* @ROW_SHIFTER, align 8
  %36 = load i64, i64* %4, align 8
  %37 = shl i64 %35, %36
  %38 = load i64*, i64** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %41, %37
  store i64 %42, i64* %40, align 8
  br label %53

43:                                               ; preds = %15
  %44 = load i64, i64* @ROW_SHIFTER, align 8
  %45 = load i64, i64* %4, align 8
  %46 = shl i64 %44, %45
  %47 = xor i64 %46, -1
  %48 = load i64*, i64** %3, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %51, %47
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %43, %34
  %54 = load i64, i64* %7, align 8
  %55 = load i64*, i64** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %60, %53
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %11

68:                                               ; preds = %11
  %69 = call i32 (...) @unselect_cols()
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @select_col(i64) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i32 @_SFR_IO8(i32) #1

declare dso_local i32 @_BV(i32) #1

declare dso_local i32 @unselect_cols(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
