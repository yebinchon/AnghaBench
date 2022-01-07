; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_string_to_datetime_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_string_to_datetime_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32* }

@NPY_FAIL = common dso_local global i32 0, align 4
@_strided_datetime_cast_data_free = common dso_local global i32 0, align 4
@_strided_datetime_cast_data_clone = common dso_local global i32 0, align 4
@_strided_to_strided_string_to_datetime = common dso_local global i32 0, align 4
@NPY_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, i32**, i32**)* @get_nbo_string_to_datetime_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nbo_string_to_datetime_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_10__* %3, %struct.TYPE_10__* %4, i32** %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32** %6, i32*** %15, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %19 = call i32* @get_datetime_metadata_from_dtype(%struct.TYPE_10__* %18)
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @NPY_FAIL, align 4
  store i32 %23, i32* %8, align 4
  br label %74

24:                                               ; preds = %7
  %25 = call i32* @PyArray_malloc(i32 32)
  %26 = bitcast i32* %25 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %17, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %28 = icmp eq %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = call i32 (...) @PyErr_NoMemory()
  %31 = load i32**, i32*** %14, align 8
  store i32* null, i32** %31, align 8
  %32 = load i32**, i32*** %15, align 8
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @NPY_FAIL, align 4
  store i32 %33, i32* %8, align 4
  br label %74

34:                                               ; preds = %24
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32* @_strided_datetime_cast_data_free, i32** %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32* @_strided_datetime_cast_data_clone, i32** %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = call i32* @PyArray_malloc(i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %34
  %58 = call i32 (...) @PyErr_NoMemory()
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %60 = call i32 @PyArray_free(%struct.TYPE_9__* %59)
  %61 = load i32**, i32*** %14, align 8
  store i32* null, i32** %61, align 8
  %62 = load i32**, i32*** %15, align 8
  store i32* null, i32** %62, align 8
  %63 = load i32, i32* @NPY_FAIL, align 4
  store i32 %63, i32* %8, align 4
  br label %74

64:                                               ; preds = %34
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @memcpy(i32* %66, i32* %67, i32 4)
  %69 = load i32**, i32*** %14, align 8
  store i32* @_strided_to_strided_string_to_datetime, i32** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %71 = bitcast %struct.TYPE_9__* %70 to i32*
  %72 = load i32**, i32*** %15, align 8
  store i32* %71, i32** %72, align 8
  %73 = load i32, i32* @NPY_SUCCEED, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %64, %57, %29, %22
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32* @get_datetime_metadata_from_dtype(%struct.TYPE_10__*) #1

declare dso_local i32* @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
