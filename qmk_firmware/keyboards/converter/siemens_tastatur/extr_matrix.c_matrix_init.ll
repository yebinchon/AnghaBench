; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/siemens_tastatur/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/siemens_tastatur/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A0 = common dso_local global i32 0, align 4
@A1 = common dso_local global i32 0, align 4
@A2 = common dso_local global i32 0, align 4
@A3 = common dso_local global i32 0, align 4
@A4 = common dso_local global i32 0, align 4
@A5 = common dso_local global i32 0, align 4
@A6 = common dso_local global i32 0, align 4
@A7 = common dso_local global i32 0, align 4
@A8 = common dso_local global i32 0, align 4
@A9 = common dso_local global i32 0, align 4
@A10 = common dso_local global i32 0, align 4
@B3 = common dso_local global i32 0, align 4
@B4 = common dso_local global i32 0, align 4
@B5 = common dso_local global i32 0, align 4
@B6 = common dso_local global i32 0, align 4
@B7 = common dso_local global i32 0, align 4
@B8 = common dso_local global i32 0, align 4
@B9 = common dso_local global i32 0, align 4
@B11 = common dso_local global i32 0, align 4
@B12 = common dso_local global i32 0, align 4
@B13 = common dso_local global i32 0, align 4
@B14 = common dso_local global i32 0, align 4
@B15 = common dso_local global i32 0, align 4
@matrix = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i32 0, align 4
@matrix_debouncing = common dso_local global i32 0, align 4
@EXTD1 = common dso_local global i32 0, align 4
@extcfg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = load i32, i32* @A0, align 4
  %2 = call i32 @setPinInputHigh(i32 %1)
  %3 = load i32, i32* @A1, align 4
  %4 = call i32 @setPinInputHigh(i32 %3)
  %5 = load i32, i32* @A2, align 4
  %6 = call i32 @setPinInputHigh(i32 %5)
  %7 = load i32, i32* @A3, align 4
  %8 = call i32 @setPinInputHigh(i32 %7)
  %9 = load i32, i32* @A4, align 4
  %10 = call i32 @setPinInputHigh(i32 %9)
  %11 = load i32, i32* @A5, align 4
  %12 = call i32 @setPinInputHigh(i32 %11)
  %13 = load i32, i32* @A6, align 4
  %14 = call i32 @setPinInputHigh(i32 %13)
  %15 = load i32, i32* @A7, align 4
  %16 = call i32 @setPinInputHigh(i32 %15)
  %17 = load i32, i32* @A8, align 4
  %18 = call i32 @setPinInputHigh(i32 %17)
  %19 = load i32, i32* @A9, align 4
  %20 = call i32 @setPinInputHigh(i32 %19)
  %21 = load i32, i32* @A10, align 4
  %22 = call i32 @setPinInputHigh(i32 %21)
  %23 = load i32, i32* @B3, align 4
  %24 = call i32 @setPinInputHigh(i32 %23)
  %25 = load i32, i32* @B4, align 4
  %26 = call i32 @setPinInputHigh(i32 %25)
  %27 = load i32, i32* @B5, align 4
  %28 = call i32 @setPinInputHigh(i32 %27)
  %29 = load i32, i32* @B6, align 4
  %30 = call i32 @setPinInputHigh(i32 %29)
  %31 = load i32, i32* @B7, align 4
  %32 = call i32 @setPinInputHigh(i32 %31)
  %33 = load i32, i32* @B8, align 4
  %34 = call i32 @setPinInputHigh(i32 %33)
  %35 = load i32, i32* @B9, align 4
  %36 = call i32 @setPinInputHigh(i32 %35)
  %37 = load i32, i32* @B11, align 4
  %38 = call i32 @setPinInputHigh(i32 %37)
  %39 = load i32, i32* @B12, align 4
  %40 = call i32 @setPinInputHigh(i32 %39)
  %41 = load i32, i32* @B13, align 4
  %42 = call i32 @setPinInputHigh(i32 %41)
  %43 = load i32, i32* @B14, align 4
  %44 = call i32 @setPinInputHigh(i32 %43)
  %45 = load i32, i32* @B15, align 4
  %46 = call i32 @setPinInputHigh(i32 %45)
  %47 = load i32, i32* @matrix, align 4
  %48 = load i32, i32* @MATRIX_ROWS, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i32 %47, i32 0, i32 %51)
  %53 = load i32, i32* @matrix_debouncing, align 4
  %54 = load i32, i32* @MATRIX_ROWS, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memset(i32 %53, i32 0, i32 %57)
  %59 = call i32 (...) @matrix_init_quantum()
  %60 = call i32 @extStart(i32* @EXTD1, i32* @extcfg)
  ret void
}

declare dso_local i32 @setPinInputHigh(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @matrix_init_quantum(...) #1

declare dso_local i32 @extStart(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
