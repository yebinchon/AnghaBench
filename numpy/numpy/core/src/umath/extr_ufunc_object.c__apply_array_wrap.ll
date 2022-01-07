; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__apply_array_wrap.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__apply_array_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@Py_None = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"OOi\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_3__*)* @_apply_array_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_apply_array_wrap(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @PyArray_Return(i32* %14)
  store i32* %15, i32** %4, align 8
  br label %83

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** @Py_None, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @Py_DECREF(i32* %21)
  %23 = load i32*, i32** %6, align 8
  store i32* %23, i32** %4, align 8
  br label %83

24:                                               ; preds = %16
  store i32* null, i32** %9, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = icmp eq %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** @Py_None, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @Py_INCREF(i32* %29)
  br label %54

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @_get_wrap_prepare_args(i32 %34)
  store i32* %35, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %78

39:                                               ; preds = %31
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42, i32* %43, i32 %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @Py_DECREF(i32* %48)
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %78

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32* (i32*, i32*, i32*, ...) @PyObject_CallFunctionObjArgs(i32* %55, i32* %56, i32* %57, i8* null)
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @Py_DECREF(i32* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load i32, i32* @PyExc_TypeError, align 4
  %65 = call i64 @PyErr_ExceptionMatches(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = call i32 (...) @PyErr_Clear()
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32* (i32*, i32*, i32*, ...) @PyObject_CallFunctionObjArgs(i32* %69, i32* %70, i32* null)
  store i32* %71, i32** %8, align 8
  br label %72

72:                                               ; preds = %67, %63, %54
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @Py_DECREF(i32* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @Py_DECREF(i32* %75)
  %77 = load i32*, i32** %8, align 8
  store i32* %77, i32** %4, align 8
  br label %83

78:                                               ; preds = %52, %38
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @Py_DECREF(i32* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @Py_DECREF(i32* %81)
  store i32* null, i32** %4, align 8
  br label %83

83:                                               ; preds = %78, %72, %20, %13
  %84 = load i32*, i32** %4, align 8
  ret i32* %84
}

declare dso_local i32* @PyArray_Return(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32* @_get_wrap_prepare_args(i32) #1

declare dso_local i32* @Py_BuildValue(i8*, i32, i32*, i32) #1

declare dso_local i32* @PyObject_CallFunctionObjArgs(i32*, i32*, i32*, ...) #1

declare dso_local i64 @PyErr_ExceptionMatches(i32) #1

declare dso_local i32 @PyErr_Clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
