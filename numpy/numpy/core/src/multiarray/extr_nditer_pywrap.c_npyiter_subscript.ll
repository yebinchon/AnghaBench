; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_subscript.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64 }

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Iterator is past the end\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"Iterator construction used delayed buffer allocation, and no reset has been done yet\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Iterator slicing only supports a step of 1\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"invalid index type for iterator indexing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*)* @npyiter_subscript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @npyiter_subscript(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @PyExc_ValueError, align 4
  %22 = call i32 @PyErr_SetString(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %87

23:                                               ; preds = %15
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @NpyIter_HasDelayedBufAlloc(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @PyExc_ValueError, align 4
  %31 = call i32 @PyErr_SetString(i32 %30, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %87

32:                                               ; preds = %23
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @PyInt_Check(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @PyLong_Check(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @PyIndex_Check(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @PySequence_Check(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44, %36, %32
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @PyArray_PyIntAsIntp(i32* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @error_converting(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32* null, i32** %3, align 8
  br label %87

55:                                               ; preds = %48
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32* @npyiter_seq_item(%struct.TYPE_5__* %56, i32 %57)
  store i32* %58, i32** %3, align 8
  br label %87

59:                                               ; preds = %44, %40
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @PySlice_Check(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @NpyIter_GetNOp(i32* %67)
  %69 = call i64 @NpySlice_GetIndicesEx(i32* %64, i32 %68, i32* %7, i32* %8, i32* %9, i32* %10)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32* null, i32** %3, align 8
  br label %87

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @PyExc_ValueError, align 4
  %77 = call i32 @PyErr_SetString(i32 %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %87

78:                                               ; preds = %72
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32* @npyiter_seq_slice(%struct.TYPE_5__* %79, i32 %80, i32 %81)
  store i32* %82, i32** %3, align 8
  br label %87

83:                                               ; preds = %59
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* @PyExc_TypeError, align 4
  %86 = call i32 @PyErr_SetString(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %87

87:                                               ; preds = %84, %78, %75, %71, %55, %54, %29, %20
  %88 = load i32*, i32** %3, align 8
  ret i32* %88
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @NpyIter_HasDelayedBufAlloc(i32*) #1

declare dso_local i64 @PyInt_Check(i32*) #1

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i64 @PyIndex_Check(i32*) #1

declare dso_local i32 @PySequence_Check(i32*) #1

declare dso_local i32 @PyArray_PyIntAsIntp(i32*) #1

declare dso_local i64 @error_converting(i32) #1

declare dso_local i32* @npyiter_seq_item(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @PySlice_Check(i32*) #1

declare dso_local i64 @NpySlice_GetIndicesEx(i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @NpyIter_GetNOp(i32*) #1

declare dso_local i32* @npyiter_seq_slice(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
