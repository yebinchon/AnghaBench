; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_timer.c_timer_get_source_freq.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_timer.c_timer_get_source_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@RCC = common dso_local global %struct.TYPE_2__* null, align 8
@RCC_CFGR_PPRE2 = common dso_local global i32 0, align 4
@RCC_CFGR_PPRE1 = common dso_local global i32 0, align 4
@RCC_CFGR_PPRE = common dso_local global i32 0, align 4
@RCC_D2CFGR_D2PPRE1 = common dso_local global i32 0, align 4
@RCC_D2CFGR_D2PPRE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_get_source_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sle i32 8, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = icmp sle i32 %11, 11
  br i1 %12, label %13, label %20

13:                                               ; preds = %10, %1
  %14 = call i32 (...) @HAL_RCC_GetPCLK2Freq()
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RCC_CFGR_PPRE2, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %10, %7
  %21 = call i32 (...) @HAL_RCC_GetPCLK1Freq()
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RCC_CFGR_PPRE1, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %13
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @HAL_RCC_GetPCLK2Freq(...) #1

declare dso_local i32 @HAL_RCC_GetPCLK1Freq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
