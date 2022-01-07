; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversuart.h_DMA2_Stream5_IRQHandler.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversuart.h_DMA2_Stream5_IRQHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@DMA2 = common dso_local global %struct.TYPE_4__* null, align 8
@DMA_HISR_TEIF5 = common dso_local global i32 0, align 4
@DMA_HISR_DMEIF5 = common dso_local global i32 0, align 4
@DMA_HISR_FEIF5 = common dso_local global i32 0, align 4
@DMA_HIFCR_CTEIF5 = common dso_local global i32 0, align 4
@DMA_HIFCR_CDMEIF5 = common dso_local global i32 0, align 4
@DMA_HIFCR_CFEIF5 = common dso_local global i32 0, align 4
@DMA_SxCR_EN = common dso_local global i32 0, align 4
@DMA2_Stream5 = common dso_local global %struct.TYPE_3__* null, align 8
@uart_ring_esp_gps = common dso_local global i32 0, align 4
@DMA_HIFCR_CTCIF5 = common dso_local global i32 0, align 4
@DMA_HIFCR_CHTIF5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMA2_Stream5_IRQHandler() #0 {
  %1 = call i32 (...) @ENTER_CRITICAL()
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @DMA_HISR_TEIF5, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DMA_HISR_DMEIF5, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DMA_HISR_FEIF5, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15, %8, %0
  %23 = load i32, i32* @DMA_HIFCR_CTEIF5, align 4
  %24 = load i32, i32* @DMA_HIFCR_CDMEIF5, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @DMA_HIFCR_CFEIF5, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @DMA_SxCR_EN, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @DMA2_Stream5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %22, %15
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @DMA2_Stream5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_pointer_handler(i32* @uart_ring_esp_gps, i32 %38)
  %40 = load i32, i32* @DMA_HIFCR_CTCIF5, align 4
  %41 = load i32, i32* @DMA_HIFCR_CHTIF5, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = call i32 (...) @EXIT_CRITICAL()
  ret void
}

declare dso_local i32 @ENTER_CRITICAL(...) #1

declare dso_local i32 @dma_pointer_handler(i32*, i32) #1

declare dso_local i32 @EXIT_CRITICAL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
