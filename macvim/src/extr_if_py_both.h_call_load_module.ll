; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_call_load_module.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_call_load_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"expected 3-tuple as imp.find_module() result, but got %s\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"expected 3-tuple as imp.find_module() result, but got tuple of size %d\00", align 1
@PyExc_RuntimeError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"internal error: imp.find_module returned tuple with NULL\00", align 1
@py_load_module = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"s#OOO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32*)* @call_load_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @call_load_module(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @PyTuple_Check(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @PyExc_TypeError, align 4
  %16 = call i32 @N_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @Py_TYPE_NAME(i32* %17)
  %19 = call i32 @PyErr_FORMAT(i32 %15, i32 %16, i32 %18)
  store i32* null, i32** %4, align 8
  br label %54

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @PyTuple_GET_SIZE(i32* %21)
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @PyExc_TypeError, align 4
  %26 = call i32 @N_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @PyTuple_GET_SIZE(i32* %27)
  %29 = call i32 @PyErr_FORMAT(i32 %25, i32 %26, i32 %28)
  store i32* null, i32** %4, align 8
  br label %54

30:                                               ; preds = %20
  %31 = load i32*, i32** %7, align 8
  %32 = call i32* @PyTuple_GET_ITEM(i32* %31, i32 0)
  store i32* %32, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @PyTuple_GET_ITEM(i32* %35, i32 1)
  store i32* %36, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = call i32* @PyTuple_GET_ITEM(i32* %39, i32 2)
  store i32* %40, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38, %34, %30
  %43 = load i32, i32* @PyExc_RuntimeError, align 4
  %44 = call i32 @N_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @PyErr_SET_STRING(i32 %43, i32 %44)
  store i32* null, i32** %4, align 8
  br label %54

46:                                               ; preds = %38
  %47 = load i32, i32* @py_load_module, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32* @PyObject_CallFunction(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %49, i32* %50, i32* %51, i32* %52)
  store i32* %53, i32** %4, align 8
  br label %54

54:                                               ; preds = %46, %42, %24, %14
  %55 = load i32*, i32** %4, align 8
  ret i32* %55
}

declare dso_local i32 @PyTuple_Check(i32*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @Py_TYPE_NAME(i32*) #1

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32 @PyErr_SET_STRING(i32, i32) #1

declare dso_local i32* @PyObject_CallFunction(i32, i8*, i8*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
