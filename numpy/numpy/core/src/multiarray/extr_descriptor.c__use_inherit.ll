; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__use_inherit.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__use_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32*, i32*, i32* }

@Integer = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"mismatch in size of old and new data-descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_12__*, i32*, i32*)* @_use_inherit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @_use_inherit(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @Integer, align 4
  %13 = call i64 @PyArray_IsScalar(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @_is_tuple_of_integers(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @PyArray_DescrConverter(i32* %20, %struct.TYPE_12__** %9)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %15, %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %127

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  store i32 1, i32* %25, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = call %struct.TYPE_12__* @PyArray_DescrNew(%struct.TYPE_12__* %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %8, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = icmp eq %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %124

31:                                               ; preds = %24
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = call i64 @PyDataType_ISUNSIZED(%struct.TYPE_12__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %64

41:                                               ; preds = %31
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i32, i32* @PyExc_ValueError, align 4
  %51 = call i32 @PyErr_SetString(i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = call i32 @Py_DECREF(%struct.TYPE_12__* %52)
  br label %124

54:                                               ; preds = %41
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = call i64 @invalid_union_object_dtype(%struct.TYPE_12__* %55, %struct.TYPE_12__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = call i32 @Py_DECREF(%struct.TYPE_12__* %60)
  br label %124

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = call i64 @PyDataType_HASFIELDS(%struct.TYPE_12__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @Py_XDECREF(i32* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @Py_XINCREF(i32* %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @Py_XDECREF(i32* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 3
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @Py_XINCREF(i32* %93)
  br label %95

95:                                               ; preds = %68, %64
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @Py_XDECREF(i32* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @Py_XINCREF(i32* %112)
  br label %114

114:                                              ; preds = %100, %95
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = call i32 @Py_DECREF(%struct.TYPE_12__* %120)
  %122 = load i32*, i32** %7, align 8
  store i32 0, i32* %122, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %4, align 8
  br label %127

124:                                              ; preds = %59, %49, %30
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %126 = call i32 @Py_DECREF(%struct.TYPE_12__* %125)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %127

127:                                              ; preds = %124, %114, %23
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %128
}

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i64 @_is_tuple_of_integers(i32*) #1

declare dso_local i32 @PyArray_DescrConverter(i32*, %struct.TYPE_12__**) #1

declare dso_local %struct.TYPE_12__* @PyArray_DescrNew(%struct.TYPE_12__*) #1

declare dso_local i64 @PyDataType_ISUNSIZED(%struct.TYPE_12__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_12__*) #1

declare dso_local i64 @invalid_union_object_dtype(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i64 @PyDataType_HASFIELDS(%struct.TYPE_12__*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @Py_XINCREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
