; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp32/stubs/extr_uart.c_set_baud_rate.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp32/stubs/extr_uart.c_set_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_CLKDIV_M = common dso_local global i32 0, align 4
@UART_CLKDIV_FRAG_S = common dso_local global i32 0, align 4
@UART_CLKDIV_FRAG_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_baud_rate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @UART_CLKDIV_REG(i32 %11)
  %13 = call i32 @REG_READ(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @UART_CLKDIV_M, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @UART_CLKDIV_FRAG_S, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @UART_CLKDIV_FRAG_V, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sdiv i32 %30, %31
  %33 = call i32 @uart_div_modify(i32 %29, i32 %32)
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @UART_CLKDIV_REG(i32) #1

declare dso_local i32 @uart_div_modify(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
