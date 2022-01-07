; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/rs/src/extr_mini_uart.c_handle_uart_irq.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/rs/src/extr_mini_uart.c_handle_uart_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUX_MU_IIR_REG = common dso_local global i32 0, align 4
@MU_IIR_RX_READY = common dso_local global i32 0, align 4
@AUX_MU_IO_REG = common dso_local global i32 0, align 4
@MU_IIR_RX_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_uart_irq() #0 {
  %1 = alloca i8, align 1
  %2 = load i32, i32* @AUX_MU_IIR_REG, align 4
  %3 = call i32 @get32(i32 %2)
  %4 = load i32, i32* @MU_IIR_RX_READY, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load i32, i32* @AUX_MU_IO_REG, align 4
  %9 = call i32 @get32(i32 %8)
  %10 = and i32 %9, 255
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %1, align 1
  %12 = load i32, i32* @AUX_MU_IIR_REG, align 4
  %13 = load i32, i32* @MU_IIR_RX_CLR, align 4
  %14 = call i32 @put32(i32 %12, i32 %13)
  %15 = load i8, i8* %1, align 1
  %16 = call i32 @uart_send(i8 signext %15)
  br label %17

17:                                               ; preds = %7, %0
  ret void
}

declare dso_local i32 @get32(i32) #1

declare dso_local i32 @put32(i32, i32) #1

declare dso_local i32 @uart_send(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
