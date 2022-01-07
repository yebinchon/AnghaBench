; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c__SPI_cursor_operation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c__SPI_cursor_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid portal in SPI cursor operation\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"SPI cursor operation called while not connected\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@SPI_tuptable = common dso_local global i32* null, align 8
@_SPI_current = common dso_local global %struct.TYPE_6__* null, align 8
@DestSPI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"consistency check on SPI tuple count failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, %struct.TYPE_5__*)* @_SPI_cursor_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_SPI_cursor_operation(i32 %0, i32 %1, i64 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @PortalIsValid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @ERROR, align 4
  %15 = call i32 @elog(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %4
  %17 = call i64 @_SPI_begin_call(i32 1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16
  store i64 0, i64* @SPI_processed, align 8
  store i32* null, i32** @SPI_tuptable, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_SPI_current, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_SPI_current, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = call i64 @PortalRunFetch(i32 %27, i32 %28, i64 %29, %struct.TYPE_5__* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_SPI_current, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DestSPI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %22
  %41 = call i64 (...) @_SPI_checktuples()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @ERROR, align 4
  %45 = call i32 @elog(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40, %22
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_SPI_current, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* @SPI_processed, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_SPI_current, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** @SPI_tuptable, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @_SPI_current, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = call i32 @_SPI_end_call(i32 1)
  ret void
}

declare dso_local i32 @PortalIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @_SPI_begin_call(i32) #1

declare dso_local i64 @PortalRunFetch(i32, i32, i64, %struct.TYPE_5__*) #1

declare dso_local i64 @_SPI_checktuples(...) #1

declare dso_local i32 @_SPI_end_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
