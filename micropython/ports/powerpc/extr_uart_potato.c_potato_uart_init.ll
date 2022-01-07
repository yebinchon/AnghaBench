; ModuleID = '/home/carl/AnghaBench/micropython/ports/powerpc/extr_uart_potato.c_potato_uart_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/powerpc/extr_uart_potato.c_potato_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POTATO_UART_BASE = common dso_local global i32 0, align 4
@potato_uart_base = common dso_local global i32 0, align 4
@POTATO_CONSOLE_CLOCK_DIV = common dso_local global i32 0, align 4
@PROC_FREQ = common dso_local global i32 0, align 4
@UART_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @potato_uart_init() #0 {
  %1 = load i32, i32* @POTATO_UART_BASE, align 4
  store i32 %1, i32* @potato_uart_base, align 4
  %2 = load i32, i32* @POTATO_CONSOLE_CLOCK_DIV, align 4
  %3 = load i32, i32* @PROC_FREQ, align 4
  %4 = load i32, i32* @UART_FREQ, align 4
  %5 = call i32 @potato_uart_divisor(i32 %3, i32 %4)
  %6 = call i32 @potato_uart_reg_write(i32 %2, i32 %5)
  ret void
}

declare dso_local i32 @potato_uart_reg_write(i32, i32) #1

declare dso_local i32 @potato_uart_divisor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
