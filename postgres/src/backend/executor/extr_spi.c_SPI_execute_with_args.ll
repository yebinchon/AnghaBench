; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_execute_with_args.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_execute_with_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, i32, i32 }

@SPI_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@SPI_ERROR_PARAM = common dso_local global i32 0, align 4
@_SPI_PLAN_MAGIC = common dso_local global i32 0, align 4
@CURSOR_OPT_PARALLEL_OK = common dso_local global i32 0, align 4
@InvalidSnapshot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPI_execute_with_args(i8* %0, i32 %1, i32* %2, i32* %3, i8* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %15, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21, %7
  %28 = load i32, i32* @SPI_ERROR_ARGUMENT, align 4
  store i32 %28, i32* %8, align 4
  br label %73

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32*, i32** %11, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %12, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @SPI_ERROR_PARAM, align 4
  store i32 %39, i32* %8, align 4
  br label %73

40:                                               ; preds = %35, %29
  %41 = call i32 @_SPI_begin_call(i32 1)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %8, align 4
  br label %73

46:                                               ; preds = %40
  %47 = call i32 @memset(%struct.TYPE_5__* %17, i32 0, i32 40)
  %48 = load i32, i32* @_SPI_PLAN_MAGIC, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @CURSOR_OPT_PARALLEL_OK, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i32* %54, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @_SPI_convert_params(i32 %58, i32* %59, i32* %60, i8* %61)
  store i32 %62, i32* %18, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @_SPI_prepare_oneshot_plan(i8* %63, %struct.TYPE_5__* %17)
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @InvalidSnapshot, align 4
  %67 = load i32, i32* @InvalidSnapshot, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @_SPI_execute_plan(%struct.TYPE_5__* %17, i32 %65, i32 %66, i32 %67, i32 %68, i32 1, i64 %69)
  store i32 %70, i32* %16, align 4
  %71 = call i32 @_SPI_end_call(i32 1)
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %46, %44, %38, %27
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @_SPI_begin_call(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @_SPI_convert_params(i32, i32*, i32*, i8*) #1

declare dso_local i32 @_SPI_prepare_oneshot_plan(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @_SPI_execute_plan(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @_SPI_end_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
