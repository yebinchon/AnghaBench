; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_remove_axis.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_remove_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Iterator is invalid\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"i:remove_axis\00", align 1
@NPY_SUCCEED = common dso_local global i64 0, align 8
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*)* @npyiter_remove_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @npyiter_remove_axis(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @PyExc_ValueError, align 4
  %13 = call i32 @PyErr_SetString(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %51

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @PyArg_ParseTuple(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %51

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @NpyIter_RemoveAxis(i32* %22, i32 %23)
  %25 = load i64, i64* @NPY_SUCCEED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32* null, i32** %3, align 8
  br label %51

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = call i64 @npyiter_cache_values(%struct.TYPE_4__* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32* null, i32** %3, align 8
  br label %51

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @NpyIter_GetIterSize(i32* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %49

44:                                               ; preds = %33
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %51

51:                                               ; preds = %49, %32, %27, %18, %11
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32*) #1

declare dso_local i64 @NpyIter_RemoveAxis(i32*, i32) #1

declare dso_local i64 @npyiter_cache_values(%struct.TYPE_4__*) #1

declare dso_local i64 @NpyIter_GetIterSize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
