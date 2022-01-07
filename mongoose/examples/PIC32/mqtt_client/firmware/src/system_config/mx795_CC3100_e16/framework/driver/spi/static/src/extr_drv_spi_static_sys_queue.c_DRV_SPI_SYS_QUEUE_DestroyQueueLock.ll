; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_sys_queue.c_DRV_SPI_SYS_QUEUE_DestroyQueueLock.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_sys_queue.c_DRV_SPI_SYS_QUEUE_DestroyQueueLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DRV_SPI_SYS_QUEUE_DestroyQueueLock(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @_DRV_SPI_SYS_QUEUE_LockQueue(i32 %6, i32 1)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %2, align 8
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @DRV_SPI_SYS_QUEUE_DestroyQueue(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @_DRV_SPI_SYS_QUEUE_UnlockQueue(i32 %16, i32 1)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  store i64 %22, i64* %2, align 8
  br label %25

23:                                               ; preds = %13
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %23, %21, %11
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local i64 @_DRV_SPI_SYS_QUEUE_LockQueue(i32, i32) #1

declare dso_local i64 @DRV_SPI_SYS_QUEUE_DestroyQueue(i32) #1

declare dso_local i64 @_DRV_SPI_SYS_QUEUE_UnlockQueue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
