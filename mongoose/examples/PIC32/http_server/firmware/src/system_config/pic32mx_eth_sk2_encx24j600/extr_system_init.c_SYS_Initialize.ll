; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/extr_system_init.c_SYS_Initialize.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/extr_system_init.c_SYS_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@SYS_DEVCON_INDEX_0 = common dso_local global i32 0, align 4
@sysDevconInit = common dso_local global i32 0, align 4
@sysObj = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DRV_SPI_INT_VECTOR_IDX0 = common dso_local global i32 0, align 4
@DRV_SPI_INT_PRIORITY_IDX0 = common dso_local global i32 0, align 4
@DRV_SPI_INT_SUB_PRIORITY_IDX0 = common dso_local global i32 0, align 4
@DRV_SPI_INDEX_0 = common dso_local global i32 0, align 4
@drvSpi0InitData = common dso_local global i32 0, align 4
@DRV_TMR_INDEX_0 = common dso_local global i32 0, align 4
@drvTmr0InitData = common dso_local global i32 0, align 4
@INT_VECTOR_T1 = common dso_local global i32 0, align 4
@INT_PRIORITY_LEVEL1 = common dso_local global i32 0, align 4
@INT_SUBPRIORITY_LEVEL0 = common dso_local global i32 0, align 4
@DRV_USART_INDEX_0 = common dso_local global i32 0, align 4
@drvUsart0InitData = common dso_local global i32 0, align 4
@sysCmdInit = common dso_local global i32 0, align 4
@SYS_CONSOLE_INDEX_0 = common dso_local global i32 0, align 4
@consUsartInit0 = common dso_local global i32 0, align 4
@SYS_DEBUG_INDEX_0 = common dso_local global i32 0, align 4
@debugInit = common dso_local global i32 0, align 4
@SYS_TMR_INDEX_0 = common dso_local global i32 0, align 4
@sysTmrInitData = common dso_local global i32 0, align 4
@INT_VECTOR_ETH = common dso_local global i32 0, align 4
@INT_PRIORITY_LEVEL5 = common dso_local global i32 0, align 4
@INT_SUBPRIORITY_LEVEL3 = common dso_local global i32 0, align 4
@SYS_MODULE_OBJ_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"TCPIP_STACK_Init Failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYS_Initialize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @SYS_CLK_Initialize(i32* null)
  %4 = load i32, i32* @SYS_DEVCON_INDEX_0, align 4
  %5 = call i32 @SYS_DEVCON_Initialize(i32 %4, i32* @sysDevconInit)
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 7), align 8
  %6 = call i32 (...) @SYS_CLK_SystemFrequencyGet()
  %7 = call i32 @SYS_DEVCON_PerformanceConfig(i32 %6)
  %8 = call i32 (...) @SYS_DEVCON_JTAGDisable()
  %9 = call i32 (...) @SYS_PORTS_Initialize()
  %10 = call i32 (...) @BSP_Initialize()
  %11 = load i32, i32* @DRV_SPI_INT_VECTOR_IDX0, align 4
  %12 = load i32, i32* @DRV_SPI_INT_PRIORITY_IDX0, align 4
  %13 = call i32 @SYS_INT_VectorPrioritySet(i32 %11, i32 %12)
  %14 = load i32, i32* @DRV_SPI_INT_VECTOR_IDX0, align 4
  %15 = load i32, i32* @DRV_SPI_INT_SUB_PRIORITY_IDX0, align 4
  %16 = call i32 @SYS_INT_VectorSubprioritySet(i32 %14, i32 %15)
  %17 = load i32, i32* @DRV_SPI_INDEX_0, align 4
  %18 = call i32 @DRV_SPI_Initialize(i32 %17, i32* @drvSpi0InitData)
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 6), align 4
  %19 = load i32, i32* @DRV_TMR_INDEX_0, align 4
  %20 = call i32 @DRV_TMR_Initialize(i32 %19, i32* @drvTmr0InitData)
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 5), align 8
  %21 = load i32, i32* @INT_VECTOR_T1, align 4
  %22 = load i32, i32* @INT_PRIORITY_LEVEL1, align 4
  %23 = call i32 @SYS_INT_VectorPrioritySet(i32 %21, i32 %22)
  %24 = load i32, i32* @INT_VECTOR_T1, align 4
  %25 = load i32, i32* @INT_SUBPRIORITY_LEVEL0, align 4
  %26 = call i32 @SYS_INT_VectorSubprioritySet(i32 %24, i32 %25)
  %27 = load i32, i32* @DRV_USART_INDEX_0, align 4
  %28 = call i32 @DRV_USART_Initialize(i32 %27, i32* @drvUsart0InitData)
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 4), align 4
  %29 = call i32 @SYS_CMD_Initialize(i32* @sysCmdInit)
  %30 = load i32, i32* @SYS_CONSOLE_INDEX_0, align 4
  %31 = call i32 @SYS_CONSOLE_Initialize(i32 %30, i32* @consUsartInit0)
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 3), align 8
  %32 = load i32, i32* @SYS_DEBUG_INDEX_0, align 4
  %33 = call i32 @SYS_DEBUG_Initialize(i32 %32, i32* @debugInit)
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 2), align 4
  %34 = call i32 (...) @SYS_INT_Initialize()
  %35 = call i32 @SYS_RANDOM_Initialize(i32 0, i32 0)
  %36 = load i32, i32* @SYS_TMR_INDEX_0, align 4
  %37 = call i32 @SYS_TMR_Initialize(i32 %36, i32* @sysTmrInitData)
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 1), align 8
  %38 = load i32, i32* @INT_VECTOR_ETH, align 4
  %39 = load i32, i32* @INT_PRIORITY_LEVEL5, align 4
  %40 = call i32 @SYS_INT_VectorPrioritySet(i32 %38, i32 %39)
  %41 = load i32, i32* @INT_VECTOR_ETH, align 4
  %42 = load i32, i32* @INT_SUBPRIORITY_LEVEL3, align 4
  %43 = call i32 @SYS_INT_VectorSubprioritySet(i32 %41, i32 %42)
  %44 = call i64 (...) @TCPIP_STACK_Init()
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 0), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 0), align 8
  %46 = load i64, i64* @SYS_MODULE_OBJ_INVALID, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @SYS_ASSERT(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 (...) @SYS_INT_Enable()
  %51 = call i32 (...) @APP_Initialize()
  ret void
}

declare dso_local i32 @SYS_CLK_Initialize(i32*) #1

declare dso_local i32 @SYS_DEVCON_Initialize(i32, i32*) #1

declare dso_local i32 @SYS_DEVCON_PerformanceConfig(i32) #1

declare dso_local i32 @SYS_CLK_SystemFrequencyGet(...) #1

declare dso_local i32 @SYS_DEVCON_JTAGDisable(...) #1

declare dso_local i32 @SYS_PORTS_Initialize(...) #1

declare dso_local i32 @BSP_Initialize(...) #1

declare dso_local i32 @SYS_INT_VectorPrioritySet(i32, i32) #1

declare dso_local i32 @SYS_INT_VectorSubprioritySet(i32, i32) #1

declare dso_local i32 @DRV_SPI_Initialize(i32, i32*) #1

declare dso_local i32 @DRV_TMR_Initialize(i32, i32*) #1

declare dso_local i32 @DRV_USART_Initialize(i32, i32*) #1

declare dso_local i32 @SYS_CMD_Initialize(i32*) #1

declare dso_local i32 @SYS_CONSOLE_Initialize(i32, i32*) #1

declare dso_local i32 @SYS_DEBUG_Initialize(i32, i32*) #1

declare dso_local i32 @SYS_INT_Initialize(...) #1

declare dso_local i32 @SYS_RANDOM_Initialize(i32, i32) #1

declare dso_local i32 @SYS_TMR_Initialize(i32, i32*) #1

declare dso_local i64 @TCPIP_STACK_Init(...) #1

declare dso_local i32 @SYS_ASSERT(i32, i8*) #1

declare dso_local i32 @SYS_INT_Enable(...) #1

declare dso_local i32 @APP_Initialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
