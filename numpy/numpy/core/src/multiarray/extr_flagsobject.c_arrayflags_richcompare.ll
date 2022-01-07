; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_richcompare.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_richcompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_NotImplemented = common dso_local global i32* null, align 8
@Py_EQ = common dso_local global i32 0, align 4
@Py_NE = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"undefined comparison for flag object\00", align 1
@PyArrayFlags_Type = common dso_local global i32 0, align 4
@Py_True = common dso_local global i32* null, align 8
@Py_False = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @arrayflags_richcompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @arrayflags_richcompare(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** @Py_NotImplemented, align 8
  store i32* %10, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @Py_EQ, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @Py_NE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @PyExc_TypeError, align 4
  %20 = call i32 @PyErr_SetString(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %60

21:                                               ; preds = %14, %3
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @PyObject_TypeCheck(i32* %22, i32* @PyArrayFlags_Type)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @arrayflags_compare(i32* %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @Py_EQ, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32*, i32** @Py_True, align 8
  br label %39

37:                                               ; preds = %32
  %38 = load i32*, i32** @Py_False, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32* [ %36, %35 ], [ %38, %37 ]
  store i32* %40, i32** %8, align 8
  br label %55

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @Py_NE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32*, i32** @Py_True, align 8
  br label %52

50:                                               ; preds = %45
  %51 = load i32*, i32** @Py_False, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32* [ %49, %48 ], [ %51, %50 ]
  store i32* %53, i32** %8, align 8
  br label %54

54:                                               ; preds = %52, %41
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @Py_INCREF(i32* %57)
  %59 = load i32*, i32** %8, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %56, %18
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PyObject_TypeCheck(i32*, i32*) #1

declare dso_local i32 @arrayflags_compare(i32*, i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
