; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_rm_tasks.c_DRV_SPI0_MasterRMReceive8BitPolled.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_rm_tasks.c_DRV_SPI0_MasterRMReceive8BitPolled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_OBJ = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i32* }

@SPI_ID_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI0_MasterRMReceive8BitPolled(%struct.DRV_SPI_OBJ* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DRV_SPI_OBJ*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store %struct.DRV_SPI_OBJ* %0, %struct.DRV_SPI_OBJ** %3, align 8
  %5 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %6 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %9 = icmp eq %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load i32, i32* @SPI_ID_1, align 4
  %13 = call i64 @PLIB_SPI_ReceiverBufferIsFull(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load i32, i32* @SPI_ID_1, align 4
  %22 = call i32 @PLIB_SPI_BufferRead(i32 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %22, i32* %29, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  br label %45

38:                                               ; preds = %15
  %39 = load i32, i32* @SPI_ID_1, align 4
  %40 = call i32 @PLIB_SPI_BufferRead(i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %20
  %46 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %47 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %11
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @PLIB_SPI_ReceiverBufferIsFull(i32) #1

declare dso_local i32 @PLIB_SPI_BufferRead(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
