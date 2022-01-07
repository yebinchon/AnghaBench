; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_uart.c_uart_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_uart.c_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32*, i64, i32, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { %struct.TYPE_22__, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32, i64, i32, i64, i64, i64, i64 }

@AF_FN_UART = common dso_local global i32 0, align 4
@CHAR_WIDTH_8BIT = common dso_local global i32 0, align 4
@CHAR_WIDTH_9BIT = common dso_local global i32 0, align 4
@IRQ_PRI_UART = common dso_local global i32 0, align 4
@MICROPY_HW_UART10_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART10_TX = common dso_local global i32* null, align 8
@MICROPY_HW_UART1_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART1_TX = common dso_local global i32* null, align 8
@MICROPY_HW_UART2_CTS = common dso_local global i32* null, align 8
@MICROPY_HW_UART2_RTS = common dso_local global i32* null, align 8
@MICROPY_HW_UART2_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART2_TX = common dso_local global i32* null, align 8
@MICROPY_HW_UART3_CTS = common dso_local global i32* null, align 8
@MICROPY_HW_UART3_RTS = common dso_local global i32* null, align 8
@MICROPY_HW_UART3_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART3_TX = common dso_local global i32* null, align 8
@MICROPY_HW_UART4_CTS = common dso_local global i32* null, align 8
@MICROPY_HW_UART4_RTS = common dso_local global i32* null, align 8
@MICROPY_HW_UART4_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART4_TX = common dso_local global i32* null, align 8
@MICROPY_HW_UART5_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART5_TX = common dso_local global i32* null, align 8
@MICROPY_HW_UART6_CTS = common dso_local global i32* null, align 8
@MICROPY_HW_UART6_RTS = common dso_local global i32* null, align 8
@MICROPY_HW_UART6_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART6_TX = common dso_local global i32* null, align 8
@MICROPY_HW_UART7_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART7_TX = common dso_local global i32* null, align 8
@MICROPY_HW_UART8_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART8_TX = common dso_local global i32* null, align 8
@MICROPY_HW_UART9_RX = common dso_local global i32* null, align 8
@MICROPY_HW_UART9_TX = common dso_local global i32* null, align 8
@MP_HAL_PIN_MODE_ALT = common dso_local global i64 0, align 8
@MP_HAL_PIN_PULL_UP = common dso_local global i64 0, align 8
@UART10 = common dso_local global %struct.TYPE_24__* null, align 8
@UART10_IRQn = common dso_local global i32 0, align 4
@UART4 = common dso_local global %struct.TYPE_24__* null, align 8
@UART4_IRQn = common dso_local global i32 0, align 4
@UART5 = common dso_local global %struct.TYPE_24__* null, align 8
@UART5_IRQn = common dso_local global i32 0, align 4
@UART7 = common dso_local global %struct.TYPE_24__* null, align 8
@UART7_IRQn = common dso_local global i32 0, align 4
@UART8 = common dso_local global %struct.TYPE_24__* null, align 8
@UART8_IRQn = common dso_local global i32 0, align 4
@UART9 = common dso_local global %struct.TYPE_24__* null, align 8
@UART9_IRQn = common dso_local global i32 0, align 4
@UART_HWCONTROL_CTS = common dso_local global i64 0, align 8
@UART_HWCONTROL_RTS = common dso_local global i64 0, align 8
@UART_MODE_TX_RX = common dso_local global i32 0, align 4
@UART_OVERSAMPLING_16 = common dso_local global i32 0, align 4
@UART_PARITY_NONE = common dso_local global i64 0, align 8
@UART_WORDLENGTH_9B = common dso_local global i64 0, align 8
@USART1 = common dso_local global %struct.TYPE_24__* null, align 8
@USART1_IRQn = common dso_local global i32 0, align 4
@USART2 = common dso_local global %struct.TYPE_24__* null, align 8
@USART2_IRQn = common dso_local global i32 0, align 4
@USART3 = common dso_local global %struct.TYPE_24__* null, align 8
@USART3_8_IRQn = common dso_local global i32 0, align 4
@USART3_IRQn = common dso_local global i32 0, align 4
@USART4 = common dso_local global %struct.TYPE_24__* null, align 8
@USART5 = common dso_local global %struct.TYPE_24__* null, align 8
@USART6 = common dso_local global %struct.TYPE_24__* null, align 8
@USART6_IRQn = common dso_local global i32 0, align 4
@USART7 = common dso_local global %struct.TYPE_24__* null, align 8
@USART8 = common dso_local global %struct.TYPE_24__* null, align 8
@USART_CR1_IE_ALL = common dso_local global i32 0, align 4
@USART_CR2_IE_ALL = common dso_local global i32 0, align 4
@USART_CR3_IE_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_init(%struct.TYPE_23__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32*], align 16
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_25__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = bitcast [4 x i32*]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 32, i1 false)
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %24 [
  ]

24:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
