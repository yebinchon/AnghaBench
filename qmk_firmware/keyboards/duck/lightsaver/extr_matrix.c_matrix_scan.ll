; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/lightsaver/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/lightsaver/extr_matrix.c_matrix_scan.c"
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

7:                                                ; preds = %69, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @MATRIX_COLS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %72

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @select_col(i64 %12)
  %14 = call i32 @_delay_us(i32 3)
  %15 = call i64 (...) @read_rows()
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %1, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = call i64 (...) @read_fwkey()
  %20 = load i64, i64* %2, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %18, %11
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %64, %22
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @MATRIX_ROWS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %23
  %28 = load i64*, i64** @matrix_debouncing, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %1, align 8
  %33 = shl i64 1, %32
  %34 = and i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* %3, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 1, %38
  %40 = sext i32 %39 to i64
  %41 = and i64 %36, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %27
  %47 = load i64, i64* %1, align 8
  %48 = shl i64 1, %47
  %49 = load i64*, i64** @matrix_debouncing, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = xor i64 %52, %48
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* @debouncing, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = call i32 @dprint(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %58 = load i64, i64* @debouncing, align 8
  %59 = call i32 @dprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = call i32 (...) @dprintln()
  br label %61

61:                                               ; preds = %56, %46
  %62 = load i64, i64* @DEBOUNCE, align 8
  store i64 %62, i64* @debouncing, align 8
  br label %63

63:                                               ; preds = %61, %27
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %3, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %3, align 8
  br label %23

67:                                               ; preds = %23
  %68 = call i32 (...) @unselect_cols()
  br label %69

69:                                               ; preds = %67
  %70 = load i64, i64* %1, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %1, align 8
  br label %7

72:                                               ; preds = %7
  %73 = load i64, i64* @debouncing, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load i64, i64* @debouncing, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* @debouncing, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @_delay_ms(i32 1)
  br label %98

81:                                               ; preds = %75
  store i64 0, i64* %6, align 8
  br label %82

82:                                               ; preds = %94, %81
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @MATRIX_ROWS, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i64*, i64** @matrix_debouncing, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** @matrix, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %86
  %95 = load i64, i64* %6, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %6, align 8
  br label %82

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %72
  %100 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @select_col(i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i64 @read_rows(...) #1

declare dso_local i64 @read_fwkey(...) #1

declare dso_local i32 @dprint(i8*) #1

declare dso_local i32 @dprintf(i8*, i64) #1

declare dso_local i32 @dprintln(...) #1

declare dso_local i32 @unselect_cols(...) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
