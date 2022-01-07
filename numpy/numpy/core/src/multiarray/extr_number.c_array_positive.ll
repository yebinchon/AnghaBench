; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_number.c_array_positive.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_number.c_array_positive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@n_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [107 x i8] c"Applying '+' to a non-numerical array is ill-defined. Returning a copy, but in the future this will error.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @array_positive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_positive(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @can_elide_temp_unary(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 0), align 4
  %14 = call i32* @PyArray_GenericInplaceUnaryFunction(i32* %12, i32 %13)
  store i32* %14, i32** %4, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 0), align 4
  %18 = call i32* @PyArray_GenericUnaryFunction(i32* %16, i32 %17)
  store i32* %18, i32** %4, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = call i32 @PyErr_Fetch(i32** %5, i32** %6, i32** %7)
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @PyUFunc_HasOverride(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @PyErr_Restore(i32* %28, i32* %29, i32* %30)
  store i32* null, i32** %2, align 8
  br label %49

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @Py_XDECREF(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @Py_XDECREF(i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @Py_XDECREF(i32* %37)
  %39 = call i64 @DEPRECATE(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0))
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i32* null, i32** %2, align 8
  br label %49

42:                                               ; preds = %32
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @PyArray_Copy(i32* %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32* @PyArray_Return(i32* %45)
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %42, %19
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %2, align 8
  br label %49

49:                                               ; preds = %47, %41, %27
  %50 = load i32*, i32** %2, align 8
  ret i32* %50
}

declare dso_local i64 @can_elide_temp_unary(i32*) #1

declare dso_local i32* @PyArray_GenericInplaceUnaryFunction(i32*, i32) #1

declare dso_local i32* @PyArray_GenericUnaryFunction(i32*, i32) #1

declare dso_local i32 @PyErr_Fetch(i32**, i32**, i32**) #1

declare dso_local i64 @PyUFunc_HasOverride(i32*) #1

declare dso_local i32 @PyErr_Restore(i32*, i32*, i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @DEPRECATE(i8*) #1

declare dso_local i32* @PyArray_Return(i32*) #1

declare dso_local i64 @PyArray_Copy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
