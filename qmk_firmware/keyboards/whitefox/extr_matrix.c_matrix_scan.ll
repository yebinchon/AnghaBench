; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/whitefox/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/whitefox/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@GPIOC = common dso_local global i32 0, align 4
@GPIOD = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32* null, align 8
@debouncing = common dso_local global i32 0, align 4
@debouncing_time = common dso_local global i32 0, align 4
@DEBOUNCE = common dso_local global i64 0, align 8
@matrix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %100, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MATRIX_ROWS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %103

8:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  %9 = load i32, i32* %1, align 4
  switch i32 %9, label %37 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %16
    i32 3, label %19
    i32 4, label %22
    i32 5, label %25
    i32 6, label %28
    i32 7, label %31
    i32 8, label %34
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @GPIOB, align 4
  %12 = call i32 @palSetPad(i32 %11, i32 2)
  br label %37

13:                                               ; preds = %8
  %14 = load i32, i32* @GPIOB, align 4
  %15 = call i32 @palSetPad(i32 %14, i32 3)
  br label %37

16:                                               ; preds = %8
  %17 = load i32, i32* @GPIOB, align 4
  %18 = call i32 @palSetPad(i32 %17, i32 18)
  br label %37

19:                                               ; preds = %8
  %20 = load i32, i32* @GPIOB, align 4
  %21 = call i32 @palSetPad(i32 %20, i32 19)
  br label %37

22:                                               ; preds = %8
  %23 = load i32, i32* @GPIOC, align 4
  %24 = call i32 @palSetPad(i32 %23, i32 0)
  br label %37

25:                                               ; preds = %8
  %26 = load i32, i32* @GPIOC, align 4
  %27 = call i32 @palSetPad(i32 %26, i32 8)
  br label %37

28:                                               ; preds = %8
  %29 = load i32, i32* @GPIOC, align 4
  %30 = call i32 @palSetPad(i32 %29, i32 9)
  br label %37

31:                                               ; preds = %8
  %32 = load i32, i32* @GPIOC, align 4
  %33 = call i32 @palSetPad(i32 %32, i32 10)
  br label %37

34:                                               ; preds = %8
  %35 = load i32, i32* @GPIOC, align 4
  %36 = call i32 @palSetPad(i32 %35, i32 11)
  br label %37

37:                                               ; preds = %8, %34, %31, %28, %25, %22, %19, %16, %13, %10
  %38 = call i32 @wait_us(i32 20)
  %39 = load i32, i32* @GPIOC, align 4
  %40 = call i32 @palReadPort(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = and i64 %41, 6
  %43 = shl i64 %42, 5
  %44 = load i32, i32* @GPIOD, align 4
  %45 = call i32 @palReadPort(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, 240
  %48 = lshr i64 %47, 2
  %49 = or i64 %43, %48
  %50 = load i32, i32* @GPIOD, align 4
  %51 = call i32 @palReadPort(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, 3
  %54 = or i64 %49, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %1, align 4
  switch i32 %56, label %84 [
    i32 0, label %57
    i32 1, label %60
    i32 2, label %63
    i32 3, label %66
    i32 4, label %69
    i32 5, label %72
    i32 6, label %75
    i32 7, label %78
    i32 8, label %81
  ]

57:                                               ; preds = %37
  %58 = load i32, i32* @GPIOB, align 4
  %59 = call i32 @palClearPad(i32 %58, i32 2)
  br label %84

60:                                               ; preds = %37
  %61 = load i32, i32* @GPIOB, align 4
  %62 = call i32 @palClearPad(i32 %61, i32 3)
  br label %84

63:                                               ; preds = %37
  %64 = load i32, i32* @GPIOB, align 4
  %65 = call i32 @palClearPad(i32 %64, i32 18)
  br label %84

66:                                               ; preds = %37
  %67 = load i32, i32* @GPIOB, align 4
  %68 = call i32 @palClearPad(i32 %67, i32 19)
  br label %84

69:                                               ; preds = %37
  %70 = load i32, i32* @GPIOC, align 4
  %71 = call i32 @palClearPad(i32 %70, i32 0)
  br label %84

72:                                               ; preds = %37
  %73 = load i32, i32* @GPIOC, align 4
  %74 = call i32 @palClearPad(i32 %73, i32 8)
  br label %84

75:                                               ; preds = %37
  %76 = load i32, i32* @GPIOC, align 4
  %77 = call i32 @palClearPad(i32 %76, i32 9)
  br label %84

78:                                               ; preds = %37
  %79 = load i32, i32* @GPIOC, align 4
  %80 = call i32 @palClearPad(i32 %79, i32 10)
  br label %84

81:                                               ; preds = %37
  %82 = load i32, i32* @GPIOC, align 4
  %83 = call i32 @palClearPad(i32 %82, i32 11)
  br label %84

84:                                               ; preds = %37, %81, %78, %75, %72, %69, %66, %63, %60, %57
  %85 = load i32*, i32** @matrix_debouncing, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i32, i32* %2, align 4
  %94 = load i32*, i32** @matrix_debouncing, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  store i32 1, i32* @debouncing, align 4
  %98 = call i32 (...) @timer_read()
  store i32 %98, i32* @debouncing_time, align 4
  br label %99

99:                                               ; preds = %92, %84
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %1, align 4
  br label %4

103:                                              ; preds = %4
  %104 = load i32, i32* @debouncing, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %103
  %107 = load i32, i32* @debouncing_time, align 4
  %108 = call i64 @timer_elapsed(i32 %107)
  %109 = load i64, i64* @DEBOUNCE, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %126, %111
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @MATRIX_ROWS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32*, i32** @matrix_debouncing, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** @matrix, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %112

129:                                              ; preds = %112
  store i32 0, i32* @debouncing, align 4
  br label %130

130:                                              ; preds = %129, %106, %103
  %131 = call i32 (...) @matrix_scan_quantum()
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
