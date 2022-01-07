; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_number.c__array_nonzero.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_number.c__array_nonzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32*)* }

@.str = private unnamed_addr constant [32 x i8] c" while converting array to bool\00", align 1
@.str.1 = private unnamed_addr constant [167 x i8] c"The truth value of an empty array is ambiguous. Returning False, but in future this will result in an error. Use `array.size > 0` to check that an array is not empty.\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"The truth value of an array with more than one element is ambiguous. Use a.any() or a.all()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @_array_nonzero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_array_nonzero(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @PyArray_SIZE(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = call i64 @Npy_EnterRecursiveCall(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %42

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call %struct.TYPE_4__* @PyArray_DESCR(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*)*, i32 (i32, i32*)** %19, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @PyArray_DATA(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 %20(i32 %22, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = call i64 (...) @PyErr_Occurred()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = call i32 (...) @Py_LeaveRecursiveCall()
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = call i64 @DEPRECATE(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %42

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @PyExc_ValueError, align 4
  %41 = call i32 @PyErr_SetString(i32 %40, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %38, %37, %28, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @PyArray_SIZE(i32*) #1

declare dso_local i64 @Npy_EnterRecursiveCall(i8*) #1

declare dso_local %struct.TYPE_4__* @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyArray_DATA(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @Py_LeaveRecursiveCall(...) #1

declare dso_local i64 @DEPRECATE(i8*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
