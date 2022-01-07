; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hid_liber/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hid_liber/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix_debouncing = common dso_local global i32* null, align 8
@row_pin = common dso_local global i32** null, align 8
@row_bit = common dso_local global i32* null, align 8
@debouncing = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"bounce!: %02X\0A\00", align 1
@DEBOUNCE = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %64, %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @MATRIX_COLS, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %67

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @pull_column(i64 %11)
  %13 = call i32 @_delay_us(i32 5)
  store i64 0, i64* %2, align 8
  br label %14

14:                                               ; preds = %58, %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @MATRIX_ROWS, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load i32*, i32** @matrix_debouncing, align 8
  %20 = load i64, i64* %2, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %1, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 1, %24
  %26 = and i32 %22, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32**, i32*** @row_pin, align 8
  %28 = load i64, i64* %2, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @row_bit, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %31, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %18
  %41 = load i64, i64* %1, align 8
  %42 = shl i64 1, %41
  %43 = load i32*, i32** @matrix_debouncing, align 8
  %44 = load i64, i64* %2, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = xor i64 %47, %42
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load i64, i64* @debouncing, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i64, i64* @debouncing, align 8
  %54 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %52, %40
  %56 = load i64, i64* @DEBOUNCE, align 8
  store i64 %56, i64* @debouncing, align 8
  br label %57

57:                                               ; preds = %55, %18
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %2, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %2, align 8
  br label %14

61:                                               ; preds = %14
  %62 = load i64, i64* %1, align 8
  %63 = call i32 @release_column(i64 %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %1, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %1, align 8
  br label %6

67:                                               ; preds = %6
  %68 = load i64, i64* @debouncing, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load i64, i64* @debouncing, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* @debouncing, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @_delay_ms(i32 1)
  br label %93

76:                                               ; preds = %70
  store i64 0, i64* %5, align 8
  br label %77

77:                                               ; preds = %89, %76
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @MATRIX_ROWS, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32*, i32** @matrix_debouncing, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** @matrix, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %81
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %5, align 8
  br label %77

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93, %67
  %95 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @pull_column(i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @dprintf(i8*, i64) #1

declare dso_local i32 @release_column(i64) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
