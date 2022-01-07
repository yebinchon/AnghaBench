; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_BufferAddWriteRead2.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static.c_DRV_SPI0_BufferAddWriteRead2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i8*, i32, i8*, i8* }

@gDrvSPI0Obj = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"\0D\0ASPI Driver: Error trying to get a free entry.\00", align 1
@DRV_SPI_BUFFER_EVENT_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\0D\0ASPI Driver: Error enqueing new job.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DRV_SPI0_BufferAddWriteRead2(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i8* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64* %6, i64** %15, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* @gDrvSPI0Obj, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %struct.TYPE_6__** %17 to i8**
  %22 = call i64 @DRV_SPI_SYS_QUEUE_AllocElementLock(i32 %20, i8** %21)
  %23 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %91

27:                                               ; preds = %7
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %29 = call i32 @memset(%struct.TYPE_6__* %28, i32 0, i32 72)
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 8
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i64*, i64** %15, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %46 = ptrtoint %struct.TYPE_6__* %45 to i64
  %47 = load i64*, i64** %15, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %27
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub i64 %53, %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = sub i64 %63, %64
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @DRV_SPI_BUFFER_EVENT_PENDING, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %82 = bitcast %struct.TYPE_6__* %81 to i8*
  %83 = call i64 @DRV_SPI_SYS_QUEUE_EnqueueLock(i32 %80, i8* %82)
  %84 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %68
  %87 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %91

88:                                               ; preds = %68
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %90 = ptrtoint %struct.TYPE_6__* %89 to i64
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %88, %86, %25
  %92 = load i64, i64* %8, align 8
  ret i64 %92
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
