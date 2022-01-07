; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_uart.c_uart_putchar.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_uart.c_uart_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tx_buffer_head = common dso_local global i32 0, align 4
@TX_BUFFER_SIZE = common dso_local global i64 0, align 8
@tx_buffer_tail = common dso_local global i64 0, align 8
@tx_buffer = common dso_local global i64* null, align 8
@RXEN0 = common dso_local global i32 0, align 4
@TXEN0 = common dso_local global i32 0, align 4
@RXCIE0 = common dso_local global i32 0, align 4
@UDRIE0 = common dso_local global i32 0, align 4
@UCSR0B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_putchar(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @tx_buffer_head, align 4
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @TX_BUFFER_SIZE, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %10, %1
  br label %12

12:                                               ; preds = %16, %11
  %13 = load i64, i64* @tx_buffer_tail, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %12

17:                                               ; preds = %12
  %18 = load i64, i64* %2, align 8
  %19 = load i64*, i64** @tx_buffer, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %3, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @tx_buffer_head, align 4
  %24 = load i32, i32* @RXEN0, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* @TXEN0, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @RXCIE0, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @UDRIE0, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  store i32 %34, i32* @UCSR0B, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
