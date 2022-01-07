; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_uart.c_UARTConfigGetExpClk.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_uart.c_UARTConfigGetExpClk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_O_IBRD = common dso_local global i64 0, align 8
@UART_O_FBRD = common dso_local global i64 0, align 8
@UART_O_CTL = common dso_local global i64 0, align 8
@UART_CTL_HSE = common dso_local global i32 0, align 4
@UART_O_LCRH = common dso_local global i64 0, align 8
@UART_LCRH_SPS = common dso_local global i32 0, align 4
@UART_LCRH_WLEN_M = common dso_local global i32 0, align 4
@UART_LCRH_STP2 = common dso_local global i32 0, align 4
@UART_LCRH_EPS = common dso_local global i32 0, align 4
@UART_LCRH_PEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UARTConfigGetExpClk(i64 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @UARTBaseValid(i64 %11)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @UART_O_IBRD, align 8
  %16 = add i64 %14, %15
  %17 = call i32 @HWREG(i64 %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @UART_O_FBRD, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @HWREG(i64 %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = mul i64 %24, 4
  %26 = load i64, i64* %9, align 8
  %27 = mul i64 64, %26
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %27, %28
  %30 = udiv i64 %25, %29
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @UART_O_CTL, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @HWREG(i64 %34)
  %36 = load i32, i32* @UART_CTL_HSE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %4
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %41, 2
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %39, %4
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @UART_O_LCRH, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @HWREG(i64 %46)
  %48 = load i32, i32* @UART_LCRH_SPS, align 4
  %49 = load i32, i32* @UART_LCRH_WLEN_M, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @UART_LCRH_STP2, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @UART_LCRH_EPS, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @UART_LCRH_PEN, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %47, %56
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %8, align 8
  store i64 %58, i64* %59, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @UARTBaseValid(i64) #1

declare dso_local i32 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
