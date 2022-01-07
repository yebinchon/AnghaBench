; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__get_pickleabletype_from_datetime_metadata.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__get_pickleabletype_from_datetime_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i64, i32 }

@_datetime_strings = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @_get_pickleabletype_from_datetime_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_get_pickleabletype_from_datetime_metadata(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = call i32* @PyTuple_New(i32 2)
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @Py_INCREF(i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @PyTuple_SET_ITEM(i32* %21, i32 0, i32* %24)
  br label %30

26:                                               ; preds = %11
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* (...) @PyDict_New()
  %29 = call i32 @PyTuple_SET_ITEM(i32* %27, i32 0, i32* %28)
  br label %30

30:                                               ; preds = %26, %16
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = call %struct.TYPE_7__* @get_datetime_metadata_from_dtype(%struct.TYPE_6__* %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = icmp eq %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @Py_DECREF(i32* %36)
  store i32* null, i32** %2, align 8
  br label %71

38:                                               ; preds = %30
  %39 = call i32* @PyTuple_New(i32 4)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @Py_DECREF(i32* %43)
  store i32* null, i32** %2, align 8
  br label %71

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** @_datetime_strings, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @PyBytes_FromString(i32 %52)
  %54 = call i32 @PyTuple_SET_ITEM(i32* %46, i32 0, i32* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @PyInt_FromLong(i32 %58)
  %60 = call i32 @PyTuple_SET_ITEM(i32* %55, i32 1, i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32* @PyInt_FromLong(i32 1)
  %63 = call i32 @PyTuple_SET_ITEM(i32* %61, i32 2, i32* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* @PyInt_FromLong(i32 1)
  %66 = call i32 @PyTuple_SET_ITEM(i32* %64, i32 3, i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @PyTuple_SET_ITEM(i32* %67, i32 1, i32* %68)
  %70 = load i32*, i32** %4, align 8
  store i32* %70, i32** %2, align 8
  br label %71

71:                                               ; preds = %45, %42, %35, %10
  %72 = load i32*, i32** %2, align 8
  ret i32* %72
}

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i32, i32*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local %struct.TYPE_7__* @get_datetime_metadata_from_dtype(%struct.TYPE_6__*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @PyBytes_FromString(i32) #1

declare dso_local i32* @PyInt_FromLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
