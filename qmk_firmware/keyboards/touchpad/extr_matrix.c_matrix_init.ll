; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/touchpad/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/touchpad/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E6 = common dso_local global i32 0, align 4
@D7 = common dso_local global i32 0, align 4
@B7 = common dso_local global i32 0, align 4
@F7 = common dso_local global i32 0, align 4
@F6 = common dso_local global i32 0, align 4
@F5 = common dso_local global i32 0, align 4
@F4 = common dso_local global i32 0, align 4
@F1 = common dso_local global i32 0, align 4
@F0 = common dso_local global i32 0, align 4
@D6 = common dso_local global i32 0, align 4
@B4 = common dso_local global i32 0, align 4
@B5 = common dso_local global i32 0, align 4
@B6 = common dso_local global i32 0, align 4
@C6 = common dso_local global i32 0, align 4
@C7 = common dso_local global i32 0, align 4
@D2 = common dso_local global i32 0, align 4
@matrix = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = call i32 (...) @i2c_init()
  %2 = load i32, i32* @E6, align 4
  %3 = call i32 @setPinOutput(i32 %2)
  %4 = load i32, i32* @D7, align 4
  %5 = call i32 @setPinOutput(i32 %4)
  %6 = load i32, i32* @B7, align 4
  %7 = call i32 @setPinOutput(i32 %6)
  %8 = load i32, i32* @B7, align 4
  %9 = call i32 @writePinHigh(i32 %8)
  %10 = load i32, i32* @F7, align 4
  %11 = call i32 @setPinOutput(i32 %10)
  %12 = load i32, i32* @F6, align 4
  %13 = call i32 @setPinOutput(i32 %12)
  %14 = load i32, i32* @F5, align 4
  %15 = call i32 @setPinOutput(i32 %14)
  %16 = load i32, i32* @F4, align 4
  %17 = call i32 @setPinOutput(i32 %16)
  %18 = load i32, i32* @F1, align 4
  %19 = call i32 @setPinOutput(i32 %18)
  %20 = load i32, i32* @F0, align 4
  %21 = call i32 @setPinOutput(i32 %20)
  %22 = load i32, i32* @D6, align 4
  %23 = call i32 @setPinOutput(i32 %22)
  %24 = load i32, i32* @B4, align 4
  %25 = call i32 @setPinOutput(i32 %24)
  %26 = load i32, i32* @B5, align 4
  %27 = call i32 @setPinOutput(i32 %26)
  %28 = load i32, i32* @B6, align 4
  %29 = call i32 @setPinOutput(i32 %28)
  %30 = load i32, i32* @C6, align 4
  %31 = call i32 @setPinOutput(i32 %30)
  %32 = load i32, i32* @C7, align 4
  %33 = call i32 @setPinOutput(i32 %32)
  %34 = load i32, i32* @D2, align 4
  %35 = call i32 @setPinInput(i32 %34)
  %36 = call i32 (...) @capSetup()
  %37 = call i32 @writeDataToTS(i32 6, i32 18)
  %38 = load i32, i32* @matrix, align 4
  %39 = load i32, i32* @MATRIX_ROWS, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32 %38, i32 0, i32 %42)
  %44 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @i2c_init(...) #1

declare dso_local i32 @setPinOutput(i32) #1

declare dso_local i32 @writePinHigh(i32) #1

declare dso_local i32 @setPinInput(i32) #1

declare dso_local i32 @capSetup(...) #1

declare dso_local i32 @writeDataToTS(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
