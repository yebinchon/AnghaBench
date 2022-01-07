; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i64 0, align 8
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix_debouncing = common dso_local global i64* null, align 8
@debouncing = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"bounce!: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@DEBOUNCE = common dso_local global i64 0, align 8
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

7:                                                ; preds = %63, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @MATRIX_COLS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %66

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @select_col(i64 %12)
  %14 = call i32 @_delay_us(i32 3)
  %15 = load i64, i64* %1, align 8
  %16 = call i64 @read_rows(i64 %15)
  store i64 %16, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %58, %11
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @MATRIX_ROWS, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i64*, i64** @matrix_debouncing, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %1, align 8
  %27 = shl i64 1, %26
  %28 = and i64 %25, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = load i64, i64* %2, align 8
  %31 = load i64, i64* %3, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = and i64 %30, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %21
  %41 = load i64, i64* %1, align 8
  %42 = shl i64 1, %41
  %43 = load i64*, i64** @matrix_debouncing, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = xor i64 %46, %42
  store i64 %47, i64* %45, align 8
  %48 = load i64, i64* @debouncing, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = call i32 @dprint(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %52 = load i64, i64* @debouncing, align 8
  %53 = call i32 @dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = call i32 (...) @dprintln()
  br label %55

55:                                               ; preds = %50, %40
  %56 = load i64, i64* @DEBOUNCE, align 8
  store i64 %56, i64* @debouncing, align 8
  br label %57

57:                                               ; preds = %55, %21
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %3, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %17

61:                                               ; preds = %17
  %62 = call i32 (...) @unselect_cols()
  br label %63

63:                                               ; preds = %61
  %64 = load i64, i64* %1, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %1, align 8
  br label %7

66:                                               ; preds = %7
  %67 = load i64, i64* @debouncing, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  %70 = load i64, i64* @debouncing, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* @debouncing, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @_delay_ms(i32 1)
  br label %92

75:                                               ; preds = %69
  store i64 0, i64* %6, align 8
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @MATRIX_ROWS, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i64*, i64** @matrix_debouncing, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** @matrix, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %6, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %6, align 8
  br label %76

91:                                               ; preds = %76
  br label %92

92:                                               ; preds = %91, %73
  br label %93

93:                                               ; preds = %92, %66
  ret i64 1
}

declare dso_local i32 @select_col(i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i64 @read_rows(i64) #1

declare dso_local i32 @dprint(i8*) #1

declare dso_local i32 @dprintf(i8*, i64) #1

declare dso_local i32 @dprintln(...) #1

declare dso_local i32 @unselect_cols(...) #1

declare dso_local i32 @_delay_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
