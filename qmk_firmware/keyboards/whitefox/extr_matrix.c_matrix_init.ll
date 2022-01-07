; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/whitefox/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/whitefox/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIOD = common dso_local global i32 0, align 4
@PAL_MODE_INPUT_PULLDOWN = common dso_local global i32 0, align 4
@GPIOC = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@PAL_MODE_OUTPUT_PUSHPULL = common dso_local global i32 0, align 4
@matrix = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = load i32, i32* @GPIOD, align 4
  %2 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %3 = call i32 @palSetPadMode(i32 %1, i32 0, i32 %2)
  %4 = load i32, i32* @GPIOD, align 4
  %5 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %6 = call i32 @palSetPadMode(i32 %4, i32 1, i32 %5)
  %7 = load i32, i32* @GPIOD, align 4
  %8 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %9 = call i32 @palSetPadMode(i32 %7, i32 4, i32 %8)
  %10 = load i32, i32* @GPIOD, align 4
  %11 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %12 = call i32 @palSetPadMode(i32 %10, i32 5, i32 %11)
  %13 = load i32, i32* @GPIOD, align 4
  %14 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %15 = call i32 @palSetPadMode(i32 %13, i32 6, i32 %14)
  %16 = load i32, i32* @GPIOD, align 4
  %17 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %18 = call i32 @palSetPadMode(i32 %16, i32 7, i32 %17)
  %19 = load i32, i32* @GPIOC, align 4
  %20 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %21 = call i32 @palSetPadMode(i32 %19, i32 1, i32 %20)
  %22 = load i32, i32* @GPIOC, align 4
  %23 = load i32, i32* @PAL_MODE_INPUT_PULLDOWN, align 4
  %24 = call i32 @palSetPadMode(i32 %22, i32 2, i32 %23)
  %25 = load i32, i32* @GPIOB, align 4
  %26 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %27 = call i32 @palSetPadMode(i32 %25, i32 2, i32 %26)
  %28 = load i32, i32* @GPIOB, align 4
  %29 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %30 = call i32 @palSetPadMode(i32 %28, i32 3, i32 %29)
  %31 = load i32, i32* @GPIOB, align 4
  %32 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %33 = call i32 @palSetPadMode(i32 %31, i32 18, i32 %32)
  %34 = load i32, i32* @GPIOB, align 4
  %35 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %36 = call i32 @palSetPadMode(i32 %34, i32 19, i32 %35)
  %37 = load i32, i32* @GPIOC, align 4
  %38 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %39 = call i32 @palSetPadMode(i32 %37, i32 0, i32 %38)
  %40 = load i32, i32* @GPIOC, align 4
  %41 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %42 = call i32 @palSetPadMode(i32 %40, i32 8, i32 %41)
  %43 = load i32, i32* @GPIOC, align 4
  %44 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %45 = call i32 @palSetPadMode(i32 %43, i32 9, i32 %44)
  %46 = load i32, i32* @GPIOC, align 4
  %47 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %48 = call i32 @palSetPadMode(i32 %46, i32 10, i32 %47)
  %49 = load i32, i32* @GPIOC, align 4
  %50 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %51 = call i32 @palSetPadMode(i32 %49, i32 11, i32 %50)
  %52 = load i32, i32* @matrix, align 4
  %53 = load i32, i32* @MATRIX_ROWS, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memset(i32 %52, i32 0, i32 %56)
  %58 = load i32, i32* @matrix_debouncing, align 4
  %59 = load i32, i32* @MATRIX_ROWS, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memset(i32 %58, i32 0, i32 %62)
  %64 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @palSetPadMode(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
