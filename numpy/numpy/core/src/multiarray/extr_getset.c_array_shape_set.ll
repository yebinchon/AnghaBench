; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_shape_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_shape_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot delete array shape\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"incompatible shape for a non-contiguous array\00", align 1
@PyExc_MemoryError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NPY_ARRAY_C_CONTIGUOUS = common dso_local global i32 0, align 4
@NPY_ARRAY_F_CONTIGUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @array_shape_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_shape_set(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @PyExc_AttributeError, align 4
  %12 = call i32 @PyErr_SetString(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %104

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @PyArray_Reshape(i32* %14, i32* %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %104

21:                                               ; preds = %13
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @PyArray_DATA(i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @PyArray_DATA(i32* %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @Py_DECREF(i32* %28)
  %30 = load i32, i32* @PyExc_AttributeError, align 4
  %31 = call i32 @PyErr_SetString(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %104

32:                                               ; preds = %21
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @npy_free_cache_dim_array(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @PyArray_NDIM(i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 2, %44
  %46 = call i32* @npy_alloc_cache_dim(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = bitcast i32* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32* %46, i32** %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32* @PyArray_DIMS(i32* %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @Py_DECREF(i32* %54)
  %56 = load i32, i32* @PyExc_MemoryError, align 4
  %57 = call i32 @PyErr_SetString(i32 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %104

58:                                               ; preds = %43
  %59 = load i32*, i32** %4, align 8
  %60 = call i32* @PyArray_DIMS(i32* %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32*, i32** %4, align 8
  %65 = bitcast i32* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* %63, i32** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %58
  %70 = load i32*, i32** %4, align 8
  %71 = call i32* @PyArray_DIMS(i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @PyArray_DIMS(i32* %72)
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(i32* %71, i32* %73, i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32* @PyArray_STRIDES(i32* %79)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32* @PyArray_STRIDES(i32* %81)
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(i32* %80, i32* %82, i32 %86)
  br label %88

88:                                               ; preds = %69, %58
  br label %96

89:                                               ; preds = %32
  %90 = load i32*, i32** %4, align 8
  %91 = bitcast i32* %90 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = bitcast i32* %93 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %89, %88
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @Py_DECREF(i32* %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @NPY_ARRAY_C_CONTIGUOUS, align 4
  %101 = load i32, i32* @NPY_ARRAY_F_CONTIGUOUS, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @PyArray_UpdateFlags(i32* %99, i32 %102)
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %96, %53, %27, %20, %10
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PyArray_Reshape(i32*, i32*) #1

declare dso_local i64 @PyArray_DATA(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @npy_free_cache_dim_array(i32*) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i32* @npy_alloc_cache_dim(i32) #1

declare dso_local i32* @PyArray_DIMS(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @PyArray_STRIDES(i32*) #1

declare dso_local i32 @PyArray_UpdateFlags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
