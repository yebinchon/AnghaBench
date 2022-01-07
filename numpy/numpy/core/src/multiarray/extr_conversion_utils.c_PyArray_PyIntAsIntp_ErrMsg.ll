; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_conversion_utils.c_PyArray_PyIntAsIntp_ErrMsg.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_conversion_utils.c_PyArray_PyIntAsIntp_ErrMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Bool = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@NPY_MAX_INTP = common dso_local global i64 0, align 8
@NPY_MIN_INTP = common dso_local global i64 0, align 8
@PyExc_OverflowError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @PyArray_PyIntAsIntp_ErrMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PyArray_PyIntAsIntp_ErrMsg(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 -1, i64* %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @PyBool_Check(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @Bool, align 4
  %18 = call i64 @PyArray_IsScalar(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %11, %2
  %21 = load i32, i32* @PyExc_TypeError, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @PyErr_SetString(i32 %21, i8* %22)
  store i32 -1, i32* %3, align 4
  br label %70

24:                                               ; preds = %15
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @PyInt_CheckExact(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @PyInt_AS_LONG(i32* %29)
  store i32 %30, i32* %3, align 4
  br label %70

31:                                               ; preds = %24
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @PyLong_CheckExact(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @PyLong_AsLong(i32* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @PyNumber_Index(i32* %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %70

47:                                               ; preds = %41
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 @PyLong_AsLong(i32* %48)
  store i64 %49, i64* %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @Py_DECREF(i32* %50)
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @error_converting(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = call i32* (...) @PyErr_Occurred()
  store i32* %56, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @PyExc_TypeError, align 4
  %59 = call i64 @PyErr_GivenExceptionMatches(i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @PyExc_TypeError, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @PyErr_SetString(i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %55
  store i32 -1, i32* %3, align 4
  br label %70

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %6, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %65, %46, %35, %28, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @PyBool_Check(i32*) #1

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PyInt_CheckExact(i32*) #1

declare dso_local i32 @PyInt_AS_LONG(i32*) #1

declare dso_local i64 @PyLong_CheckExact(i32*) #1

declare dso_local i64 @PyLong_AsLong(i32*) #1

declare dso_local i32* @PyNumber_Index(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @error_converting(i64) #1

declare dso_local i32* @PyErr_Occurred(...) #1

declare dso_local i64 @PyErr_GivenExceptionMatches(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
