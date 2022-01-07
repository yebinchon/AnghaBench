; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_order_converter.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_order_converter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_CORDER = common dso_local global i32 0, align 4
@NPY_FORTRANORDER = common dso_local global i32 0, align 4
@NPY_ANYORDER = common dso_local global i32 0, align 4
@NPY_KEEPORDER = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"order must be one of 'C', 'F', 'A', or 'K'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @npyiter_order_converter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_order_converter(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @PyUnicode_Check(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @PyUnicode_AsASCIIString(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %55

19:                                               ; preds = %13
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @npyiter_order_converter(i32* %20, i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @Py_DECREF(i32* %23)
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %55

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @PyBytes_AsStringAndSize(i32* %27, i8** %6, i32* %7)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %55

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %51 [
    i32 67, label %39
    i32 70, label %42
    i32 65, label %45
    i32 75, label %48
  ]

39:                                               ; preds = %34
  %40 = load i32, i32* @NPY_CORDER, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  store i32 1, i32* %3, align 4
  br label %55

42:                                               ; preds = %34
  %43 = load i32, i32* @NPY_FORTRANORDER, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %3, align 4
  br label %55

45:                                               ; preds = %34
  %46 = load i32, i32* @NPY_ANYORDER, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  store i32 1, i32* %3, align 4
  br label %55

48:                                               ; preds = %34
  %49 = load i32, i32* @NPY_KEEPORDER, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  store i32 1, i32* %3, align 4
  br label %55

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i32, i32* @PyExc_ValueError, align 4
  %54 = call i32 @PyErr_SetString(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %48, %45, %42, %39, %30, %19, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsASCIIString(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyBytes_AsStringAndSize(i32*, i8**, i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
