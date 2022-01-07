; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_saveplan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_saveplan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@_SPI_PLAN_MAGIC = common dso_local global i64 0, align 8
@SPI_ERROR_ARGUMENT = common dso_local global i64 0, align 8
@SPI_result = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @SPI_saveplan(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = icmp eq %struct.TYPE_6__* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @_SPI_PLAN_MAGIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7, %1
  %14 = load i64, i64* @SPI_ERROR_ARGUMENT, align 8
  store i64 %14, i64* @SPI_result, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %25

15:                                               ; preds = %7
  %16 = call i64 @_SPI_begin_call(i32 0)
  store i64 %16, i64* @SPI_result, align 8
  %17 = load i64, i64* @SPI_result, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = call %struct.TYPE_6__* @_SPI_save_plan(%struct.TYPE_6__* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %4, align 8
  %23 = call i64 @_SPI_end_call(i32 0)
  store i64 %23, i64* @SPI_result, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %2, align 8
  br label %25

25:                                               ; preds = %20, %19, %13
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %26
}

declare dso_local i64 @_SPI_begin_call(i32) #1

declare dso_local %struct.TYPE_6__* @_SPI_save_plan(%struct.TYPE_6__*) #1

declare dso_local i64 @_SPI_end_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
