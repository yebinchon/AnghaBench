; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/1/bl4ckout31/src/extr_mini_uart.c_uart_init.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/1/bl4ckout31/src/extr_mini_uart.c_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPFSEL1 = common dso_local global i32 0, align 4
@GPPUD = common dso_local global i32 0, align 4
@GPPUDCLK0 = common dso_local global i32 0, align 4
@AUX_ENABLES = common dso_local global i32 0, align 4
@AUX_MU_CNTL_REG = common dso_local global i32 0, align 4
@AUX_MU_IER_REG = common dso_local global i32 0, align 4
@AUX_MU_LCR_REG = common dso_local global i32 0, align 4
@AUX_MU_MCR_REG = common dso_local global i32 0, align 4
@SYSTEM_FREQ_CLOCK = common dso_local global i32 0, align 4
@BAUD_RATE = common dso_local global i32 0, align 4
@AUX_MU_BAUD_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GPFSEL1, align 4
  %4 = call i32 @get32(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = and i32 %5, -28673
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = or i32 %7, 8192
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = and i32 %9, -229377
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = or i32 %11, 65536
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @GPFSEL1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @put32(i32 %13, i32 %14)
  %16 = load i32, i32* @GPPUD, align 4
  %17 = call i32 @put32(i32 %16, i32 0)
  %18 = call i32 @delay(i32 150)
  %19 = load i32, i32* @GPPUDCLK0, align 4
  %20 = call i32 @put32(i32 %19, i32 49152)
  %21 = call i32 @delay(i32 150)
  %22 = load i32, i32* @GPPUDCLK0, align 4
  %23 = call i32 @put32(i32 %22, i32 0)
  %24 = load i32, i32* @AUX_ENABLES, align 4
  %25 = call i32 @put32(i32 %24, i32 1)
  %26 = load i32, i32* @AUX_MU_CNTL_REG, align 4
  %27 = call i32 @put32(i32 %26, i32 0)
  %28 = load i32, i32* @AUX_MU_IER_REG, align 4
  %29 = call i32 @put32(i32 %28, i32 0)
  %30 = load i32, i32* @AUX_MU_LCR_REG, align 4
  %31 = call i32 @put32(i32 %30, i32 3)
  %32 = load i32, i32* @AUX_MU_MCR_REG, align 4
  %33 = call i32 @put32(i32 %32, i32 0)
  %34 = load i32, i32* @SYSTEM_FREQ_CLOCK, align 4
  %35 = load i32, i32* @BAUD_RATE, align 4
  %36 = mul nsw i32 8, %35
  %37 = sdiv i32 %34, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* @AUX_MU_BAUD_REG, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @put32(i32 %39, i32 %40)
  %42 = load i32, i32* @AUX_MU_CNTL_REG, align 4
  %43 = call i32 @put32(i32 %42, i32 3)
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
