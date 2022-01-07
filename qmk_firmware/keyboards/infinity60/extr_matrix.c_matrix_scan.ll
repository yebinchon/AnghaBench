; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/infinity60/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/infinity60/extr_matrix.c_matrix_scan.c"
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

4:                                                ; preds = %86, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MATRIX_ROWS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %89

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
  %12 = call i32 @palSetPad(i32 %11, i32 0)
  br label %37

13:                                               ; preds = %8
  %14 = load i32, i32* @GPIOB, align 4
  %15 = call i32 @palSetPad(i32 %14, i32 1)
  br label %37

16:                                               ; preds = %8
  %17 = load i32, i32* @GPIOB, align 4
  %18 = call i32 @palSetPad(i32 %17, i32 2)
  br label %37

19:                                               ; preds = %8
  %20 = load i32, i32* @GPIOB, align 4
  %21 = call i32 @palSetPad(i32 %20, i32 3)
  br label %37

22:                                               ; preds = %8
  %23 = load i32, i32* @GPIOB, align 4
  %24 = call i32 @palSetPad(i32 %23, i32 16)
  br label %37

25:                                               ; preds = %8
  %26 = load i32, i32* @GPIOB, align 4
  %27 = call i32 @palSetPad(i32 %26, i32 17)
  br label %37

28:                                               ; preds = %8
  %29 = load i32, i32* @GPIOC, align 4
  %30 = call i32 @palSetPad(i32 %29, i32 4)
  br label %37

31:                                               ; preds = %8
  %32 = load i32, i32* @GPIOC, align 4
  %33 = call i32 @palSetPad(i32 %32, i32 5)
  br label %37

34:                                               ; preds = %8
  %35 = load i32, i32* @GPIOD, align 4
  %36 = call i32 @palSetPad(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %8, %34, %31, %28, %25, %22, %19, %16, %13, %10
  %38 = call i32 @wait_us(i32 20)
  %39 = load i32, i32* @GPIOD, align 4
  %40 = call i32 @palReadPort(i32 %39)
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %1, align 4
  switch i32 %42, label %70 [
    i32 0, label %43
    i32 1, label %46
    i32 2, label %49
    i32 3, label %52
    i32 4, label %55
    i32 5, label %58
    i32 6, label %61
    i32 7, label %64
    i32 8, label %67
  ]

43:                                               ; preds = %37
  %44 = load i32, i32* @GPIOB, align 4
  %45 = call i32 @palClearPad(i32 %44, i32 0)
  br label %70

46:                                               ; preds = %37
  %47 = load i32, i32* @GPIOB, align 4
  %48 = call i32 @palClearPad(i32 %47, i32 1)
  br label %70

49:                                               ; preds = %37
  %50 = load i32, i32* @GPIOB, align 4
  %51 = call i32 @palClearPad(i32 %50, i32 2)
  br label %70

52:                                               ; preds = %37
  %53 = load i32, i32* @GPIOB, align 4
  %54 = call i32 @palClearPad(i32 %53, i32 3)
  br label %70

55:                                               ; preds = %37
  %56 = load i32, i32* @GPIOB, align 4
  %57 = call i32 @palClearPad(i32 %56, i32 16)
  br label %70

58:                                               ; preds = %37
  %59 = load i32, i32* @GPIOB, align 4
  %60 = call i32 @palClearPad(i32 %59, i32 17)
  br label %70

61:                                               ; preds = %37
  %62 = load i32, i32* @GPIOC, align 4
  %63 = call i32 @palClearPad(i32 %62, i32 4)
  br label %70

64:                                               ; preds = %37
  %65 = load i32, i32* @GPIOC, align 4
  %66 = call i32 @palClearPad(i32 %65, i32 5)
  br label %70

67:                                               ; preds = %37
  %68 = load i32, i32* @GPIOD, align 4
  %69 = call i32 @palClearPad(i32 %68, i32 0)
  br label %70

70:                                               ; preds = %37, %67, %64, %61, %58, %55, %52, %49, %46, %43
  %71 = load i32*, i32** @matrix_debouncing, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i32, i32* %2, align 4
  %80 = load i32*, i32** @matrix_debouncing, align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  store i32 1, i32* @debouncing, align 4
  %84 = call i32 (...) @timer_read()
  store i32 %84, i32* @debouncing_time, align 4
  br label %85

85:                                               ; preds = %78, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %1, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %1, align 4
  br label %4

89:                                               ; preds = %4
  %90 = load i32, i32* @debouncing, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %89
  %93 = load i32, i32* @debouncing_time, align 4
  %94 = call i64 @timer_elapsed(i32 %93)
  %95 = load i64, i64* @DEBOUNCE, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %112, %97
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @MATRIX_ROWS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load i32*, i32** @matrix_debouncing, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** @matrix, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %102
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %98

115:                                              ; preds = %98
  store i32 0, i32* @debouncing, align 4
  br label %116

116:                                              ; preds = %115, %92, %89
  %117 = call i32 (...) @matrix_scan_quantum()
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
