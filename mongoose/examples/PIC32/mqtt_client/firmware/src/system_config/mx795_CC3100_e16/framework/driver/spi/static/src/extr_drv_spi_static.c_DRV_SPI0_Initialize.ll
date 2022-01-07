; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_Initialize.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@gDrvSPI0Obj = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SPI_ID_1 = common dso_local global i32 0, align 4
@SPI_PIN_SLAVE_SELECT = common dso_local global i32 0, align 4
@SPI_CLOCK_POLARITY_IDLE_LOW = common dso_local global i32 0, align 4
@SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK = common dso_local global i32 0, align 4
@SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE = common dso_local global i32 0, align 4
@SPI_COMMUNICATION_WIDTH_8BITS = common dso_local global i32 0, align 4
@CLK_BUS_PERIPHERAL_2 = common dso_local global i32 0, align 4
@qmInitData = common dso_local global i32 0, align 4
@hQueueManager = common dso_local global i32 0, align 4
@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"\0D\0ASPI Driver: Could not create queuing system.\00", align 1
@SYS_MODULE_OBJ_INVALID = common dso_local global i32 0, align 4
@qInitData = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"\0D\0ASPI Driver: Could not set up driver instance queue.\00", align 1
@DRV_SPI_INDEX_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI0_Initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* @gDrvSPI0Obj, %struct.TYPE_5__** %2, align 8
  %3 = load i32, i32* @SPI_ID_1, align 4
  %4 = call i32 @PLIB_SPI_Disable(i32 %3)
  %5 = load i32, i32* @SPI_ID_1, align 4
  %6 = call i32 @PLIB_SPI_MasterEnable(i32 %5)
  %7 = load i32, i32* @SPI_ID_1, align 4
  %8 = load i32, i32* @SPI_PIN_SLAVE_SELECT, align 4
  %9 = call i32 @PLIB_SPI_PinDisable(i32 %7, i32 %8)
  %10 = load i32, i32* @SPI_ID_1, align 4
  %11 = call i32 @PLIB_SPI_StopInIdleEnable(i32 %10)
  %12 = load i32, i32* @SPI_ID_1, align 4
  %13 = load i32, i32* @SPI_CLOCK_POLARITY_IDLE_LOW, align 4
  %14 = call i32 @PLIB_SPI_ClockPolaritySelect(i32 %12, i32 %13)
  %15 = load i32, i32* @SPI_ID_1, align 4
  %16 = load i32, i32* @SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK, align 4
  %17 = call i32 @PLIB_SPI_OutputDataPhaseSelect(i32 %15, i32 %16)
  %18 = load i32, i32* @SPI_ID_1, align 4
  %19 = load i32, i32* @SPI_INPUT_SAMPLING_PHASE_IN_MIDDLE, align 4
  %20 = call i32 @PLIB_SPI_InputSamplePhaseSelect(i32 %18, i32 %19)
  %21 = load i32, i32* @SPI_ID_1, align 4
  %22 = load i32, i32* @SPI_COMMUNICATION_WIDTH_8BITS, align 4
  %23 = call i32 @PLIB_SPI_CommunicationWidthSelect(i32 %21, i32 %22)
  %24 = load i32, i32* @SPI_ID_1, align 4
  %25 = load i32, i32* @CLK_BUS_PERIPHERAL_2, align 4
  %26 = call i32 @SYS_CLK_PeripheralFrequencyGet(i32 %25)
  %27 = call i32 @PLIB_SPI_BaudRateSet(i32 %24, i32 %26, i32 10000000)
  %28 = load i32, i32* @SPI_ID_1, align 4
  %29 = call i32 @PLIB_SPI_FramedCommunicationDisable(i32 %28)
  %30 = load i32, i32* @SPI_ID_1, align 4
  %31 = call i32 @PLIB_SPI_BufferClear(i32 %30)
  %32 = load i32, i32* @SPI_ID_1, align 4
  %33 = call i32 @PLIB_SPI_ReceiverOverflowClear(i32 %32)
  %34 = call i64 @DRV_SPI_SYS_QUEUE_Initialize(i32* @qmInitData, i32* @hQueueManager)
  %35 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %0
  %38 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @SYS_MODULE_OBJ_INVALID, align 4
  store i32 %39, i32* %1, align 4
  br label %60

40:                                               ; preds = %0
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qInitData, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @qInitData, i32 0, i32 1), align 4
  %41 = load i32, i32* @hQueueManager, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = call i64 @DRV_SPI_SYS_QUEUE_CreateQueue(i32 %41, %struct.TYPE_6__* @qInitData, i32* %43)
  %45 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @SYS_MODULE_OBJ_INVALID, align 4
  store i32 %49, i32* %1, align 4
  br label %60

50:                                               ; preds = %40
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 16, i32* %56, align 8
  %57 = load i32, i32* @SPI_ID_1, align 4
  %58 = call i32 @PLIB_SPI_Enable(i32 %57)
  %59 = load i32, i32* @DRV_SPI_INDEX_0, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %50, %47, %37
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @PLIB_SPI_Disable(i32) #1

declare dso_local i32 @PLIB_SPI_MasterEnable(i32) #1

declare dso_local i32 @PLIB_SPI_PinDisable(i32, i32) #1

declare dso_local i32 @PLIB_SPI_StopInIdleEnable(i32) #1

declare dso_local i32 @PLIB_SPI_ClockPolaritySelect(i32, i32) #1

declare dso_local i32 @PLIB_SPI_OutputDataPhaseSelect(i32, i32) #1

declare dso_local i32 @PLIB_SPI_InputSamplePhaseSelect(i32, i32) #1

declare dso_local i32 @PLIB_SPI_CommunicationWidthSelect(i32, i32) #1

declare dso_local i32 @PLIB_SPI_BaudRateSet(i32, i32, i32) #1

declare dso_local i32 @SYS_CLK_PeripheralFrequencyGet(i32) #1

declare dso_local i32 @PLIB_SPI_FramedCommunicationDisable(i32) #1

declare dso_local i32 @PLIB_SPI_BufferClear(i32) #1

declare dso_local i32 @PLIB_SPI_ReceiverOverflowClear(i32) #1

declare dso_local i64 @DRV_SPI_SYS_QUEUE_Initialize(i32*, i32*) #1

declare dso_local i32 @SYS_ASSERT(i32, i8*) #1

declare dso_local i64 @DRV_SPI_SYS_QUEUE_CreateQueue(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @PLIB_SPI_Enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
