; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_argpartition.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_argpartition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@NPY_INTROSELECT = common dso_local global i32 0, align 4
@array_argpartition.kwlist = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"kth\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"O|O&O&O:argpartition\00", align 1
@PyArray_AxisConverter = common dso_local global i32 0, align 4
@PyArray_SelectkindConverter = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Cannot specify order when the array has no fields.\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"numpy.core._internal\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"_newnames\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@NPY_ARRAY_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_argpartition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_argpartition(i32* %0, i32* %1, i32* %2) #0 {
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
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %18 = load i32, i32* @NPY_INTROSELECT, align 4
  store i32 %18, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @PyArray_AxisConverter, align 4
  %22 = load i32, i32* @PyArray_SelectkindConverter, align 4
  %23 = call i32 @PyArg_ParseTupleAndKeywords(i32* %19, i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @array_argpartition.kwlist, i64 0, i64 0), i32** %14, i32 %21, i32* %8, i32 %22, i32* %9, i32** %10)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %101

26:                                               ; preds = %3
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** @Py_None, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32* null, i32** %10, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %72

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %13, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %38 = call i32 @PyDataType_HASFIELDS(%struct.TYPE_9__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @PyExc_ValueError, align 4
  %42 = call i32 @PyErr_SetString(i32 %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %101

43:                                               ; preds = %34
  %44 = call i32* @PyImport_ImportModule(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32* %44, i32** %17, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32* null, i32** %4, align 8
  br label %101

48:                                               ; preds = %43
  %49 = load i32*, i32** %17, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32* @PyObject_CallMethod(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_9__* %50, i32* %51)
  store i32* %52, i32** %16, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = call i32 @Py_DECREF(i32* %53)
  %55 = load i32*, i32** %16, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32* null, i32** %4, align 8
  br label %101

58:                                               ; preds = %48
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %60 = call %struct.TYPE_9__* @PyArray_DescrNew(%struct.TYPE_9__* %59)
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %12, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @Py_DECREF(i32* %63)
  %65 = load i32*, i32** %16, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = bitcast i32* %69 to %struct.TYPE_10__*
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %71, align 8
  br label %72

72:                                               ; preds = %58, %31
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* @NPY_ARRAY_DEFAULT, align 4
  %75 = call i64 @PyArray_FromAny(i32* %73, i32* null, i32 0, i32 1, i32 %74, i32* null)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %15, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32* null, i32** %4, align 8
  br label %101

80:                                               ; preds = %72
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32* @PyArray_ArgPartition(i32* %81, i32* %82, i32 %83, i32 %84)
  store i32* %85, i32** %11, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @Py_DECREF(i32* %86)
  %88 = load i32*, i32** %10, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %80
  %91 = load i32*, i32** %5, align 8
  %92 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %91)
  %93 = call i32 @Py_XDECREF(%struct.TYPE_9__* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = bitcast i32* %95 to %struct.TYPE_10__*
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %97, align 8
  br label %98

98:                                               ; preds = %90, %80
  %99 = load i32*, i32** %11, align 8
  %100 = call i32* @PyArray_Return(i32* %99)
  store i32* %100, i32** %4, align 8
  br label %101

101:                                              ; preds = %98, %79, %57, %47, %40, %25
  %102 = load i32*, i32** %4, align 8
  ret i32* %102
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**, i32, i32*, i32, i32*, i32**) #1

declare dso_local %struct.TYPE_9__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyDataType_HASFIELDS(%struct.TYPE_9__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyImport_ImportModule(i8*) #1

declare dso_local i32* @PyObject_CallMethod(i32*, i8*, i8*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local %struct.TYPE_9__* @PyArray_DescrNew(%struct.TYPE_9__*) #1

declare dso_local i64 @PyArray_FromAny(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @PyArray_ArgPartition(i32*, i32*, i32, i32) #1

declare dso_local i32 @Py_XDECREF(%struct.TYPE_9__*) #1

declare dso_local i32* @PyArray_Return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
