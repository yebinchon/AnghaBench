; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_master_ebm_tasks.c_DRV_SPI_MasterEBMSend8BitISR.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_master_ebm_tasks.c_DRV_SPI_MasterEBMSend8BitISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_DRIVER_OBJECT = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64*, i64, i64 }

@SPI_FIFO_TYPE_TRANSMIT = common dso_local global i32 0, align 4
@SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI_MasterEBMSend8BitISR(%struct.DRV_SPI_DRIVER_OBJECT* %0) #0 {
  %2 = alloca %struct.DRV_SPI_DRIVER_OBJECT*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.DRV_SPI_DRIVER_OBJECT* %0, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %11 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %12 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %15 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %4, align 8
  %17 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %18 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SPI_FIFO_TYPE_TRANSMIT, align 4
  %22 = call i32 @PLIB_SPI_FIFOCountGet(i32 %20, i32 %21)
  %23 = call i64 @MAX(i64 %19, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @PLIB_SPI_TX_8BIT_FIFO_SIZE(i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %25, %26
  store i64 %27, i64* %6, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @MIN(i64 %30, i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %1
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64* %50, i64** %9, align 8
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %63, %35
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @PLIB_SPI_BufferWrite(i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %55
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  br label %51

66:                                               ; preds = %51
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %74 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %72
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %66, %1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @MIN(i64 %80, i64 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %77
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %93 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %91
  store i64 %95, i64* %93, align 8
  store i64 0, i64* %8, align 8
  br label %96

96:                                               ; preds = %103, %85
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @PLIB_SPI_BufferWrite(i32 %101, i32 255)
  br label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %8, align 8
  br label %96

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %77
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_COMPLETELY_EMPTY, align 4
  %119 = call i32 @PLIB_SPI_FIFOInterruptModeSelect(i32 %117, i32 %118)
  %120 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %121 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %120, i32 0, i32 1
  store i32 0, i32* %121, align 8
  %122 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %123 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %122, i32 0, i32 2
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %116, %107
  ret i32 0
}

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i32 @PLIB_SPI_FIFOCountGet(i32, i32) #1

declare dso_local i64 @PLIB_SPI_TX_8BIT_FIFO_SIZE(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @PLIB_SPI_BufferWrite(i32, i32) #1

declare dso_local i32 @PLIB_SPI_FIFOInterruptModeSelect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
