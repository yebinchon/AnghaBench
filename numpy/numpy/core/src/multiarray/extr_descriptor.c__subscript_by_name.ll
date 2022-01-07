; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__subscript_by_name.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__subscript_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@PyExc_KeyError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Field named '%s' not found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @_subscript_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_subscript_by_name(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @PyDict_GetItem(i32 %11, i32* %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @PyUnicode_Check(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @PyUnicode_AsUnicodeEscapeString(i32* %21)
  store i32* %22, i32** %8, align 8
  br label %25

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  store i32* %24, i32** %8, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @PyExc_KeyError, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @PyBytes_AsString(i32* %27)
  %29 = call i32 @PyErr_Format(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @Py_DECREF(i32* %34)
  br label %36

36:                                               ; preds = %33, %25
  store i32* null, i32** %3, align 8
  br label %43

37:                                               ; preds = %2
  %38 = load i32*, i32** %6, align 8
  %39 = call i32* @PyTuple_GET_ITEM(i32* %38, i32 0)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @Py_INCREF(i32* %40)
  %42 = load i32*, i32** %7, align 8
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %37, %36
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32* @PyDict_GetItem(i32, i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsUnicodeEscapeString(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #1

declare dso_local i32 @PyBytes_AsString(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
