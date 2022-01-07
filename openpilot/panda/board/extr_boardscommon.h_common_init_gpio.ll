; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_boardscommon.h_common_init_gpio.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_boardscommon.h_common_init_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, i64, i64 }

@GPIOA = common dso_local global %struct.TYPE_4__* null, align 8
@GPIOB = common dso_local global %struct.TYPE_4__* null, align 8
@GPIOC = common dso_local global i32 0, align 4
@MODE_ANALOG = common dso_local global i32 0, align 4
@GPIO_AF10_OTG_FS = common dso_local global i32 0, align 4
@GPIO_OSPEEDER_OSPEEDR11 = common dso_local global i32 0, align 4
@GPIO_OSPEEDER_OSPEEDR12 = common dso_local global i32 0, align 4
@GPIO_AF7_USART1 = common dso_local global i32 0, align 4
@GPIO_AF9_CAN1 = common dso_local global i32 0, align 4
@GPIO_AF8_CAN1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @common_init_gpio() #0 {
  %1 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOA, align 8
  %2 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i64 0, i64* %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOB, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOA, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOB, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOB, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @GPIOC, align 4
  %16 = load i32, i32* @MODE_ANALOG, align 4
  %17 = call i32 @set_gpio_mode(i32 %15, i32 2, i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOA, align 8
  %19 = load i32, i32* @GPIO_AF10_OTG_FS, align 4
  %20 = call i32 @set_gpio_alternate(%struct.TYPE_4__* %18, i32 11, i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOA, align 8
  %22 = load i32, i32* @GPIO_AF10_OTG_FS, align 4
  %23 = call i32 @set_gpio_alternate(%struct.TYPE_4__* %21, i32 12, i32 %22)
  %24 = load i32, i32* @GPIO_OSPEEDER_OSPEEDR11, align 4
  %25 = load i32, i32* @GPIO_OSPEEDER_OSPEEDR12, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOA, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOA, align 8
  %30 = load i32, i32* @GPIO_AF7_USART1, align 4
  %31 = call i32 @set_gpio_alternate(%struct.TYPE_4__* %29, i32 9, i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOA, align 8
  %33 = load i32, i32* @GPIO_AF7_USART1, align 4
  %34 = call i32 @set_gpio_alternate(%struct.TYPE_4__* %32, i32 10, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOB, align 8
  %36 = load i32, i32* @GPIO_AF9_CAN1, align 4
  %37 = call i32 @set_gpio_alternate(%struct.TYPE_4__* %35, i32 8, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @GPIOB, align 8
  %39 = load i32, i32* @GPIO_AF9_CAN1, align 4
  %40 = call i32 @set_gpio_alternate(%struct.TYPE_4__* %38, i32 9, i32 %39)
  ret void
}

declare dso_local i32 @set_gpio_mode(i32, i32, i32) #1

declare dso_local i32 @set_gpio_alternate(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
