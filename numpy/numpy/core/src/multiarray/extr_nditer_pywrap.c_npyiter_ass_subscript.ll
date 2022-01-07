; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_ass_subscript.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_ass_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64 }

@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot delete iterator elements\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Iterator is past the end\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Iterator construction used delayed buffer allocation, and no reset has been done yet\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Iterator slice assignment only supports a step of 1\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"invalid index type for iterator indexing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*)* @npyiter_ass_subscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_ass_subscript(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @PyExc_TypeError, align 4
  %17 = call i32 @PyErr_SetString(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %97

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @PyExc_ValueError, align 4
  %30 = call i32 @PyErr_SetString(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %97

31:                                               ; preds = %23
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @NpyIter_HasDelayedBufAlloc(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @PyExc_ValueError, align 4
  %39 = call i32 @PyErr_SetString(i32 %38, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %97

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @PyInt_Check(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @PyLong_Check(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @PyIndex_Check(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @PySequence_Check(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %52, %44, %40
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @PyArray_PyIntAsIntp(i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @error_converting(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %97

63:                                               ; preds = %56
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @npyiter_seq_ass_item(%struct.TYPE_5__* %64, i32 %65, i32* %66)
  store i32 %67, i32* %4, align 4
  br label %97

68:                                               ; preds = %52, %48
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @PySlice_Check(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @NpyIter_GetNOp(i32* %76)
  %78 = call i64 @NpySlice_GetIndicesEx(i32* %73, i32 %77, i32* %9, i32* %10, i32* %11, i32* %12)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %97

81:                                               ; preds = %72
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @PyExc_ValueError, align 4
  %86 = call i32 @PyErr_SetString(i32 %85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %97

87:                                               ; preds = %81
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @npyiter_seq_ass_slice(%struct.TYPE_5__* %88, i32 %89, i32 %90, i32* %91)
  store i32 %92, i32* %4, align 4
  br label %97

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* @PyExc_TypeError, align 4
  %96 = call i32 @PyErr_SetString(i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %87, %84, %80, %63, %62, %37, %28, %15
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @NpyIter_HasDelayedBufAlloc(i32*) #1

declare dso_local i64 @PyInt_Check(i32*) #1

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i64 @PyIndex_Check(i32*) #1

declare dso_local i32 @PySequence_Check(i32*) #1

declare dso_local i32 @PyArray_PyIntAsIntp(i32*) #1

declare dso_local i64 @error_converting(i32) #1

declare dso_local i32 @npyiter_seq_ass_item(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i64 @PySlice_Check(i32*) #1

declare dso_local i64 @NpySlice_GetIndicesEx(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @NpyIter_GetNOp(i32*) #1

declare dso_local i32 @npyiter_seq_ass_slice(%struct.TYPE_5__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
