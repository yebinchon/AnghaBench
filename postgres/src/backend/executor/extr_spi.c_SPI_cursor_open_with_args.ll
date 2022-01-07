; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_cursor_open_with_args.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_cursor_open_with_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i32*, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"SPI_cursor_open_with_args called with invalid arguments\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"SPI_cursor_open_with_args called with missing parameters\00", align 1
@SPI_result = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"SPI_cursor_open_with_args called while not connected\00", align 1
@_SPI_PLAN_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPI_cursor_open_with_args(i8* %0, i8* %1, i32 %2, i32* %3, i32* %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %8
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %8
  %26 = load i32, i32* @ERROR, align 4
  %27 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32*, i32** %12, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %13, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34, %28
  %41 = call i64 @_SPI_begin_call(i32 1)
  store i64 %41, i64* @SPI_result, align 8
  %42 = load i64, i64* @SPI_result, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %40
  %48 = call i32 @memset(%struct.TYPE_5__* %18, i32 0, i32 40)
  %49 = load i32, i32* @_SPI_PLAN_MAGIC, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %16, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  store i32* %55, i32** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @_SPI_convert_params(i32 %59, i32* %60, i32* %61, i8* %62)
  store i32 %63, i32* %19, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @_SPI_prepare_plan(i8* %64, %struct.TYPE_5__* %18)
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @SPI_cursor_open_internal(i8* %66, %struct.TYPE_5__* %18, i32 %67, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = call i32 @_SPI_end_call(i32 1)
  %71 = load i32, i32* %17, align 4
  ret i32 %71
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @_SPI_begin_call(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @_SPI_convert_params(i32, i32*, i32*, i8*) #1

declare dso_local i32 @_SPI_prepare_plan(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @SPI_cursor_open_internal(i8*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @_SPI_end_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
