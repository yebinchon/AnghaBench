; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/1/H-4ND-H/src/extr_mini_uart.c_uart_init.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/1/H-4ND-H/src/extr_mini_uart.c_uart_init.c"
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
@AUX_MU_BAUD_REG = common dso_local global i32 0, align 4
@BAUD_REG_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GPFSEL1, align 4
  %3 = call i32 @get32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = and i32 %4, -28673
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = or i32 %6, 8192
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, -229377
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = or i32 %10, 65536
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @GPFSEL1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @put32(i32 %12, i32 %13)
  %15 = load i32, i32* @GPPUD, align 4
  %16 = call i32 @put32(i32 %15, i32 0)
  %17 = call i32 @delay(i32 150)
  %18 = load i32, i32* @GPPUDCLK0, align 4
  %19 = call i32 @put32(i32 %18, i32 49152)
  %20 = call i32 @delay(i32 150)
  %21 = load i32, i32* @GPPUDCLK0, align 4
  %22 = call i32 @put32(i32 %21, i32 0)
  %23 = load i32, i32* @AUX_ENABLES, align 4
  %24 = call i32 @put32(i32 %23, i32 1)
  %25 = load i32, i32* @AUX_MU_CNTL_REG, align 4
  %26 = call i32 @put32(i32 %25, i32 0)
  %27 = load i32, i32* @AUX_MU_IER_REG, align 4
  %28 = call i32 @put32(i32 %27, i32 0)
  %29 = load i32, i32* @AUX_MU_LCR_REG, align 4
  %30 = call i32 @put32(i32 %29, i32 3)
  %31 = load i32, i32* @AUX_MU_MCR_REG, align 4
  %32 = call i32 @put32(i32 %31, i32 0)
  %33 = load i32, i32* @AUX_MU_BAUD_REG, align 4
  %34 = load i32, i32* @BAUD_REG_VAL, align 4
  %35 = call i32 @put32(i32 %33, i32 %34)
  %36 = load i32, i32* @AUX_MU_CNTL_REG, align 4
  %37 = call i32 @put32(i32 %36, i32 3)
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
