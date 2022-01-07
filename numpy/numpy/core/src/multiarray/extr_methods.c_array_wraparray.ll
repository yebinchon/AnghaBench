; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_wraparray.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_wraparray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"only accepts 1 argument\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"can only be called with ndarray object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @array_wraparray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_wraparray(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @PyTuple_Size(i32* %9)
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @PyExc_TypeError, align 4
  %14 = call i32 @PyErr_SetString(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %60

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i32* @PyTuple_GET_ITEM(i32* %16, i32 0)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32* null, i32** %3, align 8
  br label %60

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @PyArray_Check(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @PyExc_TypeError, align 4
  %27 = call i32 @PyErr_SetString(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %60

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @Py_TYPE(i32* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @Py_TYPE(i32* %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @PyArray_DESCR(i32* %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @Py_INCREF(i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @Py_TYPE(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @PyArray_NDIM(i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @PyArray_DIMS(i32* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @PyArray_STRIDES(i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @PyArray_DATA(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @PyArray_FLAGS(i32* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32* @PyArray_NewFromDescrAndBase(i64 %41, i32* %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32* %53, i32* %54)
  store i32* %55, i32** %3, align 8
  br label %60

56:                                               ; preds = %28
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @Py_INCREF(i32* %57)
  %59 = load i32*, i32** %6, align 8
  store i32* %59, i32** %3, align 8
  br label %60

60:                                               ; preds = %56, %35, %25, %20, %12
  %61 = load i32*, i32** %3, align 8
  ret i32* %61
}

declare dso_local i32 @PyTuple_Size(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32 @PyArray_Check(i32*) #1

declare dso_local i64 @Py_TYPE(i32*) #1

declare dso_local i32* @PyArray_DESCR(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @PyArray_NewFromDescrAndBase(i64, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyArray_STRIDES(i32*) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

declare dso_local i32 @PyArray_FLAGS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
