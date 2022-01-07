; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_systick.c_mp_hal_delay_us.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_systick.c_mp_hal_delay_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_STATE_ENABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_delay_us(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i64 (...) @query_irq()
  %7 = load i64, i64* @IRQ_STATE_ENABLED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = call i32 (...) @mp_hal_ticks_us()
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %17, %9
  %12 = call i32 (...) @mp_hal_ticks_us()
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %11

18:                                               ; preds = %11
  br label %32

19:                                               ; preds = %1
  %20 = call i32 (...) @HAL_RCC_GetSysClockFreq()
  %21 = sdiv i32 %20, 2000000
  %22 = load i32, i32* %2, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %30, %19
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %25

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %18
  ret void
}

declare dso_local i64 @query_irq(...) #1

declare dso_local i32 @mp_hal_ticks_us(...) #1

declare dso_local i32 @HAL_RCC_GetSysClockFreq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
