; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_sys_queue.c_DRV_SPI_SYS_QUEUE_DestroyQueue.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_sys_queue.c_DRV_SPI_SYS_QUEUE_DestroyQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@DRV_SPI_SYS_QUEUE_MAX_ERROR = common dso_local global i64 0, align 8
@DRV_SPI_SYS_QUEUE_INVALID_PARAMETER = common dso_local global i32 0, align 4
@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI_SYS_QUEUE_DestroyQueue(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @DRV_SPI_SYS_QUEUE_MAX_ERROR, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @DRV_SPI_SYS_QUEUE_INVALID_PARAMETER, align 4
  store i32 %14, i32* %2, align 4
  br label %69

15:                                               ; preds = %9, %1
  %16 = load i64, i64* %3, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @DRV_SPI_SYS_QUEUE_INVALID_PARAMETER, align 4
  store i32 %26, i32* %2, align 4
  br label %69

27:                                               ; preds = %15
  store i8* null, i8** %6, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @DRV_SPI_SYS_QUEUE_Dequeue(i64 %28, i8** %6)
  br label %30

30:                                               ; preds = %33, %27
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i64, i64* %3, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @DRV_SPI_SYS_QUEUE_FreeElement(i64 %34, i8* %35)
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @DRV_SPI_SYS_QUEUE_Dequeue(i64 %37, i8** %6)
  br label %30

39:                                               ; preds = %30
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp eq %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %57, align 8
  br label %67

58:                                               ; preds = %39
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %66, align 8
  br label %67

67:                                               ; preds = %58, %51
  %68 = load i32, i32* @DRV_SPI_SYS_QUEUE_SUCCESS, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %25, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @DRV_SPI_SYS_QUEUE_Dequeue(i64, i8**) #1

declare dso_local i32 @DRV_SPI_SYS_QUEUE_FreeElement(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
