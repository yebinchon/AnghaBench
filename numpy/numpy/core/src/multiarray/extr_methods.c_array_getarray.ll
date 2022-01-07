; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_getarray.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_getarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"|O&:__array__\00", align 1
@PyArray_DescrConverter = common dso_local global i32 0, align 4
@PyArray_Type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @array_getarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_getarray(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @PyArray_DescrConverter, align 4
  %11 = call i32 @PyArg_ParseTuple(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10, i32** %6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @Py_XDECREF(i32* %14)
  store i32* null, i32** %3, align 8
  br label %65

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @PyArray_CheckExact(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @PyArray_DESCR(i32* %21)
  %23 = call i32 @Py_INCREF(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @PyArray_DESCR(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @PyArray_NDIM(i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @PyArray_DIMS(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @PyArray_STRIDES(i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @PyArray_DATA(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @PyArray_FLAGS(i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @PyArray_NewFromDescrAndBase(i32* @PyArray_Type, i32* %25, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35, i32* null, i32* %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  br label %65

42:                                               ; preds = %20
  %43 = load i32*, i32** %8, align 8
  store i32* %43, i32** %4, align 8
  br label %47

44:                                               ; preds = %16
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @Py_INCREF(i32* %45)
  br label %47

47:                                               ; preds = %44, %42
  %48 = load i32*, i32** %6, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = call i32* @PyArray_DESCR(i32* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @PyArray_EquivTypes(i32* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %47
  %57 = load i32*, i32** %4, align 8
  store i32* %57, i32** %3, align 8
  br label %65

58:                                               ; preds = %50
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32* @PyArray_CastToType(i32* %59, i32* %60, i32 0)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @Py_DECREF(i32* %62)
  %64 = load i32*, i32** %7, align 8
  store i32* %64, i32** %3, align 8
  br label %65

65:                                               ; preds = %58, %56, %41, %13
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32, i32**) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @PyArray_CheckExact(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @PyArray_DESCR(i32*) #1

declare dso_local i64 @PyArray_NewFromDescrAndBase(i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32 @PyArray_DIMS(i32*) #1

declare dso_local i32 @PyArray_STRIDES(i32*) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

declare dso_local i32 @PyArray_FLAGS(i32*) #1

declare dso_local i64 @PyArray_EquivTypes(i32*, i32*) #1

declare dso_local i32* @PyArray_CastToType(i32*, i32*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
