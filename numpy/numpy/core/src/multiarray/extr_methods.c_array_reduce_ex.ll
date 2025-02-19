; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_reduce_ex.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_reduce_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@NPY_ITEM_HASOBJECT = common dso_local global i32 0, align 4
@PyArray_Type = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"__reduce_ex__ called with protocol > 5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, %struct.TYPE_10__*)* @array_reduce_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @array_reduce_ex(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = call i32 @PyArg_ParseTuple(%struct.TYPE_10__* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %62

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_11__* @PyArray_DESCR(i32* %13)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %48, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @PyArray_IS_C_CONTIGUOUS(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @PyArray_IS_F_CONTIGUOUS(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %21, %17
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = load i32, i32* @NPY_ITEM_HASOBJECT, align 4
  %28 = call i64 @PyDataType_FLAGCHK(%struct.TYPE_11__* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = bitcast i32* %31 to %struct.TYPE_10__*
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @PyType_IsSubtype(i32* %34, i32* @PyArray_Type)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_10__*
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, @PyArray_Type
  br i1 %42, label %48, label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43, %37, %25, %21, %12
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.TYPE_10__* @array_reduce_ex_regular(i32* %49, i32 %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %3, align 8
  br label %62

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 5
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.TYPE_10__* @array_reduce_ex_picklebuffer(i32* %56, i32 %57)
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %3, align 8
  br label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @PyExc_ValueError, align 4
  %61 = call i32 @PyErr_Format(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %62

62:                                               ; preds = %59, %55, %48, %11
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %63
}

declare dso_local i32 @PyArg_ParseTuple(%struct.TYPE_10__*, i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyArray_IS_C_CONTIGUOUS(i32*) #1

declare dso_local i32 @PyArray_IS_F_CONTIGUOUS(i32*) #1

declare dso_local i64 @PyDataType_FLAGCHK(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @PyType_IsSubtype(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @array_reduce_ex_regular(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @array_reduce_ex_picklebuffer(i32*, i32) #1

declare dso_local i32 @PyErr_Format(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
