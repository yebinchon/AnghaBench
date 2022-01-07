; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_spi_flasher.h_soft_flasher_start.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_spi_flasher.h_soft_flasher_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32, i32)*, i32 (i32)*, i32 (i32, i32)* }

@.str = private unnamed_addr constant [68 x i8] c"\0A\0A\0A************************ FLASHER START ************************\0A\00", align 1
@enter_bootloader_mode = common dso_local global i64 0, align 8
@RCC_AHB1ENR_DMA2EN = common dso_local global i32 0, align 4
@RCC = common dso_local global %struct.TYPE_8__* null, align 8
@RCC_APB2ENR_SPI1EN = common dso_local global i32 0, align 4
@RCC_AHB2ENR_OTGFSEN = common dso_local global i32 0, align 4
@RCC_APB1ENR_USART2EN = common dso_local global i32 0, align 4
@GPIOA = common dso_local global %struct.TYPE_6__* null, align 8
@GPIO_AF5_SPI1 = common dso_local global i32 0, align 4
@GPIO_AF7_USART2 = common dso_local global i32 0, align 4
@GPIO_AF10_OTG_FS = common dso_local global i32 0, align 4
@GPIO_OSPEEDER_OSPEEDR11 = common dso_local global i32 0, align 4
@GPIO_OSPEEDER_OSPEEDR12 = common dso_local global i32 0, align 4
@current_board = common dso_local global %struct.TYPE_7__* null, align 8
@LED_GREEN = common dso_local global i32 0, align 4
@is_enumerated = common dso_local global i32 0, align 4
@usb_power_mode = common dso_local global i64 0, align 8
@USB_POWER_CLIENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"USBP: didn't enumerate, switching to CDP mode\0A\00", align 1
@USB_POWER_CDP = common dso_local global i32 0, align 4
@LED_BLUE = common dso_local global i32 0, align 4
@CAN1 = common dso_local global i32 0, align 4
@GPIOB = common dso_local global %struct.TYPE_6__* null, align 8
@GPIO_AF9_CAN1 = common dso_local global i32 0, align 4
@RCC_APB1ENR_CAN1EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soft_flasher_start() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @puts(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @enter_bootloader_mode, align 8
  %3 = load i32, i32* @RCC_AHB1ENR_DMA2EN, align 4
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @RCC, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @RCC_APB2ENR_SPI1EN, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @RCC, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @RCC_AHB2ENR_OTGFSEN, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @RCC, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @RCC_APB1ENR_USART2EN, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @RCC, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GPIOA, align 8
  %24 = load i32, i32* @GPIO_AF5_SPI1, align 4
  %25 = call i32 @set_gpio_alternate(%struct.TYPE_6__* %23, i32 4, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GPIOA, align 8
  %27 = load i32, i32* @GPIO_AF5_SPI1, align 4
  %28 = call i32 @set_gpio_alternate(%struct.TYPE_6__* %26, i32 5, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GPIOA, align 8
  %30 = load i32, i32* @GPIO_AF5_SPI1, align 4
  %31 = call i32 @set_gpio_alternate(%struct.TYPE_6__* %29, i32 6, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GPIOA, align 8
  %33 = load i32, i32* @GPIO_AF5_SPI1, align 4
  %34 = call i32 @set_gpio_alternate(%struct.TYPE_6__* %32, i32 7, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GPIOA, align 8
  %36 = load i32, i32* @GPIO_AF7_USART2, align 4
  %37 = call i32 @set_gpio_alternate(%struct.TYPE_6__* %35, i32 2, i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GPIOA, align 8
  %39 = load i32, i32* @GPIO_AF7_USART2, align 4
  %40 = call i32 @set_gpio_alternate(%struct.TYPE_6__* %38, i32 3, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GPIOA, align 8
  %42 = load i32, i32* @GPIO_AF10_OTG_FS, align 4
  %43 = call i32 @set_gpio_alternate(%struct.TYPE_6__* %41, i32 11, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GPIOA, align 8
  %45 = load i32, i32* @GPIO_AF10_OTG_FS, align 4
  %46 = call i32 @set_gpio_alternate(%struct.TYPE_6__* %44, i32 12, i32 %45)
  %47 = load i32, i32* @GPIO_OSPEEDER_OSPEEDR11, align 4
  %48 = load i32, i32* @GPIO_OSPEEDER_OSPEEDR12, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @GPIOA, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = call i32 (...) @spi_init()
  %53 = call i32 (...) @usb_init()
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_board, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32 (i32, i32)*, i32 (i32, i32)** %55, align 8
  %57 = load i32, i32* @LED_GREEN, align 4
  %58 = call i32 %56(i32 %57, i32 1)
  %59 = call i32 (...) @enable_interrupts()
  store i32 0, i32* %1, align 4
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %95, %0
  %61 = load i32, i32* %1, align 4
  %62 = icmp eq i32 %61, 35
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i32, i32* @is_enumerated, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* @usb_power_mode, align 8
  %68 = load i64, i64* @USB_POWER_CLIENT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_board, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32 (i32)*, i32 (i32)** %73, align 8
  %75 = load i32, i32* @USB_POWER_CDP, align 4
  %76 = call i32 %74(i32 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_board, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32 (i32, i32)*, i32 (i32, i32)** %78, align 8
  %80 = load i32, i32* @LED_BLUE, align 4
  %81 = call i32 %79(i32 %80, i32 1)
  br label %82

82:                                               ; preds = %70, %66, %63, %60
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_board, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  %86 = load i32, i32* @LED_GREEN, align 4
  %87 = call i32 %85(i32 %86, i32 0)
  %88 = call i32 @delay(i32 500000)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_board, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32 (i32, i32)*, i32 (i32, i32)** %90, align 8
  %92 = load i32, i32* @LED_GREEN, align 4
  %93 = call i32 %91(i32 %92, i32 1)
  %94 = call i32 @delay(i32 500000)
  br label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %60
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @set_gpio_alternate(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @spi_init(...) #1

declare dso_local i32 @usb_init(...) #1

declare dso_local i32 @enable_interrupts(...) #1

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
