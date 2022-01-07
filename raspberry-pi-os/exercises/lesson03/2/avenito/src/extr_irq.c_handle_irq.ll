; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/avenito/src/extr_irq.c_handle_irq.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/avenito/src/extr_irq.c_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_PENDING_1 = common dso_local global i32 0, align 4
@AUX_IRQ = common dso_local global i32 0, align 4
@SYSTEM_TIMER_IRQ_1 = common dso_local global i32 0, align 4
@miniUART_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_irq() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @IRQ_PENDING_1, align 4
  %4 = call i32 @get32(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @AUX_IRQ, align 4
  %6 = call i32 @get32(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @SYSTEM_TIMER_IRQ_1, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (...) @handle_timer_irq()
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @miniUART_IRQ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (...) @handle_uart_irq()
  br label %20

20:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @get32(i32) #1

declare dso_local i32 @handle_timer_irq(...) #1

declare dso_local i32 @handle_uart_irq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
