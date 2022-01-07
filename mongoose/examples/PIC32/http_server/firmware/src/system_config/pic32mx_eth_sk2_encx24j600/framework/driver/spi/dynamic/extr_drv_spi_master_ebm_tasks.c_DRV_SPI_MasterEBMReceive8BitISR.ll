; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_master_ebm_tasks.c_DRV_SPI_MasterEBMReceive8BitISR.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_master_ebm_tasks.c_DRV_SPI_MasterEBMReceive8BitISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_DRIVER_OBJECT = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64*, i64, i64 }

@SPI_FIFO_TYPE_RECEIVE = common dso_local global i32 0, align 4
@SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_NOT_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI_MasterEBMReceive8BitISR(%struct.DRV_SPI_DRIVER_OBJECT* %0) #0 {
  %2 = alloca %struct.DRV_SPI_DRIVER_OBJECT*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.DRV_SPI_DRIVER_OBJECT* %0, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %11 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %12 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %15 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SPI_FIFO_TYPE_RECEIVE, align 4
  %19 = call i64 @PLIB_SPI_FIFOCountGet(i32 %17, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @MIN(i64 %22, i64 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %1
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  store i64* %42, i64** %8, align 8
  store i64 0, i64* %7, align 8
  br label %43

43:                                               ; preds = %53, %27
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @PLIB_SPI_BufferRead(i32 %48)
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %49, i64* %52, align 8
  br label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %43

56:                                               ; preds = %43
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %64 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %65, %62
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %56, %1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @MIN(i64 %70, i64 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %67
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = sub i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %2, align 8
  %83 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, %81
  store i64 %85, i64* %83, align 8
  store i64 0, i64* %7, align 8
  br label %86

86:                                               ; preds = %93, %75
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %3, align 4
  %92 = call i64 @PLIB_SPI_BufferRead(i32 %91)
  br label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %7, align 8
  br label %86

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %67
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %100, %103
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i32, i32* %3, align 4
  %107 = call i64 @PLIB_SPI_RX_8BIT_HW_MARK(i32 %106)
  %108 = icmp ult i64 %105, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %97
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_NOT_EMPTY, align 4
  %112 = call i32 @PLIB_SPI_FIFOInterruptModeSelect(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %97
  ret i32 0
}

declare dso_local i64 @PLIB_SPI_FIFOCountGet(i32, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @PLIB_SPI_BufferRead(i32) #1

declare dso_local i64 @PLIB_SPI_RX_8BIT_HW_MARK(i32) #1

declare dso_local i32 @PLIB_SPI_FIFOInterruptModeSelect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
