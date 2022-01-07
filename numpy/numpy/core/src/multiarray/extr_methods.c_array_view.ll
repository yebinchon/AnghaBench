; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_view.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_view.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"|OO:view\00", align 1
@PyArray_Type = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Cannot specify output type twice.\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Type must be a sub-type of ndarray type\00", align 1
@NPY_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_view(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @PyArg_ParseTupleAndKeywords(i32* %11, i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @array_view.kwlist, i64 0, i64 0), i32** %8, i32** %9)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %64

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @PyType_Check(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @PyType_IsSubtype(i32* %24, i32* @PyArray_Type)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @PyExc_ValueError, align 4
  %32 = call i32 @PyErr_SetString(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %64

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  store i32* %34, i32** %9, align 8
  store i32* null, i32** %8, align 8
  br label %35

35:                                               ; preds = %33, %23, %19
  br label %36

36:                                               ; preds = %35, %16
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @PyType_Check(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @PyType_IsSubtype(i32* %44, i32* @PyArray_Type)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @PyExc_ValueError, align 4
  %49 = call i32 @PyErr_SetString(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %64

50:                                               ; preds = %43, %36
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @PyArray_DescrConverter(i32* %54, i32** %10)
  %56 = load i64, i64* @NPY_FAIL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32* null, i32** %4, align 8
  br label %64

59:                                               ; preds = %53, %50
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32* @PyArray_View(i32* %60, i32* %61, i32* %62)
  store i32* %63, i32** %4, align 8
  br label %64

64:                                               ; preds = %59, %58, %47, %30, %15
  %65 = load i32*, i32** %4, align 8
  ret i32* %65
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**, i32**) #1

declare dso_local i64 @PyType_Check(i32*) #1

declare dso_local i64 @PyType_IsSubtype(i32*, i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PyArray_DescrConverter(i32*, i32**) #1

declare dso_local i32* @PyArray_View(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
