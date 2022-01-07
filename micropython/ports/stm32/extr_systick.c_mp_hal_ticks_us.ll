; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_systick.c_mp_hal_ticks_us.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_systick.c_mp_hal_ticks_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@SysTick = common dso_local global %struct.TYPE_2__* null, align 8
@SysTick_CTRL_COUNTFLAG_Msk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_hal_ticks_us() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @disable_irq()
  store i32 %6, i32* %1, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SysTick, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %2, align 4
  %10 = call i32 (...) @HAL_GetTick()
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SysTick, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @enable_irq(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SysTick_CTRL_COUNTFLAG_Msk, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 50
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20, %0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SysTick, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %2, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %3, align 4
  %34 = mul nsw i32 %33, 1000
  %35 = load i32, i32* %2, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = sdiv i32 %36, %38
  %40 = add nsw i32 %34, %39
  ret i32 %40
}

declare dso_local i32 @disable_irq(...) #1

declare dso_local i32 @HAL_GetTick(...) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
