; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_uart.c_UARTCharGet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_uart.c_UARTCharGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_O_FR = common dso_local global i64 0, align 8
@UART_FR_RXFE = common dso_local global i32 0, align 4
@UART_O_DR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @UARTCharGet(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @UARTBaseValid(i64 %3)
  %5 = call i32 @ASSERT(i32 %4)
  br label %6

6:                                                ; preds = %15, %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @UART_O_FR, align 8
  %9 = add i64 %7, %8
  %10 = call i64 @HWREG(i64 %9)
  %11 = load i32, i32* @UART_FR_RXFE, align 4
  %12 = sext i32 %11 to i64
  %13 = and i64 %10, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %6

16:                                               ; preds = %6
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @UART_O_DR, align 8
  %19 = add i64 %17, %18
  %20 = call i64 @HWREG(i64 %19)
  ret i64 %20
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @UARTBaseValid(i64) #1

declare dso_local i64 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
