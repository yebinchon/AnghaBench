; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_protocol_descr_get.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_protocol_descr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @array_protocol_descr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_protocol_descr_get(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @PyArray_DESCR(i32* %6)
  %8 = call i32* @arraydescr_protocol_descr_get(i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %2, align 8
  br label %38

13:                                               ; preds = %1
  %14 = call i32 (...) @PyErr_Clear()
  %15 = call i32* @PyTuple_New(i32 2)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %38

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @PyString_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @PyTuple_SET_ITEM(i32* %20, i32 0, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @array_typestr_get(i32* %24)
  %26 = call i32 @PyTuple_SET_ITEM(i32* %23, i32 1, i32 %25)
  %27 = call i32* @PyList_New(i32 1)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @Py_DECREF(i32* %31)
  store i32* null, i32** %2, align 8
  br label %38

33:                                               ; preds = %19
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @PyList_SET_ITEM(i32* %34, i32 0, i32* %35)
  %37 = load i32*, i32** %4, align 8
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %33, %30, %18, %11
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

declare dso_local i32* @arraydescr_protocol_descr_get(i32) #1

declare dso_local i32 @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i32, i32) #1

declare dso_local i32 @PyString_FromString(i8*) #1

declare dso_local i32 @array_typestr_get(i32*) #1

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyList_SET_ITEM(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
