; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_uart.c_uart_getchar.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/common/extr_uart.c_uart_getchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rx_buffer_head = common dso_local global i32 0, align 4
@rx_buffer_tail = common dso_local global i32 0, align 4
@RX_BUFFER_SIZE = common dso_local global i64 0, align 8
@rx_buffer = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uart_getchar() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  br label %3

3:                                                ; preds = %7, %0
  %4 = load i32, i32* @rx_buffer_head, align 4
  %5 = load i32, i32* @rx_buffer_tail, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %3

8:                                                ; preds = %3
  %9 = load i32, i32* @rx_buffer_tail, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @RX_BUFFER_SIZE, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i64 0, i64* %2, align 8
  br label %16

16:                                               ; preds = %15, %8
  %17 = load i64*, i64** @rx_buffer, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %2, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @rx_buffer_tail, align 4
  %23 = load i64, i64* %1, align 8
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
