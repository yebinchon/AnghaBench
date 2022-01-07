; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOCAL_MATRIX_ROWS = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@GPIOC = common dso_local global i32 0, align 4
@GPIOD = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32* null, align 8
@debouncing = common dso_local global i32 0, align 4
@debouncing_time = common dso_local global i32 0, align 4
@DEBOUNCE = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8
@MATRIX_ROWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %93, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @LOCAL_MATRIX_ROWS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %96

9:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  %10 = load i32, i32* %1, align 4
  switch i32 %10, label %38 [
    i32 0, label %11
    i32 1, label %14
    i32 2, label %17
    i32 3, label %20
    i32 4, label %23
    i32 5, label %26
    i32 6, label %29
    i32 7, label %32
    i32 8, label %35
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* @GPIOB, align 4
  %13 = call i32 @palSetPad(i32 %12, i32 2)
  br label %38

14:                                               ; preds = %9
  %15 = load i32, i32* @GPIOB, align 4
  %16 = call i32 @palSetPad(i32 %15, i32 3)
  br label %38

17:                                               ; preds = %9
  %18 = load i32, i32* @GPIOB, align 4
  %19 = call i32 @palSetPad(i32 %18, i32 18)
  br label %38

20:                                               ; preds = %9
  %21 = load i32, i32* @GPIOB, align 4
  %22 = call i32 @palSetPad(i32 %21, i32 19)
  br label %38

23:                                               ; preds = %9
  %24 = load i32, i32* @GPIOC, align 4
  %25 = call i32 @palSetPad(i32 %24, i32 0)
  br label %38

26:                                               ; preds = %9
  %27 = load i32, i32* @GPIOC, align 4
  %28 = call i32 @palSetPad(i32 %27, i32 9)
  br label %38

29:                                               ; preds = %9
  %30 = load i32, i32* @GPIOC, align 4
  %31 = call i32 @palSetPad(i32 %30, i32 10)
  br label %38

32:                                               ; preds = %9
  %33 = load i32, i32* @GPIOC, align 4
  %34 = call i32 @palSetPad(i32 %33, i32 11)
  br label %38

35:                                               ; preds = %9
  %36 = load i32, i32* @GPIOD, align 4
  %37 = call i32 @palSetPad(i32 %36, i32 0)
  br label %38

38:                                               ; preds = %9, %35, %32, %29, %26, %23, %20, %17, %14, %11
  %39 = call i32 @wait_us(i32 20)
  %40 = load i32, i32* @GPIOD, align 4
  %41 = call i32 @palReadPort(i32 %40)
  %42 = and i32 %41, 240
  %43 = ashr i32 %42, 3
  %44 = load i32, i32* @GPIOD, align 4
  %45 = call i32 @palReadPort(i32 %44)
  %46 = and i32 %45, 2
  %47 = ashr i32 %46, 1
  %48 = or i32 %43, %47
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %1, align 4
  switch i32 %49, label %77 [
    i32 0, label %50
    i32 1, label %53
    i32 2, label %56
    i32 3, label %59
    i32 4, label %62
    i32 5, label %65
    i32 6, label %68
    i32 7, label %71
    i32 8, label %74
  ]

50:                                               ; preds = %38
  %51 = load i32, i32* @GPIOB, align 4
  %52 = call i32 @palClearPad(i32 %51, i32 2)
  br label %77

53:                                               ; preds = %38
  %54 = load i32, i32* @GPIOB, align 4
  %55 = call i32 @palClearPad(i32 %54, i32 3)
  br label %77

56:                                               ; preds = %38
  %57 = load i32, i32* @GPIOB, align 4
  %58 = call i32 @palClearPad(i32 %57, i32 18)
  br label %77

59:                                               ; preds = %38
  %60 = load i32, i32* @GPIOB, align 4
  %61 = call i32 @palClearPad(i32 %60, i32 19)
  br label %77

62:                                               ; preds = %38
  %63 = load i32, i32* @GPIOC, align 4
  %64 = call i32 @palClearPad(i32 %63, i32 0)
  br label %77

65:                                               ; preds = %38
  %66 = load i32, i32* @GPIOC, align 4
  %67 = call i32 @palClearPad(i32 %66, i32 9)
  br label %77

68:                                               ; preds = %38
  %69 = load i32, i32* @GPIOC, align 4
  %70 = call i32 @palClearPad(i32 %69, i32 10)
  br label %77

71:                                               ; preds = %38
  %72 = load i32, i32* @GPIOC, align 4
  %73 = call i32 @palClearPad(i32 %72, i32 11)
  br label %77

74:                                               ; preds = %38
  %75 = load i32, i32* @GPIOD, align 4
  %76 = call i32 @palClearPad(i32 %75, i32 0)
  br label %77

77:                                               ; preds = %38, %74, %71, %68, %65, %62, %59, %56, %53, %50
  %78 = load i32*, i32** @matrix_debouncing, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %2, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i32, i32* %2, align 4
  %87 = load i32*, i32** @matrix_debouncing, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  store i32 1, i32* @debouncing, align 4
  %91 = call i32 (...) @timer_read()
  store i32 %91, i32* @debouncing_time, align 4
  br label %92

92:                                               ; preds = %85, %77
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %5

96:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  %97 = load i32, i32* @debouncing, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load i32, i32* @debouncing_time, align 4
  %101 = call i64 @timer_elapsed(i32 %100)
  %102 = load i64, i64* @DEBOUNCE, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %121, %104
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @LOCAL_MATRIX_ROWS, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = load i32*, i32** @matrix_debouncing, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** @matrix, align 8
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  store i32 %114, i32* %120, align 4
  br label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %105

124:                                              ; preds = %105
  store i32 0, i32* @debouncing, align 4
  br label %125

125:                                              ; preds = %124, %99, %96
  %126 = call i32 (...) @matrix_scan_quantum()
  ret i32 1
}

declare dso_local i32 @palSetPad(i32, i32) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i32 @palReadPort(i32) #1

declare dso_local i32 @palClearPad(i32, i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
