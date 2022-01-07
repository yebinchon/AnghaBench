; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_master_dma_tasks.c_DRV_SPI_MasterDMAReceiveData8BitISR.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_master_dma_tasks.c_DRV_SPI_MasterDMAReceiveData8BitISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_DRIVER_OBJECT = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32* }

@SYS_DMA_TRANSFER_EVENT_COMPLETE = common dso_local global i64 0, align 8
@PLIB_DMA_MAX_TRF_SIZE = common dso_local global i64 0, align 8
@DRV_SPI_DMA_TXFER_SIZE = common dso_local global i64 0, align 8
@DRV_SPI_DMA_DATA_INPROGRESS = common dso_local global i32 0, align 4
@DRV_SPI_DMA_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DRV_SPI_MasterDMAReceiveData8BitISR(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.DRV_SPI_DRIVER_OBJECT*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @SYS_DMA_TRANSFER_EVENT_COMPLETE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %73

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = inttoptr i64 %17 to %struct.DRV_SPI_DRIVER_OBJECT*
  store %struct.DRV_SPI_DRIVER_OBJECT* %18, %struct.DRV_SPI_DRIVER_OBJECT** %7, align 8
  %19 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %7, align 8
  %20 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %8, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %16
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %9, align 8
  %34 = load i64, i64* @PLIB_DMA_MAX_TRF_SIZE, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @MIN(i64 %34, i64 %37)
  %39 = load i64, i64* @DRV_SPI_DMA_TXFER_SIZE, align 8
  %40 = call i64 @MIN(i64 %38, i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %7, align 8
  %42 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @PLIB_SPI_BufferAddressGet(i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %7, align 8
  %46 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @SYS_DMA_ChannelTransferAdd(i32 %47, i8* %48, i32 1, i32* %49, i64 %50, i32 1)
  %52 = load i32, i32* @DRV_SPI_DMA_DATA_INPROGRESS, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %73

65:                                               ; preds = %16
  %66 = load i32, i32* @DRV_SPI_DMA_COMPLETE, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %7, align 8
  %70 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SYS_INT_SourceEnable(i32 %71)
  br label %73

73:                                               ; preds = %15, %65, %26
  ret void
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i8* @PLIB_SPI_BufferAddressGet(i32) #1

declare dso_local i32 @SYS_DMA_ChannelTransferAdd(i32, i8*, i32, i32*, i64, i32) #1

declare dso_local i32 @SYS_INT_SourceEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
