; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_data_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32* }

@.str = private unnamed_addr constant [100 x i8] c"Assigning the 'data' attribute is an inherently unsafe operation and will be removed in the future.\00", align 1
@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Cannot delete array data\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"object does not have single-segment buffer interface\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"cannot set single-segment buffer for discontiguous array\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"not enough data for array\00", align 1
@NPY_ARRAY_OWNDATA = common dso_local global i32 0, align 4
@NPY_ARRAY_WRITEBACKIFCOPY = common dso_local global i32 0, align 4
@NPY_ARRAY_UPDATEIFCOPY = common dso_local global i32 0, align 4
@NPY_ARRAY_WRITEABLE = common dso_local global i32 0, align 4
@NPY_ARRAY_CARRAY = common dso_local global i32 0, align 4
@PyBUF_SIMPLE = common dso_local global i32 0, align 4
@PyBUF_WRITABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @array_data_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_data_set(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %8, align 4
  %10 = call i32 @DEPRECATE(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %121

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @PyExc_AttributeError, align 4
  %19 = call i32 @PyErr_SetString(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %121

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @PyObject_AsWriteBuffer(i32* %21, i8** %6, i64* %7)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = call i32 (...) @PyErr_Clear()
  store i32 0, i32* %8, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @PyObject_AsReadBuffer(i32* %26, i8** %6, i64* %7)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = call i32 (...) @PyErr_Clear()
  %31 = load i32, i32* @PyExc_AttributeError, align 4
  %32 = call i32 @PyErr_SetString(i32 %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %121

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @PyArray_ISONESEGMENT(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @PyExc_AttributeError, align 4
  %40 = call i32 @PyErr_SetString(i32 %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %121

41:                                               ; preds = %34
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @PyArray_NBYTES(i32* %42)
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @PyExc_AttributeError, align 4
  %48 = call i32 @PyErr_SetString(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %121

49:                                               ; preds = %41
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @PyArray_FLAGS(i32* %50)
  %52 = load i32, i32* @NPY_ARRAY_OWNDATA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @PyArray_XDECREF(i32* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @PyArray_DATA(i32* %58)
  %60 = call i32 @PyDataMem_FREE(i32 %59)
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @PyArray_BASE(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %61
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @PyArray_FLAGS(i32* %66)
  %68 = load i32, i32* @NPY_ARRAY_WRITEBACKIFCOPY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @PyArray_FLAGS(i32* %72)
  %74 = load i32, i32* @NPY_ARRAY_UPDATEIFCOPY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %71, %65
  %78 = load i32*, i32** %4, align 8
  %79 = call i64 @PyArray_BASE(i32* %78)
  %80 = inttoptr i64 %79 to i32*
  %81 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %82 = call i32 @PyArray_ENABLEFLAGS(i32* %80, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @NPY_ARRAY_WRITEBACKIFCOPY, align 4
  %85 = call i32 @PyArray_CLEARFLAGS(i32* %83, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @NPY_ARRAY_UPDATEIFCOPY, align 4
  %88 = call i32 @PyArray_CLEARFLAGS(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %77, %71
  %90 = load i32*, i32** %4, align 8
  %91 = call i64 @PyArray_BASE(i32* %90)
  %92 = call i32 @Py_DECREF(i64 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = bitcast i32* %93 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %89, %61
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @Py_INCREF(i32* %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = call i64 @PyArray_SetBaseObject(i32* %99, i32* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %121

104:                                              ; preds = %96
  %105 = load i8*, i8** %6, align 8
  %106 = load i32*, i32** %4, align 8
  %107 = bitcast i32* %106 to %struct.TYPE_6__*
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  %109 = load i32, i32* @NPY_ARRAY_CARRAY, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = bitcast i32* %110 to %struct.TYPE_6__*
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %104
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %118 = xor i32 %117, -1
  %119 = call i32 @PyArray_CLEARFLAGS(i32* %116, i32 %118)
  br label %120

120:                                              ; preds = %115, %104
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %103, %46, %38, %29, %17, %13
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @DEPRECATE(i8*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PyObject_AsWriteBuffer(i32*, i8**, i64*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i64 @PyObject_AsReadBuffer(i32*, i8**, i64*) #1

declare dso_local i32 @PyArray_ISONESEGMENT(i32*) #1

declare dso_local i64 @PyArray_NBYTES(i32*) #1

declare dso_local i32 @PyArray_FLAGS(i32*) #1

declare dso_local i32 @PyArray_XDECREF(i32*) #1

declare dso_local i32 @PyDataMem_FREE(i32) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

declare dso_local i64 @PyArray_BASE(i32*) #1

declare dso_local i32 @PyArray_ENABLEFLAGS(i32*, i32) #1

declare dso_local i32 @PyArray_CLEARFLAGS(i32*, i32) #1

declare dso_local i32 @Py_DECREF(i64) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyArray_SetBaseObject(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
