; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_reshape.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_reshape.keywords = internal global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"order\00", align 1
@NPY_CORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"|O&\00", align 1
@PyArray_OrderConverter = common dso_local global i32 0, align 4
@Py_None = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"O&:reshape\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"invalid shape\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_reshape(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @NPY_CORDER, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @PyTuple_Size(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @PyArray_OrderConverter, align 4
  %17 = call i32 @NpyArg_ParseKeywords(i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @array_reshape.keywords, i64 0, i64 0), i32 %16, i32* %10)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %62

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = icmp sle i32 %21, 1
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @PyTuple_GET_ITEM(i32* %27, i32 0)
  %29 = load i64, i64* @Py_None, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @PyArray_View(i32* %32, i32* null, i32* null)
  store i32* %33, i32** %4, align 8
  br label %62

34:                                               ; preds = %26, %23
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @PyArg_ParseTuple(i32* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 (i32*, i32*)* @PyArray_IntpConverter, i32* %8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32* null, i32** %4, align 8
  br label %62

39:                                               ; preds = %34
  br label %52

40:                                               ; preds = %20
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @PyArray_IntpConverter(i32* %41, i32* %8)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = call i32 (...) @PyErr_Occurred()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @PyExc_TypeError, align 4
  %49 = call i32 @PyErr_SetString(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  br label %59

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32* @PyArray_Newshape(i32* %53, i32* %8, i32 %54)
  store i32* %55, i32** %9, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @npy_free_cache_dim_obj(i32 %56)
  %58 = load i32*, i32** %9, align 8
  store i32* %58, i32** %4, align 8
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @npy_free_cache_dim_obj(i32 %60)
  store i32* null, i32** %4, align 8
  br label %62

62:                                               ; preds = %59, %52, %38, %31, %19
  %63 = load i32*, i32** %4, align 8
  ret i32* %63
}

declare dso_local i32 @PyTuple_Size(i32*) #1

declare dso_local i32 @NpyArg_ParseKeywords(i32*, i8*, i8**, i32, i32*) #1

declare dso_local i64 @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32* @PyArray_View(i32*, i32*, i32*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32 (i32*, i32*)*, i32*) #1

declare dso_local i32 @PyArray_IntpConverter(i32*, i32*) #1

declare dso_local i32 @PyErr_Occurred(...) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyArray_Newshape(i32*, i32*, i32) #1

declare dso_local i32 @npy_free_cache_dim_obj(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
