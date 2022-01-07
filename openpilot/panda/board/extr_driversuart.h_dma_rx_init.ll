; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversuart.h_dma_rx_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversuart.h_dma_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32 }

@uart_ring_esp_gps = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@DMA_SxFCR_DMDIS = common dso_local global i32 0, align 4
@DMA2_Stream5 = common dso_local global %struct.TYPE_10__* null, align 8
@USART1 = common dso_local global %struct.TYPE_9__* null, align 8
@DMA_SxCR_CHSEL_2 = common dso_local global i32 0, align 4
@DMA_SxCR_MINC = common dso_local global i32 0, align 4
@DMA_SxCR_CIRC = common dso_local global i32 0, align 4
@DMA_SxCR_HTIE = common dso_local global i32 0, align 4
@DMA_SxCR_TCIE = common dso_local global i32 0, align 4
@DMA_SxCR_TEIE = common dso_local global i32 0, align 4
@DMA_SxCR_DMEIE = common dso_local global i32 0, align 4
@DMA_SxCR_EN = common dso_local global i32 0, align 4
@USART_CR3_DMAR = common dso_local global i32 0, align 4
@USART_CR1_IDLEIE = common dso_local global i32 0, align 4
@DMA2_Stream5_IRQn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Tried to initialize RX DMA for an unsupported UART\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_rx_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = icmp eq %struct.TYPE_8__* %3, @uart_ring_esp_gps
  br i1 %4, label %5, label %61

5:                                                ; preds = %1
  %6 = load i32, i32* @DMA_SxFCR_DMDIS, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DMA2_Stream5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @USART1, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i8*
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DMA2_Stream5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DMA2_Stream5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DMA2_Stream5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DMA_SxCR_CHSEL_2, align 4
  %29 = load i32, i32* @DMA_SxCR_MINC, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DMA_SxCR_CIRC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DMA_SxCR_HTIE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DMA_SxCR_TCIE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DMA_SxCR_TEIE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @DMA_SxCR_DMEIE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @DMA_SxCR_EN, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DMA2_Stream5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @USART_CR3_DMAR, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @USART_CR1_IDLEIE, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @DMA2_Stream5_IRQn, align 4
  %60 = call i32 @NVIC_EnableIRQ(i32 %59)
  br label %63

61:                                               ; preds = %1
  %62 = call i32 @puts(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %5
  ret void
}

declare dso_local i32 @NVIC_EnableIRQ(i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
