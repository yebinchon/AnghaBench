; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_partition.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@NPY_INTROSELECT = common dso_local global i32 0, align 4
@array_partition.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"kth\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"O|iO&O:partition\00", align 1
@PyArray_SelectkindConverter = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Cannot specify order when the array has no fields.\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"numpy.core._internal\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"_newnames\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@NPY_ARRAY_DEFAULT = common dso_local global i32 0, align 4
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_partition(i32* %0, i32* %1, i32* %2) #0 {
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
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %18 = load i32, i32* @NPY_INTROSELECT, align 4
  store i32 %18, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %12, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @PyArray_SelectkindConverter, align 4
  %22 = call i32 @PyArg_ParseTupleAndKeywords(i32* %19, i32* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @array_partition.kwlist, i64 0, i64 0), i32** %15, i32* %8, i32 %21, i32* %10, i32** %11)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %103

25:                                               ; preds = %3
  %26 = load i32*, i32** %11, align 8
  %27 = load i32*, i32** @Py_None, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32* null, i32** %11, align 8
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %12, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %37 = call i32 @PyDataType_HASFIELDS(%struct.TYPE_9__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @PyExc_ValueError, align 4
  %41 = call i32 @PyErr_SetString(i32 %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %103

42:                                               ; preds = %33
  %43 = call i32* @PyImport_ImportModule(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32* %43, i32** %17, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32* null, i32** %4, align 8
  br label %103

47:                                               ; preds = %42
  %48 = load i32*, i32** %17, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = call i32* @PyObject_CallMethod(i32* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_9__* %49, i32* %50)
  store i32* %51, i32** %16, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = call i32 @Py_DECREF(i32* %52)
  %54 = load i32*, i32** %16, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32* null, i32** %4, align 8
  br label %103

57:                                               ; preds = %47
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %59 = call %struct.TYPE_9__* @PyArray_DescrNew(%struct.TYPE_9__* %58)
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %13, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @Py_DECREF(i32* %62)
  %64 = load i32*, i32** %16, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = bitcast i32* %68 to %struct.TYPE_10__*
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %70, align 8
  br label %71

71:                                               ; preds = %57, %30
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* @NPY_ARRAY_DEFAULT, align 4
  %74 = call i64 @PyArray_FromAny(i32* %72, i32* null, i32 0, i32 1, i32 %73, i32* null)
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %14, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32* null, i32** %4, align 8
  br label %103

79:                                               ; preds = %71
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @PyArray_Partition(i32* %80, i32* %81, i32 %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @Py_DECREF(i32* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load i32*, i32** %5, align 8
  %91 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %90)
  %92 = call i32 @Py_XDECREF(%struct.TYPE_9__* %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = bitcast i32* %94 to %struct.TYPE_10__*
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %96, align 8
  br label %97

97:                                               ; preds = %89, %79
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32* null, i32** %4, align 8
  br label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %103

103:                                              ; preds = %101, %100, %78, %56, %46, %39, %24
  %104 = load i32*, i32** %4, align 8
  ret i32* %104
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**, i32*, i32, i32*, i32**) #1

declare dso_local %struct.TYPE_9__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyDataType_HASFIELDS(%struct.TYPE_9__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyImport_ImportModule(i8*) #1

declare dso_local i32* @PyObject_CallMethod(i32*, i8*, i8*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local %struct.TYPE_9__* @PyArray_DescrNew(%struct.TYPE_9__*) #1

declare dso_local i64 @PyArray_FromAny(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @PyArray_Partition(i32*, i32*, i32, i32) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
