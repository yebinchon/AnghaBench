; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_hashdescr.c__array_descr_builtin.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_hashdescr.c__array_descr_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"(cccii)\00", align 1
@PyExc_SystemError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"(Hash) Error while computing builting hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @_array_descr_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_array_descr_builtin(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call signext i8 @_normalize_byteorder(i32 %12)
  store i8 %13, i8* %9, align 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i8, i8* %9, align 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16, i8 signext %17, i32 %20, i32 %23, i32 %26)
  store i32* %27, i32** %7, align 8
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %46, %2
  %29 = load i64, i64* %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @PyTuple_Size(i32* %30)
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32* @PyTuple_GetItem(i32* %34, i64 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @PyExc_SystemError, align 4
  %41 = call i32 @PyErr_SetString(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %52

42:                                               ; preds = %33
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @PyList_Append(i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %28

49:                                               ; preds = %28
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @Py_DECREF(i32* %50)
  store i32 0, i32* %3, align 4
  br label %55

52:                                               ; preds = %39
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @Py_DECREF(i32* %53)
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local signext i8 @_normalize_byteorder(i32) #1

declare dso_local i32* @Py_BuildValue(i8*, i32, i8 signext, i32, i32, i32) #1

declare dso_local i64 @PyTuple_Size(i32*) #1

declare dso_local i32* @PyTuple_GetItem(i32*, i64) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyList_Append(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
