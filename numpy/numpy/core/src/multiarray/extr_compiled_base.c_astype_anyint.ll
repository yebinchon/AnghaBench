; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_astype_anyint.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_astype_anyint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@EMPTY_SEQUENCE_ERR_MSG = common dso_local global i32 0, align 4
@NON_INTEGRAL_ERROR_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @astype_anyint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @astype_anyint(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @PyArray_Check(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %1
  store i32* null, i32** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @NPY_MAXDIMS, align 4
  %12 = call i64 @PyArray_DTypeFromObject(i32* %10, i32 %11, i32** %5)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32* null, i32** %2, align 8
  br label %60

15:                                               ; preds = %9
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @PySequence_Check(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @PySequence_Size(i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @PyExc_TypeError, align 4
  %28 = load i32, i32* @EMPTY_SEQUENCE_ERR_MSG, align 4
  %29 = call i32 @PyErr_SetString(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22, %18
  store i32* null, i32** %2, align 8
  br label %60

31:                                               ; preds = %15
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @PyArray_FromAny(i32* %32, i32* %33, i32 0, i32 0, i32 0, i32* null)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32* null, i32** %2, align 8
  br label %60

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %1
  %41 = load i32*, i32** %3, align 8
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @Py_INCREF(i32* %42)
  br label %44

44:                                               ; preds = %40, %39
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @PyArray_ISINTEGER(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @PyArray_ISBOOL(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @PyExc_TypeError, align 4
  %54 = load i32, i32* @NON_INTEGRAL_ERROR_MSG, align 4
  %55 = call i32 @PyErr_SetString(i32 %53, i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @Py_DECREF(i32* %56)
  store i32* null, i32** %2, align 8
  br label %60

58:                                               ; preds = %48, %44
  %59 = load i32*, i32** %4, align 8
  store i32* %59, i32** %2, align 8
  br label %60

60:                                               ; preds = %58, %52, %38, %30, %14
  %61 = load i32*, i32** %2, align 8
  ret i32* %61
}

declare dso_local i32 @PyArray_Check(i32*) #1

declare dso_local i64 @PyArray_DTypeFromObject(i32*, i32, i32**) #1

declare dso_local i64 @PySequence_Check(i32*) #1

declare dso_local i64 @PySequence_Size(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i32) #1

declare dso_local i64 @PyArray_FromAny(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyArray_ISINTEGER(i32*) #1

declare dso_local i64 @PyArray_ISBOOL(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
