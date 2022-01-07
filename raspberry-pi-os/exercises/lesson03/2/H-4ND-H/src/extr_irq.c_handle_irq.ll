; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/H-4ND-H/src/extr_irq.c_handle_irq.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/H-4ND-H/src/extr_irq.c_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_PENDING_1 = common dso_local global i32 0, align 4
@AUX_IRQ = common dso_local global i32 0, align 4
@SYSTEM_TIMER_IRQ_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown pending irq: %x\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_irq() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @IRQ_PENDING_1, align 4
  %3 = call i32 @get32(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @AUX_IRQ, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = call i32 (...) @handle_uart_irq()
  %10 = load i32, i32* @AUX_IRQ, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %8, %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @SYSTEM_TIMER_IRQ_1, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = call i32 (...) @handle_timer_irq()
  %21 = load i32, i32* @SYSTEM_TIMER_IRQ_1, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %1, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %1, align 4
  br label %32

25:                                               ; preds = %14
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %19
  ret void
}

declare dso_local i32 @get32(i32) #1

declare dso_local i32 @handle_uart_irq(...) #1

declare dso_local i32 @handle_timer_irq(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
