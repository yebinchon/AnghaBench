; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_boardscommon.h_peripherals_init.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_boardscommon.h_peripherals_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@RCC_AHB1ENR_GPIOAEN = common dso_local global i32 0, align 4
@RCC = common dso_local global %struct.TYPE_2__* null, align 8
@RCC_AHB1ENR_GPIOBEN = common dso_local global i32 0, align 4
@RCC_AHB1ENR_GPIOCEN = common dso_local global i32 0, align 4
@RCC_AHB1ENR_GPIODEN = common dso_local global i32 0, align 4
@RCC_AHB1ENR_DMA2EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_USART2EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_USART3EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_CAN1EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_CAN2EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_DACEN = common dso_local global i32 0, align 4
@RCC_APB1ENR_TIM2EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_TIM3EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_TIM4EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_PWREN = common dso_local global i32 0, align 4
@RCC_APB2ENR_USART1EN = common dso_local global i32 0, align 4
@RCC_AHB2ENR_OTGFSEN = common dso_local global i32 0, align 4
@RCC_APB2ENR_ADC1EN = common dso_local global i32 0, align 4
@RCC_APB2ENR_SPI1EN = common dso_local global i32 0, align 4
@RCC_APB2ENR_SYSCFGEN = common dso_local global i32 0, align 4
@RCC_APB2ENR_TIM9EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_CAN3EN = common dso_local global i32 0, align 4
@RCC_APB1ENR_UART5EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @peripherals_init() #0 {
  %1 = load i32, i32* @RCC_AHB1ENR_GPIOAEN, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = or i32 %4, %1
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @RCC_AHB1ENR_GPIOBEN, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @RCC_AHB1ENR_GPIOCEN, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @RCC_AHB1ENR_GPIODEN, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @RCC_AHB1ENR_DMA2EN, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @RCC_APB1ENR_USART2EN, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @RCC_APB1ENR_USART3EN, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @RCC_APB1ENR_CAN1EN, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @RCC_APB1ENR_CAN2EN, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @RCC_APB1ENR_DACEN, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @RCC_APB1ENR_TIM2EN, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @RCC_APB1ENR_TIM3EN, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @RCC_APB1ENR_TIM4EN, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @RCC_APB1ENR_PWREN, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @RCC_APB2ENR_USART1EN, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @RCC_AHB2ENR_OTGFSEN, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @RCC_APB2ENR_ADC1EN, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @RCC_APB2ENR_SPI1EN, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @RCC_APB2ENR_SYSCFGEN, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @RCC_APB2ENR_TIM9EN, align 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RCC, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
