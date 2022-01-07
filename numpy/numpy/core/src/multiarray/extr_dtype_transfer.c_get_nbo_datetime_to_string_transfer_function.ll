; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_datetime_to_string_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_datetime_to_string_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32* }

@NPY_FAIL = common dso_local global i32 0, align 4
@_strided_datetime_cast_data_free = common dso_local global i32 0, align 4
@_strided_datetime_cast_data_clone = common dso_local global i32 0, align 4
@_strided_to_strided_datetime_to_string = common dso_local global i32 0, align 4
@NPY_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32**, i32**)* @get_nbo_datetime_to_string_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nbo_datetime_to_string_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4, i32** %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32** %6, i32*** %15, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %19 = call i32* @get_datetime_metadata_from_dtype(%struct.TYPE_9__* %18)
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @NPY_FAIL, align 4
  store i32 %23, i32* %8, align 4
  br label %57

24:                                               ; preds = %7
  %25 = call i64 @PyArray_malloc(i32 40)
  %26 = inttoptr i64 %25 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %17, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = call i32 (...) @PyErr_NoMemory()
  %31 = load i32**, i32*** %14, align 8
  store i32* null, i32** %31, align 8
  %32 = load i32**, i32*** %15, align 8
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @NPY_FAIL, align 4
  store i32 %33, i32* %8, align 4
  br label %57

34:                                               ; preds = %24
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32* @_strided_datetime_cast_data_free, i32** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32* @_strided_datetime_cast_data_clone, i32** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @memcpy(i32* %49, i32* %50, i32 4)
  %52 = load i32**, i32*** %14, align 8
  store i32* @_strided_to_strided_datetime_to_string, i32** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %54 = bitcast %struct.TYPE_8__* %53 to i32*
  %55 = load i32**, i32*** %15, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32, i32* @NPY_SUCCEED, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %34, %29, %22
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32* @get_datetime_metadata_from_dtype(%struct.TYPE_9__*) #1

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
