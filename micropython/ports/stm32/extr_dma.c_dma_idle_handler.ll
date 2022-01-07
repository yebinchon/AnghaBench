; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_dma.c_dma_idle_handler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_dma.c_dma_idle_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@dma_idle_handler.controller_mask = internal constant [1 x i32] [i32 129], align 4
@DMA_SYSTICK_LOG2 = common dso_local global i32 0, align 4
@dma_idle = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DMA_IDLE_TICK_MAX = common dso_local global i64 0, align 8
@dma_enable_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dma_idle_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_idle_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @DMA_IDLE_ENABLED()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @DMA_IDLE_TICK(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  br label %56

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @DMA_SYSTICK_LOG2, align 4
  %14 = ashr i32 %12, %13
  %15 = and i32 %14, 1
  store i32 %15, i32* %3, align 4
  %16 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_idle, i32 0, i32 0), align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %56

23:                                               ; preds = %11
  %24 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_idle, i32 0, i32 0), align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* @DMA_IDLE_TICK_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %23
  %33 = load i32, i32* @dma_enable_mask, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* @dma_idle_handler.controller_mask, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %33, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_idle, i32 0, i32 0), align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 (...) @__HAL_RCC_DMA1_CLK_DISABLE()
  br label %49

49:                                               ; preds = %47, %40
  br label %55

50:                                               ; preds = %32
  %51 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dma_idle, i32 0, i32 0), align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 1, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %49
  br label %56

56:                                               ; preds = %10, %22, %55, %23
  ret void
}

declare dso_local i32 @DMA_IDLE_ENABLED(...) #1

declare dso_local i32 @DMA_IDLE_TICK(i32) #1

declare dso_local i32 @__HAL_RCC_DMA1_CLK_DISABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
