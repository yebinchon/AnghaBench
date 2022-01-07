; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_writebackifcopy_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_writebackifcopy_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Cannot delete flags writebackifcopy attribute\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot set flags on array scalars.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"setflags\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"OOO\00", align 1
@Py_None = common dso_local global i32 0, align 4
@Py_True = common dso_local global i32 0, align 4
@Py_False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @arrayflags_writebackifcopy_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arrayflags_writebackifcopy_set(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @PyExc_AttributeError, align 4
  %11 = call i32 @PyErr_SetString(i32 %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @PyExc_ValueError, align 4
  %19 = call i32 @PyErr_SetString(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %42

20:                                               ; preds = %12
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @Py_None, align 4
  %25 = load i32, i32* @Py_None, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @PyObject_IsTrue(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @Py_True, align 4
  br label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @Py_False, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32* @PyObject_CallMethod(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @Py_DECREF(i32* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %38, %17, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyObject_CallMethod(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @PyObject_IsTrue(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
