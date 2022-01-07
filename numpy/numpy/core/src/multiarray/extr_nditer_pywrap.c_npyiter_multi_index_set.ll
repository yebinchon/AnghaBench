; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_multi_index_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_multi_index_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32* }

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot delete nditer multi_index\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Iterator is invalid\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"multi_index must be set with a sequence\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Wrong number of indices\00", align 1
@NPY_SUCCEED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Iterator is not tracking a multi-index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @npyiter_multi_index_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_multi_index_set(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @NPY_MAXDIMS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @PyExc_AttributeError, align 4
  %20 = call i32 @PyErr_SetString(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @PyExc_ValueError, align 4
  %28 = call i32 @PyErr_SetString(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @NpyIter_HasMultiIndex(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %98

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @NpyIter_GetNDim(i32* %38)
  store i64 %39, i64* %7, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @PySequence_Check(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @PyExc_ValueError, align 4
  %45 = call i32 @PyErr_SetString(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

46:                                               ; preds = %35
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @PySequence_Size(i32* %47)
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @PyExc_ValueError, align 4
  %53 = call i32 @PyErr_SetString(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

54:                                               ; preds = %46
  store i64 0, i64* %6, align 8
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32* @PySequence_GetItem(i32* %60, i64 %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i64 @PyInt_AsLong(i32* %63)
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %15, i64 %65
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i64, i64* %15, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @error_converting(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @Py_XDECREF(i32* %73)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %55

79:                                               ; preds = %55
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @NpyIter_GotoMultiIndex(i32* %82, i64* %15)
  %84 = load i64, i64* @NPY_SUCCEED, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

87:                                               ; preds = %79
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = call i64 @npyiter_resetbasepointers(%struct.TYPE_4__* %92)
  %94 = load i64, i64* @NPY_SUCCEED, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

97:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

98:                                               ; preds = %29
  %99 = load i32, i32* @PyExc_ValueError, align 4
  %100 = call i32 @PyErr_SetString(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

101:                                              ; preds = %98, %97, %96, %86, %72, %51, %43, %26, %18
  %102 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i64 @NpyIter_HasMultiIndex(i32*) #2

declare dso_local i64 @NpyIter_GetNDim(i32*) #2

declare dso_local i32 @PySequence_Check(i32*) #2

declare dso_local i64 @PySequence_Size(i32*) #2

declare dso_local i32* @PySequence_GetItem(i32*, i64) #2

declare dso_local i64 @PyInt_AsLong(i32*) #2

declare dso_local i64 @error_converting(i64) #2

declare dso_local i32 @Py_XDECREF(i32*) #2

declare dso_local i64 @NpyIter_GotoMultiIndex(i32*, i64*) #2

declare dso_local i64 @npyiter_resetbasepointers(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
