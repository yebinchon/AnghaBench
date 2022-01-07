; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_mp_hal_delay_ms.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_mp_hal_delay_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HAL_NVIC_INT_CTRL_REG = common dso_local global i32 0, align 4
@HAL_VECTACTIVE_MASK = common dso_local global i32 0, align 4
@IRQ_STATE_ENABLED = common dso_local global i64 0, align 8
@HAL_tickCount = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_delay_ms(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @HAL_NVIC_INT_CTRL_REG, align 4
  %6 = load i32, i32* @HAL_VECTACTIVE_MASK, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = call i64 (...) @query_irq()
  %11 = load i64, i64* @IRQ_STATE_ENABLED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = call i32 (...) @MP_THREAD_GIL_EXIT()
  %15 = load i32, i32* @HAL_tickCount, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %22, %13
  %17 = load i32, i32* @HAL_tickCount, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @__WFI()
  br label %16

24:                                               ; preds = %16
  %25 = call i32 (...) @MP_THREAD_GIL_ENTER()
  br label %38

26:                                               ; preds = %9, %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %34, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = call i32 @UTILS_DELAY_US_TO_COUNT(i32 1000)
  %33 = call i32 @UtilsDelay(i32 %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %27

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %24
  ret void
}

declare dso_local i64 @query_irq(...) #1

declare dso_local i32 @MP_THREAD_GIL_EXIT(...) #1

declare dso_local i32 @__WFI(...) #1

declare dso_local i32 @MP_THREAD_GIL_ENTER(...) #1

declare dso_local i32 @UtilsDelay(i32) #1

declare dso_local i32 @UTILS_DELAY_US_TO_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
