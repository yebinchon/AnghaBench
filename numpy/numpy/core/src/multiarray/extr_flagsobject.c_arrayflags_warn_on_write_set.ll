; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_warn_on_write_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_warn_on_write_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Cannot delete flags _warn_on_write attribute\00", align 1
@NPY_ARRAY_WRITEABLE = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"cannot set '_warn_on_write' flag when 'writable' is False\00", align 1
@NPY_ARRAY_WARN_ON_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"cannot clear '_warn_on_write', set writeable True to clear this private flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @arrayflags_warn_on_write_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arrayflags_warn_on_write_set(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @PyExc_AttributeError, align 4
  %11 = call i32 @PyErr_SetString(i32 %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @PyObject_IsTrue(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @PyArray_FLAGS(i32* %21)
  %23 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @PyExc_ValueError, align 4
  %28 = call i32 @PyErr_SetString(i32 %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

29:                                               ; preds = %17
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* @NPY_ARRAY_WARN_ON_WRITE, align 4
  %35 = call i32 @PyArray_ENABLEFLAGS(i32* %33, i32 %34)
  br label %43

36:                                               ; preds = %12
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @PyExc_ValueError, align 4
  %42 = call i32 @PyErr_SetString(i32 %41, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

43:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %39, %26, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyObject_IsTrue(i32*) #1

declare dso_local i32 @PyArray_FLAGS(i32*) #1

declare dso_local i32 @PyArray_ENABLEFLAGS(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
