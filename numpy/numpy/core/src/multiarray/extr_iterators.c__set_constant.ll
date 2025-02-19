; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_iterators.c__set_constant.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_iterators.c__set_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PyExc_MemoryError = common dso_local global i32 0, align 4
@NPY_ARRAY_BEHAVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i32*)* @_set_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_set_constant(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.TYPE_9__* @PyArray_DESCR(i64 %15)
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @PyDataMem_NEW(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @PyExc_MemoryError, align 4
  %24 = call i32 @PyErr_SetNone(i32 %23)
  store i8* null, i8** %3, align 8
  br label %70

25:                                               ; preds = %2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @PyArray_ISOBJECT(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @PyArray_DATA(i32* %33)
  %35 = call i32 @memcpy(i8* %32, i32 %34, i32 8)
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @Py_INCREF(i32* %38)
  br label %68

40:                                               ; preds = %25
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @PyArray_FLAGS(i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @NPY_ARRAY_BEHAVED, align 4
  %49 = call i32 @PyArray_ENABLEFLAGS(i64 %47, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @PyArray_SETITEM(i64 %52, i8* %53, i32* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %40
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @PyDataMem_FREE(i8* %65)
  store i8* null, i8** %3, align 8
  br label %70

67:                                               ; preds = %40
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i8*, i8** %6, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %68, %64, %22
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i8* @PyDataMem_NEW(i32) #1

declare dso_local %struct.TYPE_9__* @PyArray_DESCR(i64) #1

declare dso_local i32 @PyErr_SetNone(i32) #1

declare dso_local i64 @PyArray_ISOBJECT(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @PyArray_FLAGS(i64) #1

declare dso_local i32 @PyArray_ENABLEFLAGS(i64, i32) #1

declare dso_local i32 @PyArray_SETITEM(i64, i8*, i32*) #1

declare dso_local i32 @PyDataMem_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
