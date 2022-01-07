; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/gcrisis/uart-boot/src/extr_uart.c_uart_init.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/gcrisis/uart-boot/src/extr_uart.c_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPFSEL1 = common dso_local global i32 0, align 4
@GPPUD = common dso_local global i32 0, align 4
@GPPUDCLK0 = common dso_local global i32 0, align 4
@UART_CR = common dso_local global i32 0, align 4
@UART_IBRD = common dso_local global i32 0, align 4
@UART_FBRD = common dso_local global i32 0, align 4
@UART_LCRH = common dso_local global i32 0, align 4
@UART_IMSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @GPFSEL1, align 4
  %7 = call i32 @get32(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, -28673
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, 16384
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, -229377
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, 131072
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @GPFSEL1, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @put32(i32 %16, i32 %17)
  %19 = load i32, i32* @GPPUD, align 4
  %20 = call i32 @put32(i32 %19, i32 0)
  %21 = call i32 @delay(i32 150)
  %22 = load i32, i32* @GPPUDCLK0, align 4
  %23 = call i32 @put32(i32 %22, i32 49152)
  %24 = call i32 @delay(i32 150)
  %25 = load i32, i32* @GPPUDCLK0, align 4
  %26 = call i32 @put32(i32 %25, i32 0)
  %27 = load i32, i32* @UART_CR, align 4
  %28 = call i32 @put32(i32 %27, i32 0)
  %29 = load i32, i32* %2, align 4
  %30 = sdiv i32 3000000, %29
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %2, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float 3.000000e+06, %32
  %34 = load i32, i32* %4, align 4
  %35 = sitofp i32 %34 to float
  %36 = fsub float %33, %35
  %37 = fmul float %36, 6.400000e+01
  %38 = fpext float %37 to double
  %39 = fadd double %38, 5.000000e-01
  %40 = fptosi double %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @UART_IBRD, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @put32(i32 %41, i32 %42)
  %44 = load i32, i32* @UART_FBRD, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @put32(i32 %44, i32 %45)
  %47 = load i32, i32* @UART_LCRH, align 4
  %48 = call i32 @put32(i32 %47, i32 96)
  %49 = load i32, i32* @UART_IMSC, align 4
  %50 = call i32 @put32(i32 %49, i32 0)
  %51 = load i32, i32* @UART_CR, align 4
  %52 = call i32 @put32(i32 %51, i32 769)
  ret void
}

declare dso_local i32 @get32(i32) #1

declare dso_local i32 @put32(i32, i32) #1

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
