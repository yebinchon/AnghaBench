; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_commastring.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_commastring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"numpy.core._internal\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"_commastring\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"_commastring is not returning a list with len >= 1\00", align 1
@NPY_FAIL = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"invalid data-type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @_convert_from_commastring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_convert_from_commastring(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @PyBytes_Check(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %71

14:                                               ; preds = %2
  %15 = call i32* @PyImport_ImportModule(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %71

19:                                               ; preds = %14
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @PyObject_CallMethod(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @Py_DECREF(i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32* null, i32** %3, align 8
  br label %71

28:                                               ; preds = %19
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @PyList_Check(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @PyList_GET_SIZE(i32* %33)
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @PyExc_RuntimeError, align 4
  %38 = call i32 @PyErr_SetString(i32 %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @Py_DECREF(i32* %39)
  store i32* null, i32** %3, align 8
  br label %71

41:                                               ; preds = %32
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @PyList_GET_SIZE(i32* %42)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @PyList_GET_ITEM(i32* %46, i32 0)
  %48 = call i32 @PyArray_DescrConverter(i32 %47, i32** %7)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @NPY_FAIL, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32* null, i32** %7, align 8
  br label %53

53:                                               ; preds = %52, %45
  br label %58

54:                                               ; preds = %41
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32* @_convert_from_list(i32* %55, i32 %56)
  store i32* %57, i32** %7, align 8
  br label %58

58:                                               ; preds = %54, %53
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @Py_DECREF(i32* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = call i32 (...) @PyErr_Occurred()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @PyExc_ValueError, align 4
  %68 = call i32 @PyErr_SetString(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %71

69:                                               ; preds = %63, %58
  %70 = load i32*, i32** %7, align 8
  store i32* %70, i32** %3, align 8
  br label %71

71:                                               ; preds = %69, %66, %36, %27, %18, %13
  %72 = load i32*, i32** %3, align 8
  ret i32* %72
}

declare dso_local i32 @PyBytes_Check(i32*) #1

declare dso_local i32* @PyImport_ImportModule(i8*) #1

declare dso_local i32* @PyObject_CallMethod(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyList_Check(i32*) #1

declare dso_local i32 @PyList_GET_SIZE(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyArray_DescrConverter(i32, i32**) #1

declare dso_local i32 @PyList_GET_ITEM(i32*, i32) #1

declare dso_local i32* @_convert_from_list(i32*, i32) #1

declare dso_local i32 @PyErr_Occurred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
