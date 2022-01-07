; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_register_relation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_register_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@SPI_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@SPI_ERROR_REL_DUPLICATE = common dso_local global i32 0, align 4
@_SPI_current = common dso_local global %struct.TYPE_9__* null, align 8
@SPI_OK_REL_REGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPI_register_relation(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @SPI_ERROR_ARGUMENT, align 4
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %8
  %17 = call i32 @_SPI_begin_call(i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call %struct.TYPE_8__* @_SPI_find_ENR_by_name(i32* %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %4, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @SPI_ERROR_REL_DUPLICATE, align 4
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_SPI_current, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32* (...) @create_queryEnv()
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_SPI_current, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_SPI_current, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = call i32 @register_ENR(i32* %44, %struct.TYPE_8__* %45)
  %47 = load i32, i32* @SPI_OK_REL_REGISTER, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %30
  %49 = call i32 @_SPI_end_call(i32 0)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %20, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @_SPI_begin_call(i32) #1

declare dso_local %struct.TYPE_8__* @_SPI_find_ENR_by_name(i32*) #1

declare dso_local i32* @create_queryEnv(...) #1

declare dso_local i32 @register_ENR(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @_SPI_end_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
