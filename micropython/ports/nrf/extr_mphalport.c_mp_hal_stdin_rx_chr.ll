; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/extr_mphalport.c_mp_hal_stdin_rx_chr.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/extr_mphalport.c_mp_hal_stdin_rx_chr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@board_stdio_uart = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_hal_stdin_rx_chr() #0 {
  br label %1

1:                                                ; preds = %14, %0
  %2 = load i32, i32* @board_stdio_uart, align 4
  %3 = call i32* @MP_STATE_PORT(i32 %2)
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, i32* @board_stdio_uart, align 4
  %7 = call i32* @MP_STATE_PORT(i32 %6)
  %8 = call i64 @uart_rx_any(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load i32, i32* @board_stdio_uart, align 4
  %12 = call i32* @MP_STATE_PORT(i32 %11)
  %13 = call i32 @uart_rx_char(i32* %12)
  ret i32 %13

14:                                               ; preds = %5, %1
  %15 = call i32 (...) @__WFI()
  br label %1
}

declare dso_local i32* @MP_STATE_PORT(i32) #1

declare dso_local i64 @uart_rx_any(i32*) #1

declare dso_local i32 @uart_rx_char(i32*) #1

declare dso_local i32 @__WFI(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
