; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_systick.c_HAL_Delay.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_systick.c_HAL_Delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_STATE_ENABLED = common dso_local global i64 0, align 8
@uwTick = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HAL_Delay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 (...) @query_irq()
  %5 = load i64, i64* @IRQ_STATE_ENABLED, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i64, i64* @uwTick, align 8
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %15, %7
  %10 = load i64, i64* @uwTick, align 8
  %11 = load i64, i64* %3, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load i64, i64* %2, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 (...) @__WFI()
  br label %9

17:                                               ; preds = %9
  br label %21

18:                                               ; preds = %1
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @mp_hal_delay_ms(i64 %19)
  br label %21

21:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @query_irq(...) #1

declare dso_local i32 @__WFI(...) #1

declare dso_local i32 @mp_hal_delay_ms(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
