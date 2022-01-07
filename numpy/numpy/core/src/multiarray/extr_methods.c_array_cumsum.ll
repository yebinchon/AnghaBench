; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_cumsum.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_cumsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@array_cumsum.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"|O&O&O&:cumsum\00", align 1
@PyArray_AxisConverter = common dso_local global i32 0, align 4
@PyArray_DescrConverter2 = common dso_local global i32 0, align 4
@PyArray_OutputConverter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_cumsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_cumsum(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @NPY_MAXDIMS, align 4
  store i32 %12, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @PyArray_AxisConverter, align 4
  %16 = load i32, i32* @PyArray_DescrConverter2, align 4
  %17 = load i32, i32* @PyArray_OutputConverter, align 4
  %18 = call i32 @PyArg_ParseTupleAndKeywords(i32* %13, i32* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @array_cumsum.kwlist, i64 0, i64 0), i32 %15, i32* %8, i32 %16, i32** %9, i32 %17, i32** %10)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @Py_XDECREF(i32* %21)
  store i32* null, i32** %4, align 8
  br label %33

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @_CHKTYPENUM(i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @Py_XDECREF(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = call i32* @PyArray_CumSum(i32* %28, i32 %29, i32 %30, i32* %31)
  store i32* %32, i32** %4, align 8
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32*, i32** %4, align 8
  ret i32* %34
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32, i32*, i32, i32**, i32, i32**) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @_CHKTYPENUM(i32*) #1

declare dso_local i32* @PyArray_CumSum(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
