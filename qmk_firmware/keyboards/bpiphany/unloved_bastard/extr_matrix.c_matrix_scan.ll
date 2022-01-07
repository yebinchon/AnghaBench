; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/unloved_bastard/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bpiphany/unloved_bastard/extr_matrix.c_matrix_scan.c"
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

7:                                                ; preds = %53, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @MATRIX_COLS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @select_col(i64 %12)
  %14 = call i32 @_delay_us(i32 3)
  %15 = call i64 (...) @scan_col()
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
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %1, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %1, align 8
  br label %7

56:                                               ; preds = %7
  %57 = load i64, i64* @debouncing, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load i64, i64* @debouncing, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* @debouncing, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @_delay_ms(i32 1)
  br label %82

65:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @MATRIX_ROWS, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load i64*, i64** @matrix_debouncing, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** @matrix, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %70
  %79 = load i64, i64* %6, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %66

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %63
  br label %83

83:                                               ; preds = %82, %56
  %84 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @select_col(i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i64 @scan_col(...) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
