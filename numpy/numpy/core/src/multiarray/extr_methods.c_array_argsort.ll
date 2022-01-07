; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_argsort.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_argsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@NPY_QUICKSORT = common dso_local global i32 0, align 4
@array_argsort.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"|O&O&O:argsort\00", align 1
@PyArray_AxisConverter = common dso_local global i32 0, align 4
@PyArray_SortkindConverter = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Cannot specify order when the array has no fields.\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"numpy.core._internal\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"_newnames\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_argsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_argsort(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
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
  store i32 %16, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @PyArray_AxisConverter, align 4
  %20 = load i32, i32* @PyArray_SortkindConverter, align 4
  %21 = call i32 @PyArg_ParseTupleAndKeywords(i32* %17, i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @array_argsort.kwlist, i64 0, i64 0), i32 %19, i32* %8, i32 %20, i32* %9, i32** %10)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %88

24:                                               ; preds = %3
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** @Py_None, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32* null, i32** %10, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %13, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %36 = call i32 @PyDataType_HASFIELDS(%struct.TYPE_9__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @PyExc_ValueError, align 4
  %40 = call i32 @PyErr_SetString(i32 %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %88

41:                                               ; preds = %32
  %42 = call i32* @PyImport_ImportModule(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32* null, i32** %4, align 8
  br label %88

46:                                               ; preds = %41
  %47 = load i32*, i32** %15, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32* @PyObject_CallMethod(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_9__* %48, i32* %49)
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @Py_DECREF(i32* %51)
  %53 = load i32*, i32** %14, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32* null, i32** %4, align 8
  br label %88

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = call %struct.TYPE_9__* @PyArray_DescrNew(%struct.TYPE_9__* %57)
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %12, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @Py_DECREF(i32* %61)
  %63 = load i32*, i32** %14, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = bitcast i32* %67 to %struct.TYPE_10__*
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %69, align 8
  br label %70

70:                                               ; preds = %56, %29
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32* @PyArray_ArgSort(i32* %71, i32 %72, i32 %73)
  store i32* %74, i32** %11, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32*, i32** %5, align 8
  %79 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %78)
  %80 = call i32 @Py_XDECREF(%struct.TYPE_9__* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = bitcast i32* %82 to %struct.TYPE_10__*
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %84, align 8
  br label %85

85:                                               ; preds = %77, %70
  %86 = load i32*, i32** %11, align 8
  %87 = call i32* @PyArray_Return(i32* %86)
  store i32* %87, i32** %4, align 8
  br label %88

88:                                               ; preds = %85, %55, %45, %38, %23
  %89 = load i32*, i32** %4, align 8
  ret i32* %89
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32, i32*, i32, i32*, i32**) #1

declare dso_local %struct.TYPE_9__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyDataType_HASFIELDS(%struct.TYPE_9__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyImport_ImportModule(i8*) #1

declare dso_local i32* @PyObject_CallMethod(i32*, i8*, i8*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local %struct.TYPE_9__* @PyArray_DescrNew(%struct.TYPE_9__*) #1

declare dso_local i32* @PyArray_ArgSort(i32*, i32, i32) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_9__*) #1

declare dso_local i32* @PyArray_Return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
