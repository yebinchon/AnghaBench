; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_imag_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_imag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot delete array imaginary part\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"array does not have imaginary part to set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @array_imag_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_imag_set(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @PyExc_AttributeError, align 4
  %13 = call i32 @PyErr_SetString(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @PyArray_ISCOMPLEX(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @_get_part(i32* %19, i32 1)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %45

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @PyArray_FROM_O(i32* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @Py_DECREF(i32* %31)
  store i32 -1, i32* %3, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @PyArray_MoveInto(i32* %34, i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @Py_DECREF(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @Py_DECREF(i32* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %14
  %43 = load i32, i32* @PyExc_TypeError, align 4
  %44 = call i32 @PyErr_SetString(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %33, %30, %23, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PyArray_ISCOMPLEX(i32*) #1

declare dso_local i32* @_get_part(i32*, i32) #1

declare dso_local i64 @PyArray_FROM_O(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyArray_MoveInto(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
