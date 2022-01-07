; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_api.c_DRV_SPI_SetupHardware.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_api.c_DRV_SPI_SetupHardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_DRIVER_OBJECT = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32 }

@SPI_CLOCK_POLARITY_IDLE_LOW = common dso_local global i32 0, align 4
@SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK = common dso_local global i32 0, align 4
@SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK = common dso_local global i32 0, align 4
@SPI_CLOCK_POLARITY_IDLE_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"\0D\0AInvalid SPI Configuration.\00", align 1
@DRV_SPI_MODE_SLAVE = common dso_local global i64 0, align 8
@SPI_PIN_SLAVE_SELECT = common dso_local global i32 0, align 4
@SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY = common dso_local global i32 0, align 4
@SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_NOT_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI_SetupHardware(%struct.DRV_SPI_DRIVER_OBJECT* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DRV_SPI_DRIVER_OBJECT*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.DRV_SPI_DRIVER_OBJECT* %0, %struct.DRV_SPI_DRIVER_OBJECT** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @PLIB_SPI_Disable(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PLIB_SPI_MasterEnable(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @PLIB_SPI_StopInIdleDisable(i32 %19)
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @PLIB_SPI_StopInIdleEnable(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %56 [
    i32 131, label %28
    i32 132, label %35
    i32 134, label %42
    i32 133, label %49
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SPI_CLOCK_POLARITY_IDLE_LOW, align 4
  %31 = call i32 @PLIB_SPI_ClockPolaritySelect(i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK, align 4
  %34 = call i32 @PLIB_SPI_OutputDataPhaseSelect(i32 %32, i32 %33)
  br label %58

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SPI_CLOCK_POLARITY_IDLE_LOW, align 4
  %38 = call i32 @PLIB_SPI_ClockPolaritySelect(i32 %36, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK, align 4
  %41 = call i32 @PLIB_SPI_OutputDataPhaseSelect(i32 %39, i32 %40)
  br label %58

42:                                               ; preds = %24
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SPI_CLOCK_POLARITY_IDLE_HIGH, align 4
  %45 = call i32 @PLIB_SPI_ClockPolaritySelect(i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SPI_OUTPUT_DATA_PHASE_ON_IDLE_TO_ACTIVE_CLOCK, align 4
  %48 = call i32 @PLIB_SPI_OutputDataPhaseSelect(i32 %46, i32 %47)
  br label %58

49:                                               ; preds = %24
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SPI_CLOCK_POLARITY_IDLE_HIGH, align 4
  %52 = call i32 @PLIB_SPI_ClockPolaritySelect(i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SPI_OUTPUT_DATA_PHASE_ON_ACTIVE_TO_IDLE_CLOCK, align 4
  %55 = call i32 @PLIB_SPI_OutputDataPhaseSelect(i32 %53, i32 %54)
  br label %58

56:                                               ; preds = %24
  %57 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %140

58:                                               ; preds = %49, %42, %35, %28
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PLIB_SPI_InputSamplePhaseSelect(i32 %59, i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DRV_SPI_MODE_SLAVE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %58
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 129
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @SPI_PIN_SLAVE_SELECT, align 4
  %82 = call i32 @PLIB_SPI_PinEnable(i32 %80, i32 %81)
  br label %87

83:                                               ; preds = %74, %58
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @SPI_PIN_SLAVE_SELECT, align 4
  %86 = call i32 @PLIB_SPI_PinDisable(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @PLIB_SPI_CommunicationWidthSelect(i32 %88, i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SYS_CLK_PeripheralFrequencyGet(i32 %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @PLIB_SPI_BaudRateSet(i32 %93, i32 %97, i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %4, align 8
  %106 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %4, align 8
  %111 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %125 [
    i32 128, label %115
    i32 129, label %118
    i32 130, label %121
  ]

115:                                              ; preds = %87
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @PLIB_SPI_FramedCommunicationDisable(i32 %116)
  br label %127

118:                                              ; preds = %87
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @PLIB_SPI_FramedCommunicationEnable(i32 %119)
  br label %127

121:                                              ; preds = %87
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @PLIB_SPI_FramedCommunicationDisable(i32 %122)
  %124 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %140

125:                                              ; preds = %87
  %126 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %140

127:                                              ; preds = %118, %115
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @PLIB_SPI_FIFOEnable(i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY, align 4
  %132 = call i32 @PLIB_SPI_FIFOInterruptModeSelect(i32 %130, i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_NOT_EMPTY, align 4
  %135 = call i32 @PLIB_SPI_FIFOInterruptModeSelect(i32 %133, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @PLIB_SPI_BufferClear(i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @PLIB_SPI_ReceiverOverflowClear(i32 %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %127, %125, %121, %56
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @PLIB_SPI_Disable(i32) #1

declare dso_local i32 @PLIB_SPI_MasterEnable(i32) #1

declare dso_local i32 @PLIB_SPI_StopInIdleDisable(i32) #1

declare dso_local i32 @PLIB_SPI_StopInIdleEnable(i32) #1

declare dso_local i32 @PLIB_SPI_ClockPolaritySelect(i32, i32) #1

declare dso_local i32 @PLIB_SPI_OutputDataPhaseSelect(i32, i32) #1

declare dso_local i32 @SYS_ASSERT(i32, i8*) #1

declare dso_local i32 @PLIB_SPI_InputSamplePhaseSelect(i32, i32) #1

declare dso_local i32 @PLIB_SPI_PinEnable(i32, i32) #1

declare dso_local i32 @PLIB_SPI_PinDisable(i32, i32) #1

declare dso_local i32 @PLIB_SPI_CommunicationWidthSelect(i32, i32) #1

declare dso_local i32 @PLIB_SPI_BaudRateSet(i32, i32, i32) #1

declare dso_local i32 @SYS_CLK_PeripheralFrequencyGet(i32) #1

declare dso_local i32 @PLIB_SPI_FramedCommunicationDisable(i32) #1

declare dso_local i32 @PLIB_SPI_FramedCommunicationEnable(i32) #1

declare dso_local i32 @PLIB_SPI_FIFOEnable(i32) #1

declare dso_local i32 @PLIB_SPI_FIFOInterruptModeSelect(i32, i32) #1

declare dso_local i32 @PLIB_SPI_BufferClear(i32) #1

declare dso_local i32 @PLIB_SPI_ReceiverOverflowClear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
