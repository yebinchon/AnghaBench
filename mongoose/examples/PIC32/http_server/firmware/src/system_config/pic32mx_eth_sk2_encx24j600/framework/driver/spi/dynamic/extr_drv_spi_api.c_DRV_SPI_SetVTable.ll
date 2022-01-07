; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_api.c_DRV_SPI_SetVTable.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_api.c_DRV_SPI_SetVTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_DRIVER_OBJECT = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i64, i64 }

@DRV_SPI_MODE_MASTER = common dso_local global i64 0, align 8
@_SPI_DRV_VTABLE_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"\0D\0AInvalid SPI Configuration.\00", align 1
@DRV_SPI_TASK_MODE_ISR = common dso_local global i32 0, align 4
@DRV_SPI_BUFFER_TYPE_ENHANCED = common dso_local global i64 0, align 8
@_SPI_DRV_VTABLE_EBM = common dso_local global i32 0, align 4
@SPI_COMMUNICATION_WIDTH_8BITS = common dso_local global i64 0, align 8
@_SPI_DRV_VTABLE_8BIT = common dso_local global i32 0, align 4
@DRV_SPI_ISRMasterEBM8BitTasks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI_SetVTable(%struct.DRV_SPI_DRIVER_OBJECT* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DRV_SPI_DRIVER_OBJECT*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.DRV_SPI_DRIVER_OBJECT* %0, %struct.DRV_SPI_DRIVER_OBJECT** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DRV_SPI_MODE_MASTER, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @_SPI_DRV_VTABLE_MASTER, align 4
  store i32 %13, i32* %6, align 4
  br label %16

14:                                               ; preds = %2
  %15 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %61

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DRV_SPI_TASK_MODE_ISR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @DRV_SPI_TASK_MODE_ISR, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %28

26:                                               ; preds = %16
  %27 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %61

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DRV_SPI_BUFFER_TYPE_ENHANCED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @_SPI_DRV_VTABLE_EBM, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %28
  %39 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %61

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SPI_COMMUNICATION_WIDTH_8BITS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @_SPI_DRV_VTABLE_8BIT, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %52

50:                                               ; preds = %40
  %51 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %61

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %58 [
    i32 128, label %54
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* @DRV_SPI_ISRMasterEBM8BitTasks, align 4
  %56 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %4, align 8
  %57 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %60

58:                                               ; preds = %52
  %59 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %58, %50, %38, %26, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @SYS_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
