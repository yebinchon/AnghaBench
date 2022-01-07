; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_copytuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_copytuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SPI_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@SPI_result = common dso_local global i32 0, align 4
@_SPI_current = common dso_local global %struct.TYPE_2__* null, align 8
@SPI_ERROR_UNCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SPI_copytuple(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @SPI_ERROR_ARGUMENT, align 4
  store i32 %9, i32* @SPI_result, align 4
  store i32* null, i32** %2, align 8
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_SPI_current, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @SPI_ERROR_UNCONNECTED, align 4
  store i32 %14, i32* @SPI_result, align 4
  store i32* null, i32** %2, align 8
  br label %25

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_SPI_current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MemoryContextSwitchTo(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @heap_copytuple(i32* %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  %24 = load i32*, i32** %5, align 8
  store i32* %24, i32** %2, align 8
  br label %25

25:                                               ; preds = %15, %13, %8
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @heap_copytuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
