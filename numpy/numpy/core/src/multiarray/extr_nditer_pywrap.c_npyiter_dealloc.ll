; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_dealloc.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32 (i32*)* }

@PyExc_RuntimeWarning = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [178 x i8] c"Temporary data has not been written back to one of the operands. Typically nditer is used as a context manager otherwise 'close' must be called before reading iteration results.\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"npyiter_dealloc\00", align 1
@Py_None = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @npyiter_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npyiter_dealloc(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i64 @npyiter_has_writeback(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = load i32, i32* @PyExc_RuntimeWarning, align 4
  %16 = call i64 @PyErr_WarnEx(i32 %15, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str, i64 0, i64 0), i32 1)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @PyErr_WriteUnraisable(i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @Py_DECREF(i32* %25)
  br label %30

27:                                               ; preds = %18
  %28 = load i32*, i32** @Py_None, align 8
  %29 = call i32 @PyErr_WriteUnraisable(i32* %28)
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %14
  br label %32

32:                                               ; preds = %31, %8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @NpyIter_Deallocate(i32* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @Py_XDECREF(i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %32, %1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = call %struct.TYPE_6__* @Py_TYPE(%struct.TYPE_5__* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (i32*)*, i32 (i32*)** %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = bitcast %struct.TYPE_5__* %50 to i32*
  %52 = call i32 %49(i32* %51)
  ret void
}

declare dso_local i64 @npyiter_has_writeback(i32*) #1

declare dso_local i64 @PyErr_WarnEx(i32, i8*, i32) #1

declare dso_local i32* @PyUString_FromString(i8*) #1

declare dso_local i32 @PyErr_WriteUnraisable(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @NpyIter_Deallocate(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local %struct.TYPE_6__* @Py_TYPE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
