; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_finish.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32*, i32 }

@_SPI_current = common dso_local global %struct.TYPE_3__* null, align 8
@SPI_processed = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global i32 0, align 4
@SPI_result = common dso_local global i32 0, align 4
@_SPI_connected = common dso_local global i64 0, align 8
@_SPI_stack = common dso_local global %struct.TYPE_3__* null, align 8
@SPI_OK_FINISH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPI_finish() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @_SPI_begin_call(i32 0)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %45

8:                                                ; preds = %0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_SPI_current, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @MemoryContextSwitchTo(i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_SPI_current, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @MemoryContextDelete(i32* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_SPI_current, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_SPI_current, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @MemoryContextDelete(i32* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_SPI_current, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_SPI_current, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* @SPI_processed, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_SPI_current, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @SPI_tuptable, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_SPI_current, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* @SPI_result, align 4
  %34 = load i64, i64* @_SPI_connected, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* @_SPI_connected, align 8
  %36 = load i64, i64* @_SPI_connected, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @_SPI_current, align 8
  br label %43

39:                                               ; preds = %8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_SPI_stack, align 8
  %41 = load i64, i64* @_SPI_connected, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** @_SPI_current, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32, i32* @SPI_OK_FINISH, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %43, %6
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @_SPI_begin_call(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @MemoryContextDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
