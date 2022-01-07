; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/fc980c/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/fc980c/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_prev = common dso_local global i32* null, align 8
@matrix = common dso_local global i32* null, align 8
@MATRIX_COLS = common dso_local global i64 0, align 8
@MATRIX_ROWS = common dso_local global i64 0, align 8
@TIMER_RAW = common dso_local global i64 0, align 8
@TIMER_RAW_FREQ = common dso_local global i32 0, align 4
@matrix_last_modified = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32*, i32** @matrix_prev, align 8
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** @matrix, align 8
  store i32* %6, i32** @matrix_prev, align 8
  %7 = load i32*, i32** %1, align 8
  store i32* %7, i32** @matrix, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %98, %0
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @MATRIX_COLS, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %101

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @SET_COL(i64 %13)
  store i64 0, i64* %2, align 8
  br label %15

15:                                               ; preds = %81, %12
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @MATRIX_ROWS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %15
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @SET_ROW(i64 %20)
  %22 = call i32 @_delay_us(i32 2)
  %23 = load i32*, i32** @matrix_prev, align 8
  %24 = load i64, i64* %2, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %3, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 1, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = call i32 (...) @KEY_HYS_ON()
  br label %34

34:                                               ; preds = %32, %19
  %35 = call i32 @_delay_us(i32 10)
  %36 = load i64, i64* @TIMER_RAW, align 8
  store i64 %36, i64* %4, align 8
  %37 = call i32 (...) @KEY_ENABLE()
  %38 = call i32 @_delay_us(i32 2)
  %39 = call i64 (...) @KEY_STATE()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i64, i64* %3, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load i32*, i32** @matrix, align 8
  %47 = load i64, i64* %2, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %60

51:                                               ; preds = %34
  %52 = load i64, i64* %3, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 1, %53
  %55 = load i32*, i32** @matrix, align 8
  %56 = load i64, i64* %2, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %51, %41
  %61 = load i64, i64* @TIMER_RAW, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @TIMER_DIFF_RAW(i64 %61, i64 %62)
  %64 = load i32, i32* @TIMER_RAW_FREQ, align 4
  %65 = sdiv i32 1000000, %64
  %66 = sdiv i32 20, %65
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load i32*, i32** @matrix_prev, align 8
  %70 = load i64, i64* %2, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @matrix, align 8
  %74 = load i64, i64* %2, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %60
  %77 = call i32 @_delay_us(i32 5)
  %78 = call i32 (...) @KEY_HYS_OFF()
  %79 = call i32 (...) @KEY_UNABLE()
  %80 = call i32 @_delay_us(i32 75)
  br label %81

81:                                               ; preds = %76
  %82 = load i64, i64* %2, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %2, align 8
  br label %15

84:                                               ; preds = %15
  %85 = load i32*, i32** @matrix, align 8
  %86 = load i64, i64* %2, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** @matrix_prev, align 8
  %90 = load i64, i64* %2, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %88, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = call i32 (...) @timer_read32()
  store i32 %96, i32* @matrix_last_modified, align 4
  br label %97

97:                                               ; preds = %95, %84
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %3, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %3, align 8
  br label %8

101:                                              ; preds = %8
  %102 = call i32 (...) @matrix_scan_quantum()
  ret i64 1
}

declare dso_local i32 @SET_COL(i64) #1

declare dso_local i32 @SET_ROW(i64) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @KEY_HYS_ON(...) #1

declare dso_local i32 @KEY_ENABLE(...) #1

declare dso_local i64 @KEY_STATE(...) #1

declare dso_local i32 @TIMER_DIFF_RAW(i64, i64) #1

declare dso_local i32 @KEY_HYS_OFF(...) #1

declare dso_local i32 @KEY_UNABLE(...) #1

declare dso_local i32 @timer_read32(...) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
