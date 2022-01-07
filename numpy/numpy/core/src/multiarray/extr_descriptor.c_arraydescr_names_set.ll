; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_arraydescr_names_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c_arraydescr_names_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }

@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cannot delete dtype names attribute\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"there are no fields defined\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"must replace all names at once with a sequence of length %d\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"item #%d of names is of type %s and not string\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Duplicate field names given.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @arraydescr_names_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arraydescr_names_set(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @PyExc_AttributeError, align 4
  %20 = call i32 @PyErr_SetString(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %136

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = call i32 @PyDataType_HASFIELDS(%struct.TYPE_5__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @PyExc_ValueError, align 4
  %27 = call i32 @PyErr_SetString(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %136

28:                                               ; preds = %21
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @PyTuple_GET_SIZE(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @PySequence_Check(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @PyObject_Size(i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %28
  %42 = load i32, i32* @PyExc_ValueError, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i32, i8*, i32, ...) @PyErr_Format(i32 %42, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %3, align 4
  br label %136

45:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  store i32 1, i32* %11, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32* @PySequence_GetItem(i32* %51, i32 %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @PyUString_Check(i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @Py_DECREF(i32* %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @PyExc_ValueError, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = call %struct.TYPE_6__* @Py_TYPE(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, i32, ...) @PyErr_Format(i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %66)
  store i32 -1, i32* %3, align 4
  br label %136

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %46

72:                                               ; preds = %46
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32* @PySequence_Tuple(i32* %75)
  store i32* %76, i32** %8, align 8
  %77 = call i32* (...) @PyDict_New()
  store i32* %77, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %118, %72
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %78
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32* @PyTuple_GET_ITEM(i32* %85, i32 %86)
  store i32* %87, i32** %12, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32* @PyDict_GetItem(i32* %90, i32* %91)
  store i32* %92, i32** %13, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32* @PyTuple_GET_ITEM(i32* %93, i32 %94)
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @PyDict_Contains(i32* %96, i32* %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %82
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 (...) @PyErr_Clear()
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i32, i32* @PyExc_ValueError, align 4
  %108 = call i32 @PyErr_SetString(i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @Py_DECREF(i32* %109)
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @Py_DECREF(i32* %111)
  store i32 -1, i32* %3, align 4
  br label %136

113:                                              ; preds = %82
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = call i32 @PyDict_SetItem(i32* %114, i32* %115, i32* %116)
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %78

121:                                              ; preds = %78
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @Py_DECREF(i32* %124)
  %126 = load i32*, i32** %8, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32* %126, i32** %128, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @Py_DECREF(i32* %131)
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i32* %133, i32** %135, align 8
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %121, %106, %60, %41, %25, %18
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyDataType_HASFIELDS(%struct.TYPE_5__*) #1

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32 @PySequence_Check(i32*) #1

declare dso_local i32 @PyObject_Size(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32, ...) #1

declare dso_local i32* @PySequence_GetItem(i32*, i32) #1

declare dso_local i32 @PyUString_Check(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local %struct.TYPE_6__* @Py_TYPE(i32*) #1

declare dso_local i32* @PySequence_Tuple(i32*) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32* @PyDict_GetItem(i32*, i32*) #1

declare dso_local i32 @PyDict_Contains(i32*, i32*) #1

declare dso_local i32 @PyErr_Clear(...) #1

declare dso_local i32 @PyDict_SetItem(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
