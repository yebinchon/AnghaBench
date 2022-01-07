; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_uart.c_uart_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_uart.c_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_CPU = common dso_local global i32 0, align 4
@UBRR0 = common dso_local global i32 0, align 4
@U2X0 = common dso_local global i32 0, align 4
@UCSR0A = common dso_local global i32 0, align 4
@RXEN0 = common dso_local global i32 0, align 4
@TXEN0 = common dso_local global i32 0, align 4
@RXCIE0 = common dso_local global i32 0, align 4
@UCSR0B = common dso_local global i32 0, align 4
@UCSZ01 = common dso_local global i32 0, align 4
@UCSZ00 = common dso_local global i32 0, align 4
@UCSR0C = common dso_local global i32 0, align 4
@tx_buffer_tail = common dso_local global i64 0, align 8
@tx_buffer_head = common dso_local global i64 0, align 8
@rx_buffer_tail = common dso_local global i64 0, align 8
@rx_buffer_head = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @cli()
  %4 = load i32, i32* @F_CPU, align 4
  %5 = sdiv i32 %4, 4
  %6 = load i32, i32* %2, align 4
  %7 = sdiv i32 %5, %6
  %8 = sub nsw i32 %7, 1
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* @UBRR0, align 4
  %10 = load i32, i32* @U2X0, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* @UCSR0A, align 4
  %12 = load i32, i32* @RXEN0, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* @TXEN0, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @RXCIE0, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  store i32 %19, i32* @UCSR0B, align 4
  %20 = load i32, i32* @UCSZ01, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* @UCSZ00, align 4
  %23 = shl i32 1, %22
  %24 = or i32 %21, %23
  store i32 %24, i32* @UCSR0C, align 4
  store i64 0, i64* @tx_buffer_tail, align 8
  store i64 0, i64* @tx_buffer_head, align 8
  store i64 0, i64* @rx_buffer_tail, align 8
  store i64 0, i64* @rx_buffer_head, align 8
  %25 = call i32 (...) @sei()
  ret void
}

declare dso_local i32 @cli(...) #1

declare dso_local i32 @sei(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
