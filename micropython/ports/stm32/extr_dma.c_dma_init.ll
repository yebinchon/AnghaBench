; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_dma.c_dma_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_dma.c_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@dma_handle = common dso_local global %struct.TYPE_12__** null, align 8
@DMA_PERIPH_TO_MEMORY = common dso_local global i32 0, align 4
@dma_last_sub_instance = common dso_local global i64* null, align 8
@dma_irqn = common dso_local global i32* null, align 8
@IRQ_PRI_DMA = common dso_local global i32 0, align 4
@HAL_DMA_STATE_READY = common dso_local global i32 0, align 4
@DMA1 = common dso_local global i32 0, align 4
@DMA2 = common dso_local global i32 0, align 4
@DMA2_Channel1 = common dso_local global i64 0, align 8
@NSTREAMS_PER_CONTROLLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_init(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = call i32 @memset(%struct.TYPE_12__* %11, i32 0, i32 24)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %73

15:                                               ; preds = %4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @dma_init_handle(%struct.TYPE_12__* %19, %struct.TYPE_11__* %20, i32 %21, i8* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @dma_handle, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %25, i64 %26
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @dma_enable_clock(i64 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DMA_SUB_INSTANCE_AS_UINT8(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DMA_PERIPH_TO_MEMORY, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = shl i32 %37, 7
  %39 = or i32 %33, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = load i64*, i64** @dma_last_sub_instance, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %15
  %48 = load i64, i64* %10, align 8
  %49 = load i64*, i64** @dma_last_sub_instance, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 %48, i64* %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = call i32 @HAL_DMA_DeInit(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = call i32 @HAL_DMA_Init(%struct.TYPE_12__* %54)
  %56 = load i32*, i32** @dma_irqn, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IRQn_NONNEG(i32 %59)
  %61 = load i32, i32* @IRQ_PRI_DMA, align 4
  %62 = call i32 @NVIC_SetPriority(i32 %60, i32 %61)
  br label %67

63:                                               ; preds = %15
  %64 = load i32, i32* @HAL_DMA_STATE_READY, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %47
  %68 = load i32*, i32** @dma_irqn, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @HAL_NVIC_EnableIRQ(i32 %71)
  br label %73

73:                                               ; preds = %67, %4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @dma_init_handle(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @dma_enable_clock(i64) #1

declare dso_local i32 @DMA_SUB_INSTANCE_AS_UINT8(i32) #1

declare dso_local i32 @HAL_DMA_DeInit(%struct.TYPE_12__*) #1

declare dso_local i32 @HAL_DMA_Init(%struct.TYPE_12__*) #1

declare dso_local i32 @NVIC_SetPriority(i32, i32) #1

declare dso_local i32 @IRQn_NONNEG(i32) #1

declare dso_local i32 @HAL_NVIC_EnableIRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
