; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_execute_plan_with_paramlist.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_execute_plan_with_paramlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@_SPI_PLAN_MAGIC = common dso_local global i64 0, align 8
@SPI_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@InvalidSnapshot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPI_execute_plan_with_paramlist(%struct.TYPE_4__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @_SPI_PLAN_MAGIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %9, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %13, %4
  %23 = load i32, i32* @SPI_ERROR_ARGUMENT, align 4
  store i32 %23, i32* %5, align 4
  br label %40

24:                                               ; preds = %19
  %25 = call i32 @_SPI_begin_call(i32 1)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %40

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @InvalidSnapshot, align 4
  %34 = load i32, i32* @InvalidSnapshot, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @_SPI_execute_plan(%struct.TYPE_4__* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 1, i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = call i32 @_SPI_end_call(i32 1)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %30, %28, %22
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @_SPI_begin_call(i32) #1

declare dso_local i32 @_SPI_execute_plan(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @_SPI_end_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
