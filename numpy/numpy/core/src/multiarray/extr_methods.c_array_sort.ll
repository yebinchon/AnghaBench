; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_sort.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@NPY_QUICKSORT = common dso_local global i32 0, align 4
@array_sort.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"|iO&O:sort\00", align 1
@PyArray_SortkindConverter = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Cannot specify order when the array has no fields.\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"numpy.core._internal\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"_newnames\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_sort(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %16 = load i32, i32* @NPY_QUICKSORT, align 4
  store i32 %16, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @PyArray_SortkindConverter, align 4
  %20 = call i32 @PyArg_ParseTupleAndKeywords(i32* %17, i32* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @array_sort.kwlist, i64 0, i64 0), i32* %8, i32 %19, i32* %10, i32** %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %90

23:                                               ; preds = %3
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** @Py_None, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32* null, i32** %11, align 8
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %69

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %12, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %35 = call i32 @PyDataType_HASFIELDS(%struct.TYPE_9__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @PyExc_ValueError, align 4
  %39 = call i32 @PyErr_SetString(i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %90

40:                                               ; preds = %31
  %41 = call i32* @PyImport_ImportModule(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32* null, i32** %4, align 8
  br label %90

45:                                               ; preds = %40
  %46 = load i32*, i32** %15, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32* @PyObject_CallMethod(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_9__* %47, i32* %48)
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @Py_DECREF(i32* %50)
  %52 = load i32*, i32** %14, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32* null, i32** %4, align 8
  br label %90

55:                                               ; preds = %45
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %57 = call %struct.TYPE_9__* @PyArray_DescrNew(%struct.TYPE_9__* %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %13, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @Py_DECREF(i32* %60)
  %62 = load i32*, i32** %14, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = bitcast i32* %66 to %struct.TYPE_10__*
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %68, align 8
  br label %69

69:                                               ; preds = %55, %28
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @PyArray_Sort(i32* %70, i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32*, i32** %5, align 8
  %78 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %77)
  %79 = call i32 @Py_XDECREF(%struct.TYPE_9__* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = bitcast i32* %81 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %83, align 8
  br label %84

84:                                               ; preds = %76, %69
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32* null, i32** %4, align 8
  br label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %90

90:                                               ; preds = %88, %87, %54, %44, %37, %22
  %91 = load i32*, i32** %4, align 8
  ret i32* %91
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32*, i32, i32*, i32**) #1

declare dso_local %struct.TYPE_9__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyDataType_HASFIELDS(%struct.TYPE_9__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyImport_ImportModule(i8*) #1

declare dso_local i32* @PyObject_CallMethod(i32*, i8*, i8*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local %struct.TYPE_9__* @PyArray_DescrNew(%struct.TYPE_9__*) #1

declare dso_local i32 @PyArray_Sort(i32*, i32, i32) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
