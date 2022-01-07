; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_item_selection.c_partition_prep_kth_array.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_item_selection.c_partition_prep_kth_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_INTP = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Partition index must be integer\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"kth array must have dimension <= 1\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"kth(=%zd) out of bounds (%zd)\00", align 1
@NPY_QUICKSORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @partition_prep_kth_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @partition_prep_kth_array(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i64* @PyArray_SHAPE(i32* %13)
  store i64* %14, i64** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @PyArray_TYPE(i32* %15)
  %17 = load i32, i32* @NPY_INTP, align 4
  %18 = call i32 @PyArray_CanCastSafely(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @PyExc_TypeError, align 4
  %22 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %114

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @PyArray_NDIM(i32* %24)
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @PyExc_ValueError, align 4
  %29 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %114

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @NPY_INTP, align 4
  %33 = call i64 @PyArray_Cast(i32* %31, i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32* null, i32** %4, align 8
  br label %114

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  %40 = call i64* @PyArray_DATA(i32* %39)
  store i64* %40, i64** %10, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @PyArray_SIZE(i32* %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %44

44:                                               ; preds = %101, %38
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %104

48:                                               ; preds = %44
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i64*, i64** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %59
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %54, %48
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @PyArray_SIZE(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %65
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %69
  %76 = load i64*, i64** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp uge i64 %79, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %75, %69
  %87 = load i32, i32* @PyExc_ValueError, align 4
  %88 = load i64*, i64** %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %8, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i32, i8*, ...) @PyErr_Format(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %91, i64 %96)
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @Py_XDECREF(i32* %98)
  store i32* null, i32** %4, align 8
  br label %114

100:                                              ; preds = %75, %65
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %12, align 8
  br label %44

104:                                              ; preds = %44
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @PyArray_SIZE(i32* %105)
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* @NPY_QUICKSORT, align 4
  %111 = call i32 @PyArray_Sort(i32* %109, i32 -1, i32 %110)
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32*, i32** %9, align 8
  store i32* %113, i32** %4, align 8
  br label %114

114:                                              ; preds = %112, %86, %37, %27, %20
  %115 = load i32*, i32** %4, align 8
  ret i32* %115
}

declare dso_local i64* @PyArray_SHAPE(i32*) #1

declare dso_local i32 @PyArray_CanCastSafely(i32, i32) #1

declare dso_local i32 @PyArray_TYPE(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, ...) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i64 @PyArray_Cast(i32*, i32) #1

declare dso_local i64* @PyArray_DATA(i32*) #1

declare dso_local i32 @PyArray_SIZE(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @PyArray_Sort(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
