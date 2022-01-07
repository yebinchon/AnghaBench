; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_cast_numeric_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_cast_numeric_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"numpy.core\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ComplexWarning\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Casting complex values to real discards the imaginary part\00", align 1
@NPY_FAIL = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"unexpected error in GetStridedNumericCastFn\00", align 1
@NPY_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32**, i32**)* @get_nbo_cast_numeric_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nbo_cast_numeric_transfer_function(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32** %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32** %6, i32*** %15, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i64 @PyTypeNum_ISCOMPLEX(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @PyTypeNum_ISCOMPLEX(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @PyTypeNum_ISBOOL(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %31 = call i32* @PyImport_ImportModule(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %17, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32*, i32** %17, align 8
  %36 = call i32* @PyObject_GetAttrString(i32* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %16, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = call i32 @Py_DECREF(i32* %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32*, i32** %16, align 8
  %41 = call i32 @PyErr_WarnEx(i32* %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %41, i32* %18, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @Py_XDECREF(i32* %42)
  %44 = load i32, i32* %18, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @NPY_FAIL, align 4
  store i32 %47, i32* %8, align 4
  br label %67

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %26, %22, %7
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32* @PyArray_GetStridedNumericCastFn(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32**, i32*** %14, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32**, i32*** %15, align 8
  store i32* null, i32** %57, align 8
  %58 = load i32**, i32*** %14, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load i32, i32* @PyExc_ValueError, align 4
  %63 = call i32 @PyErr_SetString(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @NPY_FAIL, align 4
  store i32 %64, i32* %8, align 4
  br label %67

65:                                               ; preds = %49
  %66 = load i32, i32* @NPY_SUCCEED, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %61, %46
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i64 @PyTypeNum_ISCOMPLEX(i32) #1

declare dso_local i32 @PyTypeNum_ISBOOL(i32) #1

declare dso_local i32* @PyImport_ImportModule(i8*) #1

declare dso_local i32* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyErr_WarnEx(i32*, i8*, i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32* @PyArray_GetStridedNumericCastFn(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
