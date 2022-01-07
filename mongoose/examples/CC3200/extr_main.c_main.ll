; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_pfnVectors = common dso_local global i32* null, align 8
@FAULT_SYSTICK = common dso_local global i32 0, align 4
@CONSOLE_UART_PERIPH = common dso_local global i32 0, align 4
@PRCM_RUN_MODE_CLK = common dso_local global i32 0, align 4
@PIN_55 = common dso_local global i32 0, align 4
@PIN_MODE_3 = common dso_local global i32 0, align 4
@PIN_57 = common dso_local global i32 0, align 4
@CONSOLE_UART = common dso_local global i32 0, align 4
@CONSOLE_BAUD_RATE = common dso_local global i32 0, align 4
@UART_CONFIG_WLEN_8 = common dso_local global i32 0, align 4
@UART_CONFIG_STOP_ONE = common dso_local global i32 0, align 4
@UART_CONFIG_PAR_NONE = common dso_local global i32 0, align 4
@UART_FIFO_TX1_8 = common dso_local global i32 0, align 4
@UART_FIFO_RX4_8 = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@LL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Hello, world!\00", align 1
@PIN_01 = common dso_local global i32 0, align 4
@PIN_MODE_1 = common dso_local global i32 0, align 4
@PIN_02 = common dso_local global i32 0, align 4
@I2C_MASTER_MODE_FST = common dso_local global i32 0, align 4
@PRCM_GPIOA1 = common dso_local global i32 0, align 4
@PIN_64 = common dso_local global i32 0, align 4
@PIN_MODE_0 = common dso_local global i32 0, align 4
@GPIOA1_BASE = common dso_local global i32 0, align 4
@GPIO_DIR_MODE_OUT = common dso_local global i32 0, align 4
@LED1 = common dso_local global i32 0, align 4
@MCU_RED_LED_GPIO = common dso_local global i32 0, align 4
@LL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to create SL task\00", align 1
@MGOS_TASK_PRIORITY = common dso_local global i32 0, align 4
@MG_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@mg_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to create MG task\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32*, i32** @g_pfnVectors, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = ptrtoint i32* %3 to i64
  %5 = call i32 @MAP_IntVTableBaseSet(i64 %4)
  %6 = load i32, i32* @FAULT_SYSTICK, align 4
  %7 = call i32 @MAP_IntEnable(i32 %6)
  %8 = call i32 (...) @MAP_IntMasterEnable()
  %9 = call i32 (...) @PRCMCC3200MCUInit()
  %10 = load i32, i32* @CONSOLE_UART_PERIPH, align 4
  %11 = load i32, i32* @PRCM_RUN_MODE_CLK, align 4
  %12 = call i32 @MAP_PRCMPeripheralClkEnable(i32 %10, i32 %11)
  %13 = load i32, i32* @PIN_55, align 4
  %14 = load i32, i32* @PIN_MODE_3, align 4
  %15 = call i32 @MAP_PinTypeUART(i32 %13, i32 %14)
  %16 = load i32, i32* @PIN_57, align 4
  %17 = load i32, i32* @PIN_MODE_3, align 4
  %18 = call i32 @MAP_PinTypeUART(i32 %16, i32 %17)
  %19 = load i32, i32* @CONSOLE_UART, align 4
  %20 = load i32, i32* @CONSOLE_UART_PERIPH, align 4
  %21 = call i32 @MAP_PRCMPeripheralClockGet(i32 %20)
  %22 = load i32, i32* @CONSOLE_BAUD_RATE, align 4
  %23 = load i32, i32* @UART_CONFIG_WLEN_8, align 4
  %24 = load i32, i32* @UART_CONFIG_STOP_ONE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UART_CONFIG_PAR_NONE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @MAP_UARTConfigSetExpClk(i32 %19, i32 %21, i32 %22, i32 %27)
  %29 = load i32, i32* @CONSOLE_UART, align 4
  %30 = load i32, i32* @UART_FIFO_TX1_8, align 4
  %31 = load i32, i32* @UART_FIFO_RX4_8, align 4
  %32 = call i32 @MAP_UARTFIFOLevelSet(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @CONSOLE_UART, align 4
  %34 = call i32 @MAP_UARTFIFOEnable(i32 %33)
  %35 = load i32, i32* @stdout, align 4
  %36 = load i32, i32* @_IOLBF, align 4
  %37 = call i32 @setvbuf(i32 %35, i32* null, i32 %36, i32 0)
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* @_IOLBF, align 4
  %40 = call i32 @setvbuf(i32 %38, i32* null, i32 %39, i32 0)
  %41 = load i32, i32* @LL_INFO, align 4
  %42 = call i32 @cs_log_set_level(i32 %41)
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @cs_log_set_file(i32 %43)
  %45 = load i32, i32* @LL_INFO, align 4
  %46 = call i32 @LOG(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @PIN_01, align 4
  %48 = load i32, i32* @PIN_MODE_1, align 4
  %49 = call i32 @MAP_PinTypeI2C(i32 %47, i32 %48)
  %50 = load i32, i32* @PIN_02, align 4
  %51 = load i32, i32* @PIN_MODE_1, align 4
  %52 = call i32 @MAP_PinTypeI2C(i32 %50, i32 %51)
  %53 = load i32, i32* @I2C_MASTER_MODE_FST, align 4
  %54 = call i32 @I2C_IF_Open(i32 %53)
  %55 = load i32, i32* @PRCM_GPIOA1, align 4
  %56 = load i32, i32* @PRCM_RUN_MODE_CLK, align 4
  %57 = call i32 @MAP_PRCMPeripheralClkEnable(i32 %55, i32 %56)
  %58 = load i32, i32* @PIN_64, align 4
  %59 = load i32, i32* @PIN_MODE_0, align 4
  %60 = call i32 @MAP_PinTypeGPIO(i32 %58, i32 %59, i32 0)
  %61 = load i32, i32* @GPIOA1_BASE, align 4
  %62 = load i32, i32* @GPIO_DIR_MODE_OUT, align 4
  %63 = call i32 @MAP_GPIODirModeSet(i32 %61, i32 2, i32 %62)
  %64 = load i32, i32* @LED1, align 4
  %65 = call i32 @GPIO_IF_LedConfigure(i32 %64)
  %66 = load i32, i32* @MCU_RED_LED_GPIO, align 4
  %67 = call i32 @GPIO_IF_LedOn(i32 %66)
  %68 = call i64 @VStartSimpleLinkSpawnTask(i32 8)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %0
  %71 = load i32, i32* @LL_ERROR, align 4
  %72 = call i32 @LOG(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %0
  %74 = load i32, i32* @MGOS_TASK_PRIORITY, align 4
  %75 = load i32, i32* @MG_TASK_STACK_SIZE, align 4
  %76 = load i32, i32* @mg_init, align 4
  %77 = call i32 @mg_start_task(i32 %74, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* @LL_ERROR, align 4
  %81 = call i32 @LOG(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %73
  %83 = call i32 (...) @osi_start()
  ret i32 0
}

declare dso_local i32 @MAP_IntVTableBaseSet(i64) #1

declare dso_local i32 @MAP_IntEnable(i32) #1

declare dso_local i32 @MAP_IntMasterEnable(...) #1

declare dso_local i32 @PRCMCC3200MCUInit(...) #1

declare dso_local i32 @MAP_PRCMPeripheralClkEnable(i32, i32) #1

declare dso_local i32 @MAP_PinTypeUART(i32, i32) #1

declare dso_local i32 @MAP_UARTConfigSetExpClk(i32, i32, i32, i32) #1

declare dso_local i32 @MAP_PRCMPeripheralClockGet(i32) #1

declare dso_local i32 @MAP_UARTFIFOLevelSet(i32, i32, i32) #1

declare dso_local i32 @MAP_UARTFIFOEnable(i32) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @cs_log_set_level(i32) #1

declare dso_local i32 @cs_log_set_file(i32) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @MAP_PinTypeI2C(i32, i32) #1

declare dso_local i32 @I2C_IF_Open(i32) #1

declare dso_local i32 @MAP_PinTypeGPIO(i32, i32, i32) #1

declare dso_local i32 @MAP_GPIODirModeSet(i32, i32, i32) #1

declare dso_local i32 @GPIO_IF_LedConfigure(i32) #1

declare dso_local i32 @GPIO_IF_LedOn(i32) #1

declare dso_local i64 @VStartSimpleLinkSpawnTask(i32) #1

declare dso_local i32 @mg_start_task(i32, i32, i32) #1

declare dso_local i32 @osi_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
