; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_rm_tasks.c_DRV_SPI0_MasterRMSend8BitPolled.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_rm_tasks.c_DRV_SPI0_MasterRMSend8BitPolled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_OBJ = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32*, i64 }

@SPI_ID_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI0_MasterRMSend8BitPolled(%struct.DRV_SPI_OBJ* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DRV_SPI_OBJ*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store %struct.DRV_SPI_OBJ* %0, %struct.DRV_SPI_OBJ** %3, align 8
  %5 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %6 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load i32, i32* @SPI_ID_1, align 4
  %19 = call i32 @PLIB_SPI_TransmitBufferIsEmpty(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %62

22:                                               ; preds = %17
  %23 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %24 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %62

28:                                               ; preds = %22
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load i32, i32* @SPI_ID_1, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PLIB_SPI_BufferWrite(i32 %34, i32 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  br label %59

52:                                               ; preds = %28
  %53 = load i32, i32* @SPI_ID_1, align 4
  %54 = call i32 @PLIB_SPI_BufferWrite(i32 %53, i32 255)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %52, %33
  %60 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %61 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %27, %21, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @PLIB_SPI_TransmitBufferIsEmpty(i32) #1

declare dso_local i32 @PLIB_SPI_BufferWrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
