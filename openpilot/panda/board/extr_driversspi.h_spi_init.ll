; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversspi.h_spi_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversspi.h_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@SPI_CR1_SPE = common dso_local global i32 0, align 4
@SPI1 = common dso_local global %struct.TYPE_5__* null, align 8
@SPI_CR2_RXNEIE = common dso_local global i32 0, align 4
@DMA2_Stream2_IRQn = common dso_local global i32 0, align 4
@DMA2_Stream3_IRQn = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@MODE_INPUT = common dso_local global i32 0, align 4
@PULL_UP = common dso_local global i32 0, align 4
@SYSCFG_EXTICR2_EXTI4_PA = common dso_local global i32 0, align 4
@SYSCFG = common dso_local global %struct.TYPE_4__* null, align 8
@EXTI = common dso_local global %struct.TYPE_6__* null, align 8
@EXTI4_IRQn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_init() #0 {
  %1 = load i32, i32* @SPI_CR1_SPE, align 4
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SPI1, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %1, i32* %3, align 4
  %4 = load i32, i32* @SPI_CR2_RXNEIE, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SPI1, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @DMA2_Stream2_IRQn, align 4
  %8 = call i32 @NVIC_EnableIRQ(i32 %7)
  %9 = load i32, i32* @DMA2_Stream3_IRQn, align 4
  %10 = call i32 @NVIC_EnableIRQ(i32 %9)
  %11 = load i32, i32* @GPIOB, align 4
  %12 = load i32, i32* @MODE_INPUT, align 4
  %13 = call i32 @set_gpio_mode(i32 %11, i32 0, i32 %12)
  %14 = load i32, i32* @GPIOB, align 4
  %15 = load i32, i32* @PULL_UP, align 4
  %16 = call i32 @set_gpio_pullup(i32 %14, i32 0, i32 %15)
  %17 = load i32, i32* @SYSCFG_EXTICR2_EXTI4_PA, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SYSCFG, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %17, i32* %21, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @EXTI, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 16
  store i32 %25, i32* %23, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @EXTI, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 16
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @EXTI4_IRQn, align 4
  %31 = call i32 @NVIC_EnableIRQ(i32 %30)
  ret void
}

declare dso_local i32 @NVIC_EnableIRQ(i32) #1

declare dso_local i32 @set_gpio_mode(i32, i32, i32) #1

declare dso_local i32 @set_gpio_pullup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
