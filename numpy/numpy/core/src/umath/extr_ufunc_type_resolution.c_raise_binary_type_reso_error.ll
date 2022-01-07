; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_raise_binary_type_reso_error.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_raise_binary_type_reso_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@raise_binary_type_reso_error.exc_type = internal global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"numpy.core._exceptions\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"_UFuncBinaryResolutionError\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"O(OO)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @raise_binary_type_reso_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raise_binary_type_reso_error(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = call i32 @npy_cache_import(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32** @raise_binary_type_reso_error.exc_type)
  %8 = load i32*, i32** @raise_binary_type_reso_error.exc_type, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %33

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32**, i32*** %5, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @PyArray_DESCR(i32* %15)
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32**, i32*** %5, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @PyArray_DESCR(i32* %20)
  %22 = inttoptr i64 %21 to i32*
  %23 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %12, i32* %17, i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %33

27:                                               ; preds = %11
  %28 = load i32*, i32** @raise_binary_type_reso_error.exc_type, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @PyErr_SetObject(i32* %28, i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @Py_DECREF(i32* %31)
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %26, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @npy_cache_import(i8*, i8*, i32**) #1

declare dso_local i32* @Py_BuildValue(i8*, i32*, i32*, i32*) #1

declare dso_local i64 @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyErr_SetObject(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
