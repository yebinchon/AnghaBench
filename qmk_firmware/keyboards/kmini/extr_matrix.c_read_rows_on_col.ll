; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kmini/extr_matrix.c_read_rows_on_col.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kmini/extr_matrix.c_read_rows_on_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@E2 = common dso_local global i32 0, align 4
@COL_SHIFTER = common dso_local global i64 0, align 8
@row_pins = common dso_local global i32* null, align 8
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

11:                                               ; preds = %101, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @MATRIX_ROWS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %104

15:                                               ; preds = %11
  %16 = load i64*, i64** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 2
  br i1 %21, label %22, label %54

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = icmp eq i64 %23, 2
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  %26 = load i32, i32* @E2, align 4
  %27 = ashr i32 %26, 4
  %28 = call i32 @_SFR_IO8(i32 %27)
  %29 = load i32, i32* @E2, align 4
  %30 = and i32 %29, 15
  %31 = call i32 @_BV(i32 %30)
  %32 = and i32 %28, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load i64, i64* @COL_SHIFTER, align 8
  %36 = load i64, i64* %4, align 8
  %37 = shl i64 %35, %36
  %38 = load i64*, i64** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %41, %37
  store i64 %42, i64* %40, align 8
  br label %53

43:                                               ; preds = %25
  %44 = load i64, i64* @COL_SHIFTER, align 8
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
  br label %89

54:                                               ; preds = %22, %15
  %55 = load i32*, i32** @row_pins, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 4
  %60 = call i32 @_SFR_IO8(i32 %59)
  %61 = load i32*, i32** @row_pins, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 15
  %66 = call i32 @_BV(i32 %65)
  %67 = and i32 %60, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %54
  %70 = load i64, i64* @COL_SHIFTER, align 8
  %71 = load i64, i64* %4, align 8
  %72 = shl i64 %70, %71
  %73 = load i64*, i64** %3, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %72
  store i64 %77, i64* %75, align 8
  br label %88

78:                                               ; preds = %54
  %79 = load i64, i64* @COL_SHIFTER, align 8
  %80 = load i64, i64* %4, align 8
  %81 = shl i64 %79, %80
  %82 = xor i64 %81, -1
  %83 = load i64*, i64** %3, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %86, %82
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %78, %69
  br label %89

89:                                               ; preds = %88, %53
  %90 = load i64, i64* %7, align 8
  %91 = load i64*, i64** %3, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %96, %89
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %6, align 8
  br label %11

104:                                              ; preds = %11
  %105 = call i32 (...) @unselect_cols()
  %106 = load i32, i32* %5, align 4
  ret i32 %106
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
