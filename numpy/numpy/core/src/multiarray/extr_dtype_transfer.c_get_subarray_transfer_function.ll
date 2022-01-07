; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_subarray_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_subarray_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__*, i32 }

@__const.get_subarray_transfer_function.src_shape = private unnamed_addr constant %struct.TYPE_20__ { i32 0, i64 -1, i32 0, i32* null }, align 8
@__const.get_subarray_transfer_function.dst_shape = private unnamed_addr constant %struct.TYPE_20__ { i32 0, i64 -1, i32 0, i32* null }, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid subarray shape\00", align 1
@NPY_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32**, i32**, i32*)* @get_subarray_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_subarray_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_21__* %3, %struct.TYPE_21__* %4, i32 %5, i32** %6, i32** %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_20__, align 8
  %21 = alloca %struct.TYPE_20__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32** %6, i32*** %17, align 8
  store i32** %7, i32*** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = bitcast %struct.TYPE_20__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.TYPE_20__* @__const.get_subarray_transfer_function.src_shape to i8*), i64 32, i1 false)
  %26 = bitcast %struct.TYPE_20__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.TYPE_20__* @__const.get_subarray_transfer_function.dst_shape to i8*), i64 32, i1 false)
  store i32 1, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %28 = call i64 @PyDataType_HASSUBARRAY(%struct.TYPE_21__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %9
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PyArray_IntpConverter(i32 %35, %struct.TYPE_20__* %20)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @PyExc_ValueError, align 4
  %40 = call i32 @PyErr_SetString(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @NPY_FAIL, align 4
  store i32 %41, i32* %10, align 4
  br label %162

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @PyArray_MultiplyList(i32 %44, i64 %46)
  store i32 %47, i32* %22, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %14, align 8
  br label %53

53:                                               ; preds = %42, %9
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %55 = call i64 @PyDataType_HASSUBARRAY(%struct.TYPE_21__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PyArray_IntpConverter(i32 %62, %struct.TYPE_20__* %21)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %57
  %66 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %20)
  %67 = load i32, i32* @PyExc_ValueError, align 4
  %68 = call i32 @PyErr_SetString(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @NPY_FAIL, align 4
  store i32 %69, i32* %10, align 4
  br label %162

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @PyArray_MultiplyList(i32 %72, i64 %74)
  store i32 %75, i32* %23, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %15, align 8
  br label %81

81:                                               ; preds = %70, %53
  %82 = load i32, i32* %23, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load i32, i32* %22, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %20)
  %89 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %21)
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32**, i32*** %17, align 8
  %97 = load i32**, i32*** %18, align 8
  %98 = load i32*, i32** %19, align 8
  %99 = call i32 @PyArray_GetDTypeTransferFunction(i32 %90, i32 %91, i32 %92, %struct.TYPE_21__* %93, %struct.TYPE_21__* %94, i32 %95, i32** %96, i32** %97, i32* %98)
  store i32 %99, i32* %10, align 4
  br label %162

100:                                              ; preds = %84, %81
  %101 = load i32, i32* %22, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %20)
  %105 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %21)
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %23, align 4
  %113 = load i32**, i32*** %17, align 8
  %114 = load i32**, i32*** %18, align 8
  %115 = load i32*, i32** %19, align 8
  %116 = call i32 @get_one_to_n_transfer_function(i32 %106, i32 %107, i32 %108, %struct.TYPE_21__* %109, %struct.TYPE_21__* %110, i32 %111, i32 %112, i32** %113, i32** %114, i32* %115)
  store i32 %116, i32* %10, align 4
  br label %162

117:                                              ; preds = %100
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %119, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @PyArray_CompareLists(i32 %125, i32 %127, i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %123
  %133 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %20)
  %134 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %21)
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %22, align 4
  %142 = load i32**, i32*** %17, align 8
  %143 = load i32**, i32*** %18, align 8
  %144 = load i32*, i32** %19, align 8
  %145 = call i32 @get_n_to_n_transfer_function(i32 %135, i32 %136, i32 %137, %struct.TYPE_21__* %138, %struct.TYPE_21__* %139, i32 %140, i32 %141, i32** %142, i32** %143, i32* %144)
  store i32 %145, i32* %10, align 4
  br label %162

146:                                              ; preds = %123, %117
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load i32**, i32*** %17, align 8
  %156 = load i32**, i32*** %18, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = call i32 @get_subarray_broadcast_transfer_function(i32 %147, i32 %148, i32 %149, %struct.TYPE_21__* %150, %struct.TYPE_21__* %151, i32 %152, i32 %153, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %20, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %21, i32 %154, i32** %155, i32** %156, i32* %157)
  store i32 %158, i32* %24, align 4
  %159 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %20)
  %160 = call i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %21)
  %161 = load i32, i32* %24, align 4
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %146, %132, %103, %87, %65, %38
  %163 = load i32, i32* %10, align 4
  ret i32 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @PyDataType_HASSUBARRAY(%struct.TYPE_21__*) #2

declare dso_local i32 @PyArray_IntpConverter(i32, %struct.TYPE_20__*) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i32 @PyArray_MultiplyList(i32, i64) #2

declare dso_local i32 @npy_free_cache_dim_obj(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8) #2

declare dso_local i32 @PyArray_GetDTypeTransferFunction(i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32**, i32**, i32*) #2

declare dso_local i32 @get_one_to_n_transfer_function(i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32**, i32**, i32*) #2

declare dso_local i64 @PyArray_CompareLists(i32, i32, i64) #2

declare dso_local i32 @get_n_to_n_transfer_function(i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32**, i32**, i32*) #2

declare dso_local i32 @get_subarray_broadcast_transfer_function(i32, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, i32, i32**, i32**, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
