; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/bl4ckout31/src/extr_irq.c_handle_irq.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson03/2/bl4ckout31/src/extr_irq.c_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_PENDING_1 = common dso_local global i32 0, align 4
@SYSTEM_TIMER_IRQ_1 = common dso_local global i32 0, align 4
@AUX_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown pending irq: %x\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_irq() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @IRQ_PENDING_1, align 4
  %3 = call i32 @get32(i32 %2)
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %33, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @SYSTEM_TIMER_IRQ_1, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = call i32 (...) @handle_timer_irq()
  %14 = load i32, i32* @SYSTEM_TIMER_IRQ_1, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %1, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %1, align 4
  br label %33

18:                                               ; preds = %7
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @AUX_IRQ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = call i32 (...) @handle_uart_irq()
  %25 = load i32, i32* @AUX_IRQ, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %1, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %1, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %12
  br label %4

34:                                               ; preds = %4
  ret void
}

declare dso_local i32 @get32(i32) #1

declare dso_local i32 @handle_timer_irq(...) #1

declare dso_local i32 @handle_uart_irq(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
