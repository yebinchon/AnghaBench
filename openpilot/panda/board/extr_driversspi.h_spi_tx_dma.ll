; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversspi.h_spi_tx_dma.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversspi.h_spi_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i8* }

@SPI_CR2_TXDMAEN = common dso_local global i32 0, align 4
@SPI1 = common dso_local global %struct.TYPE_3__* null, align 8
@DMA_SxCR_EN = common dso_local global i32 0, align 4
@DMA2_Stream3 = common dso_local global %struct.TYPE_4__* null, align 8
@DMA_SxCR_CHSEL_1 = common dso_local global i32 0, align 4
@DMA_SxCR_CHSEL_0 = common dso_local global i32 0, align 4
@DMA_SxCR_MINC = common dso_local global i32 0, align 4
@DMA_SxCR_DIR_0 = common dso_local global i32 0, align 4
@DMA_SxCR_TCIE = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_tx_dma(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @SPI_CR2_TXDMAEN, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SPI1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @DMA_SxCR_EN, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2_Stream3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2_Stream3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2_Stream3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SPI1, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = bitcast i32* %24 to i8*
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2_Stream3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @DMA_SxCR_CHSEL_1, align 4
  %29 = load i32, i32* @DMA_SxCR_CHSEL_0, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DMA_SxCR_MINC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DMA_SxCR_DIR_0, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DMA_SxCR_EN, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2_Stream3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = call i32 @delay(i32 0)
  %40 = load i32, i32* @DMA_SxCR_TCIE, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMA2_Stream3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @SPI_CR2_TXDMAEN, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SPI1, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @GPIOB, align 4
  %51 = call i32 @set_gpio_output(i32 %50, i32 0, i32 0)
  ret void
}

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @set_gpio_output(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
