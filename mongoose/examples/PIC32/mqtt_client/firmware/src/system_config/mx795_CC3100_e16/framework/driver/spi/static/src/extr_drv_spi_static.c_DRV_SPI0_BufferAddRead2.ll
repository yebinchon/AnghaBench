; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_BufferAddRead2.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_BufferAddRead2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i8*, i32, i8* }

@gDrvSPI0Obj = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"\0D\0ASPI Driver: Error trying to get a free entry.\00", align 1
@DRV_SPI_BUFFER_EVENT_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\0D\0ASPI Driver: Error enqueing new job.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DRV_SPI0_BufferAddRead2(i8* %0, i64 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* @gDrvSPI0Obj, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %struct.TYPE_6__** %13 to i8**
  %18 = call i64 @DRV_SPI_SYS_QUEUE_AllocElementLock(i32 %16, i8** %17)
  %19 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %64

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %25 = call i32 @memset(%struct.TYPE_6__* %24, i32 0, i32 48)
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @DRV_SPI_BUFFER_EVENT_PENDING, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %23
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = ptrtoint %struct.TYPE_6__* %47 to i64
  %49 = load i64*, i64** %11, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %23
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %55 = bitcast %struct.TYPE_6__* %54 to i8*
  %56 = call i64 @DRV_SPI_SYS_QUEUE_EnqueueLock(i32 %53, i8* %55)
  %57 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %64

61:                                               ; preds = %50
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = ptrtoint %struct.TYPE_6__* %62 to i64
  store i64 %63, i64* %6, align 8
  br label %64

64:                                               ; preds = %61, %59, %21
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

declare dso_local i64 @DRV_SPI_SYS_QUEUE_AllocElementLock(i32, i8**) #1

declare dso_local i32 @SYS_ASSERT(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @DRV_SPI_SYS_QUEUE_EnqueueLock(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
