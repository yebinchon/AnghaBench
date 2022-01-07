; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_calculation.c__GenericBinaryOutFunction.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_calculation.c__GenericBinaryOutFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@_GenericBinaryOutFunction.kw = internal global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"{s:s}\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"casting\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"unsafe\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OOO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*)* @_GenericBinaryOutFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_GenericBinaryOutFunction(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @PyObject_CallFunction(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %17)
  store i32* %18, i32** %5, align 8
  br label %46

19:                                               ; preds = %4
  %20 = load i32*, i32** @_GenericBinaryOutFunction.kw, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = call i32* (i8*, i8*, i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32* %23, i32** @_GenericBinaryOutFunction.kw, align 8
  %24 = load i32*, i32** @_GenericBinaryOutFunction.kw, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32* null, i32** %5, align 8
  br label %46

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32*, i32** %6, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32*, i32** %7, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i32*, i32** %8, align 8
  %34 = call i32* (i8*, i8*, i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %30, i8* %32, i32* %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32* null, i32** %5, align 8
  br label %46

38:                                               ; preds = %28
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** @_GenericBinaryOutFunction.kw, align 8
  %42 = call i32* @PyObject_Call(i32* %39, i32* %40, i32* %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @Py_DECREF(i32* %43)
  %45 = load i32*, i32** %11, align 8
  store i32* %45, i32** %5, align 8
  br label %46

46:                                               ; preds = %38, %37, %26, %14
  %47 = load i32*, i32** %5, align 8
  ret i32* %47
}

declare dso_local i32* @PyObject_CallFunction(i32*, i8*, i32*, i32*) #1

declare dso_local i32* @Py_BuildValue(i8*, i8*, i8*, ...) #1

declare dso_local i32* @PyObject_Call(i32*, i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
