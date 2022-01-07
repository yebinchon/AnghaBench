; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_hashdescr.c__array_descr_walk_fields.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_hashdescr.c__array_descr_walk_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_SystemError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"(Hash) names is not a tuple ???\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"(Hash) fields is not a dict ???\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"(Hash) names and fields inconsistent ???\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"(Hash) key of dtype dict not a string ???\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"(Hash) value of dtype dict not a dtype ???\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"(Hash) Less than 2 items in dtype dict ???\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"(Hash) First item in compound dtype tuple not a descr ???\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"(Hash) Second item in compound dtype tuple not an int ???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @_array_descr_walk_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_array_descr_walk_fields(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @PyTuple_Check(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @PyExc_SystemError, align 4
  %20 = call i32 @PyErr_SetString(i32 %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @PyDict_Check(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @PyExc_SystemError, align 4
  %27 = call i32 @PyErr_SetString(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

28:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %115, %28
  %30 = load i32, i32* %13, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @PyTuple_GET_SIZE(i32* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %118

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32* @PyTuple_GET_ITEM(i32* %35, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @PyDict_GetItem(i32* %38, i32* %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @PyExc_SystemError, align 4
  %45 = call i32 @PyErr_SetString(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

46:                                               ; preds = %34
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @PyUString_Check(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @PyExc_SystemError, align 4
  %52 = call i32 @PyErr_SetString(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

53:                                               ; preds = %46
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @PyTuple_Check(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @PyExc_SystemError, align 4
  %59 = call i32 @PyErr_SetString(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

60:                                               ; preds = %53
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @PyTuple_GET_SIZE(i32* %61)
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @PyExc_SystemError, align 4
  %66 = call i32 @PyErr_SetString(i32 %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

67:                                               ; preds = %60
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @PyList_Append(i32* %68, i32* %69)
  %71 = load i32*, i32** %9, align 8
  %72 = call i32* @PyTuple_GET_ITEM(i32* %71, i32 0)
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @PyArray_DescrCheck(i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @PyExc_SystemError, align 4
  %78 = call i32 @PyErr_SetString(i32 %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

79:                                               ; preds = %67
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @Py_INCREF(i32* %80)
  %82 = load i32*, i32** %11, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @_array_descr_walk(i32* %82, i32* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @Py_DECREF(i32* %85)
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %119

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32*, i32** %9, align 8
  %93 = call i32* @PyTuple_GET_ITEM(i32* %92, i32 1)
  store i32* %93, i32** %10, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @PyInt_Check(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @PyExc_SystemError, align 4
  %99 = call i32 @PyErr_SetString(i32 %98, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

100:                                              ; preds = %91
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @PyList_Append(i32* %101, i32* %102)
  br label %104

104:                                              ; preds = %100
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @PyTuple_GET_SIZE(i32* %105)
  %107 = icmp sgt i32 %106, 2
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i32*, i32** %9, align 8
  %110 = call i32* @PyTuple_GET_ITEM(i32* %109, i32 2)
  store i32* %110, i32** %12, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @PyList_Append(i32* %111, i32* %112)
  br label %114

114:                                              ; preds = %108, %104
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %29

118:                                              ; preds = %29
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %97, %89, %76, %64, %57, %50, %43, %25, %18
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @PyTuple_Check(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyDict_Check(i32*) #1

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32* @PyDict_GetItem(i32*, i32*) #1

declare dso_local i32 @PyUString_Check(i32*) #1

declare dso_local i32 @PyList_Append(i32*, i32*) #1

declare dso_local i32 @PyArray_DescrCheck(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @_array_descr_walk(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyInt_Check(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
