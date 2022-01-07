; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_raise_no_loop_found_error.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_raise_no_loop_found_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@raise_no_loop_found_error.exc_type = internal global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"numpy.core._exceptions\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"_UFuncNoLoopError\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**)* @raise_no_loop_found_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raise_no_loop_found_error(%struct.TYPE_4__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = call i32 @npy_cache_import(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32** @raise_no_loop_found_error.exc_type)
  %10 = load i32*, i32** @raise_no_loop_found_error.exc_type, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32* @PyTuple_New(i64 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %59

21:                                               ; preds = %13
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32**, i32*** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @Py_INCREF(i32* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32**, i32*** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @PyTuple_SET_ITEM(i32* %34, i64 %35, i32* %39)
  br label %41

41:                                               ; preds = %28
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %22

44:                                               ; preds = %22
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32* @PyTuple_Pack(i32 2, %struct.TYPE_4__* %45, i32* %46)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @Py_DECREF(i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %59

53:                                               ; preds = %44
  %54 = load i32*, i32** @raise_no_loop_found_error.exc_type, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @PyErr_SetObject(i32* %54, i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @Py_DECREF(i32* %57)
  store i32 -1, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %52, %20, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @npy_cache_import(i8*, i8*, i32**) #1

declare dso_local i32* @PyTuple_New(i64) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i64, i32*) #1

declare dso_local i32* @PyTuple_Pack(i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyErr_SetObject(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
