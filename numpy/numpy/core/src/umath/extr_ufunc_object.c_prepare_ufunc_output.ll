; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_prepare_ufunc_output.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_prepare_ufunc_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_None = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"O(OOi)\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"__array_prepare__ must return an ndarray or subclass thereof\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"__array_prepare__ must return an ndarray or subclass thereof which is otherwise identical to its input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*, i32, i32)* @prepare_ufunc_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_ufunc_output(i32* %0, i32** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %107

17:                                               ; preds = %5
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** @Py_None, align 8
  %20 = icmp ne i32* %18, %19
  br i1 %20, label %21, label %107

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = call i32* @_get_wrap_prepare_args(i32 %22)
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %108

27:                                               ; preds = %21
  %28 = load i32*, i32** %9, align 8
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32* @PyObject_CallFunction(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %30, i32* %31, i32* %32, i32 %33)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @Py_DECREF(i32* %35)
  %37 = load i32*, i32** %12, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %108

40:                                               ; preds = %27
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @PyArray_Check(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @PyExc_TypeError, align 4
  %46 = call i32 @PyErr_SetString(i32 %45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @Py_DECREF(i32* %47)
  store i32 -1, i32* %6, align 4
  br label %108

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32*, i32** %12, align 8
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32**, i32*** %8, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @Py_DECREF(i32* %57)
  br label %106

59:                                               ; preds = %50
  %60 = load i32*, i32** %13, align 8
  %61 = call i64 @PyArray_NDIM(i32* %60)
  %62 = load i32**, i32*** %8, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @PyArray_NDIM(i32* %63)
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %94, label %66

66:                                               ; preds = %59
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @PyArray_DIMS(i32* %67)
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @PyArray_DIMS(i32* %70)
  %72 = load i32*, i32** %13, align 8
  %73 = call i64 @PyArray_NDIM(i32* %72)
  %74 = call i32 @PyArray_CompareLists(i32 %68, i32 %71, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %66
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @PyArray_STRIDES(i32* %77)
  %79 = load i32**, i32*** %8, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @PyArray_STRIDES(i32* %80)
  %82 = load i32*, i32** %13, align 8
  %83 = call i64 @PyArray_NDIM(i32* %82)
  %84 = call i32 @PyArray_CompareLists(i32 %78, i32 %81, i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @PyArray_DESCR(i32* %87)
  %89 = load i32**, i32*** %8, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @PyArray_DESCR(i32* %90)
  %92 = call i32 @PyArray_EquivTypes(i32 %88, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %86, %76, %66, %59
  %95 = load i32, i32* @PyExc_TypeError, align 4
  %96 = call i32 @PyErr_SetString(i32 %95, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @Py_DECREF(i32* %97)
  store i32 -1, i32* %6, align 4
  br label %108

99:                                               ; preds = %86
  %100 = load i32**, i32*** %8, align 8
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @Py_DECREF(i32* %101)
  %103 = load i32*, i32** %13, align 8
  %104 = load i32**, i32*** %8, align 8
  store i32* %103, i32** %104, align 8
  br label %105

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %56
  br label %107

107:                                              ; preds = %106, %17, %5
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %94, %44, %39, %26
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32* @_get_wrap_prepare_args(i32) #1

declare dso_local i32* @PyObject_CallFunction(i32*, i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyArray_Check(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_CompareLists(i32, i32, i64) #1

declare dso_local i32 @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyArray_STRIDES(i32*) #1

declare dso_local i32 @PyArray_EquivTypes(i32, i32) #1

declare dso_local i32 @PyArray_DESCR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
