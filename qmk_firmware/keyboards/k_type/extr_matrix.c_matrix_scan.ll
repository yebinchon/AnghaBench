; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/k_type/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/k_type/extr_matrix.c_matrix_scan.c"
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

4:                                                ; preds = %101, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MATRIX_ROWS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %104

8:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  %9 = load i32, i32* %1, align 4
  switch i32 %9, label %40 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %16
    i32 3, label %19
    i32 4, label %22
    i32 5, label %25
    i32 6, label %28
    i32 7, label %31
    i32 8, label %34
    i32 9, label %37
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @GPIOB, align 4
  %12 = call i32 @palSetPad(i32 %11, i32 2)
  br label %40

13:                                               ; preds = %8
  %14 = load i32, i32* @GPIOB, align 4
  %15 = call i32 @palSetPad(i32 %14, i32 3)
  br label %40

16:                                               ; preds = %8
  %17 = load i32, i32* @GPIOB, align 4
  %18 = call i32 @palSetPad(i32 %17, i32 18)
  br label %40

19:                                               ; preds = %8
  %20 = load i32, i32* @GPIOB, align 4
  %21 = call i32 @palSetPad(i32 %20, i32 19)
  br label %40

22:                                               ; preds = %8
  %23 = load i32, i32* @GPIOC, align 4
  %24 = call i32 @palSetPad(i32 %23, i32 0)
  br label %40

25:                                               ; preds = %8
  %26 = load i32, i32* @GPIOC, align 4
  %27 = call i32 @palSetPad(i32 %26, i32 8)
  br label %40

28:                                               ; preds = %8
  %29 = load i32, i32* @GPIOC, align 4
  %30 = call i32 @palSetPad(i32 %29, i32 9)
  br label %40

31:                                               ; preds = %8
  %32 = load i32, i32* @GPIOD, align 4
  %33 = call i32 @palSetPad(i32 %32, i32 0)
  br label %40

34:                                               ; preds = %8
  %35 = load i32, i32* @GPIOD, align 4
  %36 = call i32 @palSetPad(i32 %35, i32 1)
  br label %40

37:                                               ; preds = %8
  %38 = load i32, i32* @GPIOD, align 4
  %39 = call i32 @palSetPad(i32 %38, i32 4)
  br label %40

40:                                               ; preds = %8, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10
  %41 = call i32 @wait_us(i32 20)
  %42 = load i32, i32* @GPIOC, align 4
  %43 = call i32 @palReadPort(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, 254
  %46 = shl i64 %45, 2
  %47 = load i32, i32* @GPIOD, align 4
  %48 = call i32 @palReadPort(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = and i64 %49, 224
  %51 = lshr i64 %50, 5
  %52 = or i64 %46, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %1, align 4
  switch i32 %54, label %85 [
    i32 0, label %55
    i32 1, label %58
    i32 2, label %61
    i32 3, label %64
    i32 4, label %67
    i32 5, label %70
    i32 6, label %73
    i32 7, label %76
    i32 8, label %79
    i32 9, label %82
  ]

55:                                               ; preds = %40
  %56 = load i32, i32* @GPIOB, align 4
  %57 = call i32 @palClearPad(i32 %56, i32 2)
  br label %85

58:                                               ; preds = %40
  %59 = load i32, i32* @GPIOB, align 4
  %60 = call i32 @palClearPad(i32 %59, i32 3)
  br label %85

61:                                               ; preds = %40
  %62 = load i32, i32* @GPIOB, align 4
  %63 = call i32 @palClearPad(i32 %62, i32 18)
  br label %85

64:                                               ; preds = %40
  %65 = load i32, i32* @GPIOB, align 4
  %66 = call i32 @palClearPad(i32 %65, i32 19)
  br label %85

67:                                               ; preds = %40
  %68 = load i32, i32* @GPIOC, align 4
  %69 = call i32 @palClearPad(i32 %68, i32 0)
  br label %85

70:                                               ; preds = %40
  %71 = load i32, i32* @GPIOC, align 4
  %72 = call i32 @palClearPad(i32 %71, i32 8)
  br label %85

73:                                               ; preds = %40
  %74 = load i32, i32* @GPIOC, align 4
  %75 = call i32 @palClearPad(i32 %74, i32 9)
  br label %85

76:                                               ; preds = %40
  %77 = load i32, i32* @GPIOD, align 4
  %78 = call i32 @palClearPad(i32 %77, i32 0)
  br label %85

79:                                               ; preds = %40
  %80 = load i32, i32* @GPIOD, align 4
  %81 = call i32 @palClearPad(i32 %80, i32 1)
  br label %85

82:                                               ; preds = %40
  %83 = load i32, i32* @GPIOD, align 4
  %84 = call i32 @palClearPad(i32 %83, i32 4)
  br label %85

85:                                               ; preds = %40, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55
  %86 = load i32*, i32** @matrix_debouncing, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load i32, i32* %2, align 4
  %95 = load i32*, i32** @matrix_debouncing, align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  store i32 1, i32* @debouncing, align 4
  %99 = call i32 (...) @timer_read()
  store i32 %99, i32* @debouncing_time, align 4
  br label %100

100:                                              ; preds = %93, %85
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %1, align 4
  br label %4

104:                                              ; preds = %4
  %105 = load i32, i32* @debouncing, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %104
  %108 = load i32, i32* @debouncing_time, align 4
  %109 = call i64 @timer_elapsed(i32 %108)
  %110 = load i64, i64* @DEBOUNCE, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %127, %112
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @MATRIX_ROWS, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = load i32*, i32** @matrix_debouncing, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** @matrix, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %117
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %113

130:                                              ; preds = %113
  store i32 0, i32* @debouncing, align 4
  br label %131

131:                                              ; preds = %130, %107, %104
  %132 = call i32 (...) @matrix_scan_quantum()
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
