; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dp60/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dp60/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix_debouncing = common dso_local global i64* null, align 8
@DEBOUNCE = common dso_local global i64 0, align 8
@debouncing = common dso_local global i64 0, align 8
@matrix = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %54, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @MATRIX_COLS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %57

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @select_col(i64 %12)
  %14 = call i32 @_delay_us(i32 3)
  %15 = call i64 (...) @read_rows()
  store i64 %15, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %49, %11
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @MATRIX_ROWS, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load i64*, i64** @matrix_debouncing, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %1, align 8
  %26 = shl i64 1, %25
  %27 = and i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = and i64 %29, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %20
  %40 = load i64, i64* %1, align 8
  %41 = shl i64 1, %40
  %42 = load i64*, i64** @matrix_debouncing, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = xor i64 %45, %41
  store i64 %46, i64* %44, align 8
  %47 = load i64, i64* @DEBOUNCE, align 8
  store i64 %47, i64* @debouncing, align 8
  br label %48

48:                                               ; preds = %39, %20
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %3, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %16

52:                                               ; preds = %16
  %53 = call i32 (...) @unselect_cols()
  br label %54

54:                                               ; preds = %52
  %55 = load i64, i64* %1, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %1, align 8
  br label %7

57:                                               ; preds = %7
  %58 = load i64, i64* @debouncing, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i64, i64* @debouncing, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* @debouncing, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @_delay_ms(i32 1)
  br label %83

66:                                               ; preds = %60
  store i64 0, i64* %6, align 8
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @MATRIX_ROWS, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i64*, i64** @matrix_debouncing, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** @matrix, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %71
  %80 = load i64, i64* %6, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %6, align 8
  br label %67

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %57
  %85 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @select_col(i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i64 @read_rows(...) #1

declare dso_local i32 @unselect_cols(...) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
