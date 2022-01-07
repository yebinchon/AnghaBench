; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/ccs/MG_hello/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/ccs/MG_hello/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_pfnVectors = common dso_local global i32* null, align 8
@FAULT_SYSTICK = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@LL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Hello, world!\00", align 1
@PRCM_GPIOA1 = common dso_local global i32 0, align 4
@PRCM_RUN_MODE_CLK = common dso_local global i32 0, align 4
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
  %10 = load i32, i32* @stdout, align 4
  %11 = load i32, i32* @_IOLBF, align 4
  %12 = call i32 @setvbuf(i32 %10, i32* null, i32 %11, i32 0)
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* @_IOLBF, align 4
  %15 = call i32 @setvbuf(i32 %13, i32* null, i32 %14, i32 0)
  %16 = load i32, i32* @LL_INFO, align 4
  %17 = call i32 @cs_log_set_level(i32 %16)
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @cs_log_set_file(i32 %18)
  %20 = load i32, i32* @LL_INFO, align 4
  %21 = call i32 @LOG(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @PRCM_GPIOA1, align 4
  %23 = load i32, i32* @PRCM_RUN_MODE_CLK, align 4
  %24 = call i32 @MAP_PRCMPeripheralClkEnable(i32 %22, i32 %23)
  %25 = load i32, i32* @PIN_64, align 4
  %26 = load i32, i32* @PIN_MODE_0, align 4
  %27 = call i32 @MAP_PinTypeGPIO(i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @GPIOA1_BASE, align 4
  %29 = load i32, i32* @GPIO_DIR_MODE_OUT, align 4
  %30 = call i32 @MAP_GPIODirModeSet(i32 %28, i32 2, i32 %29)
  %31 = load i32, i32* @LED1, align 4
  %32 = call i32 @GPIO_IF_LedConfigure(i32 %31)
  %33 = load i32, i32* @MCU_RED_LED_GPIO, align 4
  %34 = call i32 @GPIO_IF_LedOn(i32 %33)
  %35 = call i64 @VStartSimpleLinkSpawnTask(i32 8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %0
  %38 = load i32, i32* @LL_ERROR, align 4
  %39 = call i32 @LOG(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %0
  %41 = load i32, i32* @MGOS_TASK_PRIORITY, align 4
  %42 = load i32, i32* @MG_TASK_STACK_SIZE, align 4
  %43 = load i32, i32* @mg_init, align 4
  %44 = call i32 @mg_start_task(i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @LL_ERROR, align 4
  %48 = call i32 @LOG(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %40
  %50 = call i32 (...) @osi_start()
  ret i32 0
}

declare dso_local i32 @MAP_IntVTableBaseSet(i64) #1

declare dso_local i32 @MAP_IntEnable(i32) #1

declare dso_local i32 @MAP_IntMasterEnable(...) #1

declare dso_local i32 @PRCMCC3200MCUInit(...) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @cs_log_set_level(i32) #1

declare dso_local i32 @cs_log_set_file(i32) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @MAP_PRCMPeripheralClkEnable(i32, i32) #1

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
