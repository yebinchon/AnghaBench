; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_sys_queue.c__DRV_SPI_SYS_QUEUE_LockQueue.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_sys_queue.c__DRV_SPI_SYS_QUEUE_LockQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32)*, i32*, i32* }

@DRV_SPI_SYS_QUEUE_MAX_ERROR = common dso_local global i64 0, align 8
@DRV_SPI_SYS_QUEUE_INVALID_PARAMETER = common dso_local global i32 0, align 4
@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_DRV_SPI_SYS_QUEUE_LockQueue(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @DRV_SPI_SYS_QUEUE_MAX_ERROR, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @DRV_SPI_SYS_QUEUE_INVALID_PARAMETER, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %10, %2
  %17 = load i64, i64* %4, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %6, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @DRV_SPI_SYS_QUEUE_INVALID_PARAMETER, align 4
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = ptrtoint i32* %32 to i32
  %34 = call i32 @_DRV_SPI_SYS_QUEUE_LockQueueManager(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %28
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i64, i32)*, i32 (i64, i32)** %37, align 8
  %39 = icmp ne i32 (i64, i32)* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i64, i32)*, i32 (i64, i32)** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 %43(i64 %44, i32 1)
  br label %46

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @DRV_SPI_SYS_QUEUE_SUCCESS, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %31, %26, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @_DRV_SPI_SYS_QUEUE_LockQueueManager(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
