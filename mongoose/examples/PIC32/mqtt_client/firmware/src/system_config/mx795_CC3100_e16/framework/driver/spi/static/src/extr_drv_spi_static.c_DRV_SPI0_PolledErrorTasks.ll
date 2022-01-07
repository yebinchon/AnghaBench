; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_PolledErrorTasks.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_PolledErrorTasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_OBJ = type { %struct.TYPE_3__*, i32, i32 (i32, i32, i32)* }
%struct.TYPE_3__ = type { i32, i32 (i32, i32, i32)*, i32 }

@SPI_ID_1 = common dso_local global i32 0, align 4
@DRV_SPI_BUFFER_EVENT_ERROR = common dso_local global i32 0, align 4
@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"\0D\0ASPI Driver: Queue free element error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI0_PolledErrorTasks(%struct.DRV_SPI_OBJ* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DRV_SPI_OBJ*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.DRV_SPI_OBJ* %0, %struct.DRV_SPI_OBJ** %3, align 8
  %5 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %6 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

10:                                               ; preds = %1
  %11 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %12 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %4, align 8
  %14 = load i32, i32* @SPI_ID_1, align 4
  %15 = call i64 @PLIB_SPI_ReceiverHasOverflowed(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %10
  %18 = load i32, i32* @DRV_SPI_BUFFER_EVENT_ERROR, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %22, align 8
  %24 = icmp ne i32 (i32, i32, i32)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %27, align 8
  %29 = load i32, i32* @DRV_SPI_BUFFER_EVENT_ERROR, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = ptrtoint %struct.TYPE_3__* %30 to i32
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %28(i32 %29, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %25, %17
  %37 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %38 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %37, i32 0, i32 2
  %39 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %38, align 8
  %40 = icmp ne i32 (i32, i32, i32)* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %43 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %42, i32 0, i32 2
  %44 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %43, align 8
  %45 = load i32, i32* @DRV_SPI_BUFFER_EVENT_ERROR, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = ptrtoint %struct.TYPE_3__* %46 to i32
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %44(i32 %45, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %41, %36
  %53 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %54 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = call i64 @DRV_SPI_SYS_QUEUE_FreeElementLock(i32 %55, %struct.TYPE_3__* %56)
  %58 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %70

62:                                               ; preds = %52
  %63 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %64 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %63, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %64, align 8
  %65 = load i32, i32* @SPI_ID_1, align 4
  %66 = call i32 @PLIB_SPI_BufferClear(i32 %65)
  %67 = load i32, i32* @SPI_ID_1, align 4
  %68 = call i32 @PLIB_SPI_ReceiverOverflowClear(i32 %67)
  br label %69

69:                                               ; preds = %62, %10
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %60, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @PLIB_SPI_ReceiverHasOverflowed(i32) #1

declare dso_local i64 @DRV_SPI_SYS_QUEUE_FreeElementLock(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @SYS_ASSERT(i32, i8*) #1

declare dso_local i32 @PLIB_SPI_BufferClear(i32) #1

declare dso_local i32 @PLIB_SPI_ReceiverOverflowClear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
