; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversspi.h_DMA2_Stream2_IRQHandler.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversspi.h_DMA2_Stream2_IRQHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@spi_tx_buf = common dso_local global i64 0, align 8
@spi_buf = common dso_local global i32 0, align 4
@DMA_LIFCR_CTCIF2 = common dso_local global i32 0, align 4
@DMA2 = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMA2_Stream2_IRQHandler() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @spi_tx_buf, align 8
  %3 = inttoptr i64 %2 to i32*
  store i32* %3, i32** %1, align 8
  %4 = load i64, i64* @spi_tx_buf, align 8
  %5 = call i32 @memset(i64 %4, i32 170, i32 68)
  %6 = load i32, i32* @spi_buf, align 4
  %7 = load i64, i64* @spi_tx_buf, align 8
  %8 = add nsw i64 %7, 4
  %9 = call i32 @spi_cb_rx(i32 %6, i32 20, i64 %8)
  %10 = load i32*, i32** %1, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i64, i64* @spi_tx_buf, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 4
  %15 = call i32 @spi_tx_dma(i64 %11, i32 %14)
  %16 = load i32, i32* @DMA_LIFCR_CTCIF2, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @DMA2, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @spi_cb_rx(i32, i32, i64) #1

declare dso_local i32 @spi_tx_dma(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
