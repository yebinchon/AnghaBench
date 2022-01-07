; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66_hotswap/gen1/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66_hotswap/gen1/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_COLS = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
@GPIOC = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32* null, align 8
@debouncing = common dso_local global i32 0, align 4
@debouncing_time = common dso_local global i32 0, align 4
@DEBOUNCE = common dso_local global i64 0, align 8
@MATRIX_ROWS = common dso_local global i32 0, align 4
@matrix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %117, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @MATRIX_COLS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %120

9:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  %10 = load i32, i32* %1, align 4
  switch i32 %10, label %35 [
    i32 0, label %11
    i32 1, label %14
    i32 2, label %17
    i32 3, label %20
    i32 4, label %23
    i32 5, label %26
    i32 6, label %29
    i32 7, label %32
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* @GPIOB, align 4
  %13 = call i32 @palSetPad(i32 %12, i32 10)
  br label %35

14:                                               ; preds = %9
  %15 = load i32, i32* @GPIOB, align 4
  %16 = call i32 @palSetPad(i32 %15, i32 2)
  br label %35

17:                                               ; preds = %9
  %18 = load i32, i32* @GPIOB, align 4
  %19 = call i32 @palSetPad(i32 %18, i32 1)
  br label %35

20:                                               ; preds = %9
  %21 = load i32, i32* @GPIOB, align 4
  %22 = call i32 @palSetPad(i32 %21, i32 0)
  br label %35

23:                                               ; preds = %9
  %24 = load i32, i32* @GPIOA, align 4
  %25 = call i32 @palSetPad(i32 %24, i32 7)
  br label %35

26:                                               ; preds = %9
  %27 = load i32, i32* @GPIOB, align 4
  %28 = call i32 @palSetPad(i32 %27, i32 4)
  br label %35

29:                                               ; preds = %9
  %30 = load i32, i32* @GPIOB, align 4
  %31 = call i32 @palSetPad(i32 %30, i32 3)
  br label %35

32:                                               ; preds = %9
  %33 = load i32, i32* @GPIOB, align 4
  %34 = call i32 @palSetPad(i32 %33, i32 7)
  br label %35

35:                                               ; preds = %9, %32, %29, %26, %23, %20, %17, %14, %11
  %36 = call i32 @wait_us(i32 20)
  %37 = load i32, i32* @GPIOB, align 4
  %38 = call i32 @palReadPad(i32 %37, i32 11)
  %39 = shl i32 %38, 0
  %40 = load i32, i32* @GPIOA, align 4
  %41 = call i32 @palReadPad(i32 %40, i32 6)
  %42 = shl i32 %41, 1
  %43 = or i32 %39, %42
  %44 = load i32, i32* @GPIOA, align 4
  %45 = call i32 @palReadPad(i32 %44, i32 3)
  %46 = shl i32 %45, 2
  %47 = or i32 %43, %46
  %48 = load i32, i32* @GPIOA, align 4
  %49 = call i32 @palReadPad(i32 %48, i32 2)
  %50 = shl i32 %49, 3
  %51 = or i32 %47, %50
  %52 = load i32, i32* @GPIOA, align 4
  %53 = call i32 @palReadPad(i32 %52, i32 1)
  %54 = shl i32 %53, 4
  %55 = or i32 %51, %54
  %56 = load i32, i32* @GPIOB, align 4
  %57 = call i32 @palReadPad(i32 %56, i32 5)
  %58 = shl i32 %57, 5
  %59 = or i32 %55, %58
  %60 = load i32, i32* @GPIOB, align 4
  %61 = call i32 @palReadPad(i32 %60, i32 6)
  %62 = shl i32 %61, 6
  %63 = or i32 %59, %62
  %64 = load i32, i32* @GPIOC, align 4
  %65 = call i32 @palReadPad(i32 %64, i32 15)
  %66 = shl i32 %65, 7
  %67 = or i32 %63, %66
  %68 = load i32, i32* @GPIOC, align 4
  %69 = call i32 @palReadPad(i32 %68, i32 14)
  %70 = shl i32 %69, 8
  %71 = or i32 %67, %70
  %72 = load i32, i32* @GPIOC, align 4
  %73 = call i32 @palReadPad(i32 %72, i32 13)
  %74 = shl i32 %73, 9
  %75 = or i32 %71, %74
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %1, align 4
  switch i32 %76, label %101 [
    i32 0, label %77
    i32 1, label %80
    i32 2, label %83
    i32 3, label %86
    i32 4, label %89
    i32 5, label %92
    i32 6, label %95
    i32 7, label %98
  ]

77:                                               ; preds = %35
  %78 = load i32, i32* @GPIOB, align 4
  %79 = call i32 @palClearPad(i32 %78, i32 10)
  br label %101

80:                                               ; preds = %35
  %81 = load i32, i32* @GPIOB, align 4
  %82 = call i32 @palClearPad(i32 %81, i32 2)
  br label %101

83:                                               ; preds = %35
  %84 = load i32, i32* @GPIOB, align 4
  %85 = call i32 @palClearPad(i32 %84, i32 1)
  br label %101

86:                                               ; preds = %35
  %87 = load i32, i32* @GPIOB, align 4
  %88 = call i32 @palClearPad(i32 %87, i32 0)
  br label %101

89:                                               ; preds = %35
  %90 = load i32, i32* @GPIOA, align 4
  %91 = call i32 @palClearPad(i32 %90, i32 7)
  br label %101

92:                                               ; preds = %35
  %93 = load i32, i32* @GPIOB, align 4
  %94 = call i32 @palClearPad(i32 %93, i32 4)
  br label %101

95:                                               ; preds = %35
  %96 = load i32, i32* @GPIOB, align 4
  %97 = call i32 @palClearPad(i32 %96, i32 3)
  br label %101

98:                                               ; preds = %35
  %99 = load i32, i32* @GPIOB, align 4
  %100 = call i32 @palClearPad(i32 %99, i32 7)
  br label %101

101:                                              ; preds = %35, %98, %95, %92, %89, %86, %83, %80, %77
  %102 = load i32*, i32** @matrix_debouncing, align 8
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %2, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load i32, i32* %2, align 4
  %111 = load i32*, i32** @matrix_debouncing, align 8
  %112 = load i32, i32* %1, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  store i32 1, i32* @debouncing, align 4
  %115 = call i32 (...) @timer_read()
  store i32 %115, i32* @debouncing_time, align 4
  br label %116

116:                                              ; preds = %109, %101
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %5

120:                                              ; preds = %5
  %121 = load i32, i32* @debouncing, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %170

123:                                              ; preds = %120
  %124 = load i32, i32* @debouncing_time, align 4
  %125 = call i64 @timer_elapsed(i32 %124)
  %126 = load i64, i64* @DEBOUNCE, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %170

128:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %166, %128
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @MATRIX_ROWS, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %169

133:                                              ; preds = %129
  %134 = load i32*, i32** @matrix, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 0, i32* %137, align 4
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %162, %133
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @MATRIX_COLS, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %165

142:                                              ; preds = %138
  %143 = load i32*, i32** @matrix_debouncing, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %3, align 4
  %149 = shl i32 1, %148
  %150 = and i32 %147, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  %154 = load i32, i32* %4, align 4
  %155 = shl i32 %153, %154
  %156 = load i32*, i32** @matrix, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %155
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %142
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %138

165:                                              ; preds = %138
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %3, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %3, align 4
  br label %129

169:                                              ; preds = %129
  store i32 0, i32* @debouncing, align 4
  br label %170

170:                                              ; preds = %169, %123, %120
  %171 = call i32 (...) @matrix_scan_quantum()
  ret i32 1
}

declare dso_local i32 @palSetPad(i32, i32) #1

declare dso_local i32 @wait_us(i32) #1

declare dso_local i32 @palReadPad(i32, i32) #1

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
