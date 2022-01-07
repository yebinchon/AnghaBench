; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66_hotswap/gen1/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66_hotswap/gen1/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"matrix init\0A\00", align 1
@GPIOB = common dso_local global i32 0, align 4
@PAL_MODE_OUTPUT_PUSHPULL = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
@PAL_MODE_INPUT_PULLDOWN = common dso_local global i32 0, align 4
@GPIOC = common dso_local global i32 0, align 4
@matrix = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32 0, align 4
@MATRIX_COLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @GPIOB, align 4
  %3 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %4 = call i32 @palSetPadMode(i32 %2, i32 10, i32 %3)
  %5 = load i32, i32* @GPIOB, align 4
  %6 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %7 = call i32 @palSetPadMode(i32 %5, i32 2, i32 %6)
  %8 = load i32, i32* @GPIOB, align 4
  %9 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %10 = call i32 @palSetPadMode(i32 %8, i32 1, i32 %9)
  %11 = load i32, i32* @GPIOB, align 4
  %12 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %13 = call i32 @palSetPadMode(i32 %11, i32 0, i32 %12)
  %14 = load i32, i32* @GPIOA, align 4
  %15 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %16 = call i32 @palSetPadMode(i32 %14, i32 7, i32 %15)
  %17 = load i32, i32* @GPIOB, align 4
  %18 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %19 = call i32 @palSetPadMode(i32 %17, i32 4, i32 %18)
  %20 = load i32, i32* @GPIOB, align 4
  %21 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %22 = call i32 @palSetPadMode(i32 %20, i32 3, i32 %21)
  %23 = load i32, i32* @GPIOB, align 4
  %24 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %25 = call i32 @palSetPadMode(i32 %23, i32 7, i32 %24)
  %26 = load i32, i32* @GPIOB, align 4
  %27 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %28 = call i32 @palSetPadMode(i32 %26, i32 11, i32 %27)
  %29 = load i32, i32* @GPIOA, align 4
  %30 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %31 = call i32 @palSetPadMode(i32 %29, i32 6, i32 %30)
  %32 = load i32, i32* @GPIOA, align 4
  %33 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %34 = call i32 @palSetPadMode(i32 %32, i32 3, i32 %33)
  %35 = load i32, i32* @GPIOA, align 4
  %36 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %37 = call i32 @palSetPadMode(i32 %35, i32 2, i32 %36)
  %38 = load i32, i32* @GPIOA, align 4
  %39 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %40 = call i32 @palSetPadMode(i32 %38, i32 1, i32 %39)
  %41 = load i32, i32* @GPIOB, align 4
  %42 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %43 = call i32 @palSetPadMode(i32 %41, i32 5, i32 %42)
  %44 = load i32, i32* @GPIOB, align 4
  %45 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %46 = call i32 @palSetPadMode(i32 %44, i32 6, i32 %45)
  %47 = load i32, i32* @GPIOC, align 4
  %48 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %49 = call i32 @palSetPadMode(i32 %47, i32 15, i32 %48)
  %50 = load i32, i32* @GPIOC, align 4
  %51 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %52 = call i32 @palSetPadMode(i32 %50, i32 14, i32 %51)
  %53 = load i32, i32* @GPIOC, align 4
  %54 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %55 = call i32 @palSetPadMode(i32 %53, i32 13, i32 %54)
  %56 = load i32, i32* @matrix, align 4
  %57 = load i32, i32* @MATRIX_ROWS, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(i32 %56, i32 0, i32 %60)
  %62 = load i32, i32* @matrix_debouncing, align 4
  %63 = load i32, i32* @MATRIX_COLS, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32 %62, i32 0, i32 %66)
  %68 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @palSetPadMode(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
