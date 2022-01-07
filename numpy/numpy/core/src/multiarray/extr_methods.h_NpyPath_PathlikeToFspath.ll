; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.h_NpyPath_PathlikeToFspath.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.h_NpyPath_PathlikeToFspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NpyPath_PathlikeToFspath.os_PathLike = internal global i32* null, align 8
@NpyPath_PathlikeToFspath.os_fspath = internal global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"numpy.compat\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"os_PathLike\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"os_fspath\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @NpyPath_PathlikeToFspath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @NpyPath_PathlikeToFspath(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = call i32 @npy_cache_import(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32** @NpyPath_PathlikeToFspath.os_PathLike)
  %5 = load i32*, i32** @NpyPath_PathlikeToFspath.os_PathLike, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %26

8:                                                ; preds = %1
  %9 = call i32 @npy_cache_import(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32** @NpyPath_PathlikeToFspath.os_fspath)
  %10 = load i32*, i32** @NpyPath_PathlikeToFspath.os_fspath, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32* null, i32** %2, align 8
  br label %26

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** @NpyPath_PathlikeToFspath.os_PathLike, align 8
  %16 = call i32 @PyObject_IsInstance(i32* %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @Py_INCREF(i32* %19)
  %21 = load i32*, i32** %3, align 8
  store i32* %21, i32** %2, align 8
  br label %26

22:                                               ; preds = %13
  %23 = load i32*, i32** @NpyPath_PathlikeToFspath.os_fspath, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @PyObject_CallFunctionObjArgs(i32* %23, i32* %24, i32* null)
  store i32* %25, i32** %2, align 8
  br label %26

26:                                               ; preds = %22, %18, %12, %7
  %27 = load i32*, i32** %2, align 8
  ret i32* %27
}

declare dso_local i32 @npy_cache_import(i8*, i8*, i32**) #1

declare dso_local i32 @PyObject_IsInstance(i32*, i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @PyObject_CallFunctionObjArgs(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
