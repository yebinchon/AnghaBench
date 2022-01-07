; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/jm60/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/jm60/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
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

4:                                                ; preds = %89, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MATRIX_ROWS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %92

8:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  %9 = load i32, i32* %1, align 4
  switch i32 %9, label %25 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %16
    i32 3, label %19
    i32 4, label %22
  ]

10:                                               ; preds = %8
  %11 = load i32, i32* @GPIOB, align 4
  %12 = call i32 @palSetPad(i32 %11, i32 11)
  br label %25

13:                                               ; preds = %8
  %14 = load i32, i32* @GPIOB, align 4
  %15 = call i32 @palSetPad(i32 %14, i32 10)
  br label %25

16:                                               ; preds = %8
  %17 = load i32, i32* @GPIOB, align 4
  %18 = call i32 @palSetPad(i32 %17, i32 2)
  br label %25

19:                                               ; preds = %8
  %20 = load i32, i32* @GPIOB, align 4
  %21 = call i32 @palSetPad(i32 %20, i32 1)
  br label %25

22:                                               ; preds = %8
  %23 = load i32, i32* @GPIOB, align 4
  %24 = call i32 @palSetPad(i32 %23, i32 0)
  br label %25

25:                                               ; preds = %8, %22, %19, %16, %13, %10
  %26 = call i32 @wait_us(i32 20)
  %27 = load i32, i32* @GPIOA, align 4
  %28 = call i32 @palReadPort(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 32768
  %31 = lshr i64 %30, 15
  %32 = load i32, i32* @GPIOC, align 4
  %33 = call i32 @palReadPort(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = and i64 %34, 7168
  %36 = lshr i64 %35, 9
  %37 = or i64 %31, %36
  %38 = load i32, i32* @GPIOD, align 4
  %39 = call i32 @palReadPort(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, 4
  %42 = shl i64 %41, 2
  %43 = or i64 %37, %42
  %44 = load i32, i32* @GPIOB, align 4
  %45 = call i32 @palReadPort(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, 1016
  %48 = shl i64 %47, 2
  %49 = or i64 %43, %48
  %50 = load i32, i32* @GPIOA, align 4
  %51 = call i32 @palReadPort(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, 12
  %54 = shl i64 %53, 10
  %55 = or i64 %49, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %1, align 4
  switch i32 %57, label %73 [
    i32 0, label %58
    i32 1, label %61
    i32 2, label %64
    i32 3, label %67
    i32 4, label %70
  ]

58:                                               ; preds = %25
  %59 = load i32, i32* @GPIOB, align 4
  %60 = call i32 @palClearPad(i32 %59, i32 11)
  br label %73

61:                                               ; preds = %25
  %62 = load i32, i32* @GPIOB, align 4
  %63 = call i32 @palClearPad(i32 %62, i32 10)
  br label %73

64:                                               ; preds = %25
  %65 = load i32, i32* @GPIOB, align 4
  %66 = call i32 @palClearPad(i32 %65, i32 2)
  br label %73

67:                                               ; preds = %25
  %68 = load i32, i32* @GPIOB, align 4
  %69 = call i32 @palClearPad(i32 %68, i32 1)
  br label %73

70:                                               ; preds = %25
  %71 = load i32, i32* @GPIOB, align 4
  %72 = call i32 @palClearPad(i32 %71, i32 0)
  br label %73

73:                                               ; preds = %25, %70, %67, %64, %61, %58
  %74 = load i32*, i32** @matrix_debouncing, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %2, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load i32, i32* %2, align 4
  %83 = load i32*, i32** @matrix_debouncing, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  store i32 1, i32* @debouncing, align 4
  %87 = call i32 (...) @timer_read()
  store i32 %87, i32* @debouncing_time, align 4
  br label %88

88:                                               ; preds = %81, %73
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %1, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %1, align 4
  br label %4

92:                                               ; preds = %4
  %93 = load i32, i32* @debouncing, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load i32, i32* @debouncing_time, align 4
  %97 = call i64 @timer_elapsed(i32 %96)
  %98 = load i64, i64* @DEBOUNCE, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @MATRIX_ROWS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32*, i32** @matrix_debouncing, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** @matrix, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %101

118:                                              ; preds = %101
  store i32 0, i32* @debouncing, align 4
  br label %119

119:                                              ; preds = %118, %95, %92
  ret i32 1
}

declare dso_local i32 @palSetPad(i32, i32) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i32 @palReadPort(i32) #1

declare dso_local i32 @palClearPad(i32, i32) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i64 @timer_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
