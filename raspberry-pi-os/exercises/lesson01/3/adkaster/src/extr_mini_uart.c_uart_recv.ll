; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/adkaster/src/extr_mini_uart.c_uart_recv.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/3/adkaster/src/extr_mini_uart.c_uart_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUX_MU_LSR_REG = common dso_local global i32 0, align 4
@AUX_MU_IO_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @uart_recv() #0 {
  br label %1

1:                                                ; preds = %0, %7
  %2 = load i32, i32* @AUX_MU_LSR_REG, align 4
  %3 = call i32 @get32(i32 %2)
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  br label %1

8:                                                ; preds = %6
  %9 = load i32, i32* @AUX_MU_IO_REG, align 4
  %10 = call i32 @get32(i32 %9)
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i8
  ret i8 %12
}

declare dso_local i32 @get32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
