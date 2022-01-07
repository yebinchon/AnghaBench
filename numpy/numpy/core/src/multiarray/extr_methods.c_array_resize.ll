; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_resize.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array_resize.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [9 x i8] c"refcheck\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"|i\00", align 1
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid shape\00", align 1
@NPY_ANYORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_resize(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @PyTuple_Size(i32* %13)
  store i32 %14, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @NpyArg_ParseKeywords(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @array_resize.kwlist, i64 0, i64 0), i32* %9)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %63

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @PyTuple_GET_ITEM(i32* %28, i32 0)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** @Py_None, align 8
  %32 = icmp eq i32* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32*, i32** %12, align 8
  store i32* %36, i32** %6, align 8
  br label %37

37:                                               ; preds = %35, %24
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @PyArray_IntpConverter(i32* %39, i32* %10)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = call i32 (...) @PyErr_Occurred()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @PyExc_TypeError, align 4
  %47 = call i32 @PyErr_SetString(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  store i32* null, i32** %4, align 8
  br label %63

49:                                               ; preds = %38
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NPY_ANYORDER, align 4
  %53 = call i32* @PyArray_Resize(i32* %50, i32* %10, i32 %51, i32 %52)
  store i32* %53, i32** %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @npy_free_cache_dim_obj(i32 %54)
  %56 = load i32*, i32** %11, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32* null, i32** %4, align 8
  br label %63

59:                                               ; preds = %49
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @Py_DECREF(i32* %60)
  %62 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %63

63:                                               ; preds = %59, %58, %48, %18
  %64 = load i32*, i32** %4, align 8
  ret i32* %64
}

declare dso_local i32 @PyTuple_Size(i32*) #1

declare dso_local i32 @NpyArg_ParseKeywords(i32*, i8*, i8**, i32*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32 @PyArray_IntpConverter(i32*, i32*) #1

declare dso_local i32 @PyErr_Occurred(...) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyArray_Resize(i32*, i32*, i32, i32) #1

declare dso_local i32 @npy_free_cache_dim_obj(i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
