; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_cast_datetime_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_cast_datetime_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32*, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, i32* }

@NPY_FAIL = common dso_local global i32 0, align 4
@_strided_datetime_cast_data_free = common dso_local global i32 0, align 4
@_strided_datetime_cast_data_clone = common dso_local global i32 0, align 4
@NPY_DATETIME = common dso_local global i64 0, align 8
@NPY_FR_Y = common dso_local global i64 0, align 8
@NPY_FR_M = common dso_local global i64 0, align 8
@_strided_to_strided_datetime_general_cast = common dso_local global i32 0, align 4
@_aligned_strided_to_strided_datetime_cast = common dso_local global i32 0, align 4
@_strided_to_strided_datetime_cast = common dso_local global i32 0, align 4
@NPY_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32**, i32**)* @get_nbo_cast_datetime_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nbo_cast_datetime_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4, i32** %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32** %6, i32*** %15, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %22 = call %struct.TYPE_15__* @get_datetime_metadata_from_dtype(%struct.TYPE_14__* %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %16, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %24 = icmp eq %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @NPY_FAIL, align 4
  store i32 %26, i32* %8, align 4
  br label %119

27:                                               ; preds = %7
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %29 = call %struct.TYPE_15__* @get_datetime_metadata_from_dtype(%struct.TYPE_14__* %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %17, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %31 = icmp eq %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @NPY_FAIL, align 4
  store i32 %33, i32* %8, align 4
  br label %119

34:                                               ; preds = %27
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %37 = call i32 @get_datetime_conversion_factor(%struct.TYPE_15__* %35, %struct.TYPE_15__* %36, i64* %18, i64* %19)
  %38 = load i64, i64* %18, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @NPY_FAIL, align 4
  store i32 %41, i32* %8, align 4
  br label %119

42:                                               ; preds = %34
  %43 = call i64 @PyArray_malloc(i32 48)
  %44 = inttoptr i64 %43 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %20, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %46 = icmp eq %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = call i32 (...) @PyErr_NoMemory()
  %49 = load i32**, i32*** %14, align 8
  store i32* null, i32** %49, align 8
  %50 = load i32**, i32*** %15, align 8
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* @NPY_FAIL, align 4
  store i32 %51, i32* %8, align 4
  br label %119

52:                                               ; preds = %42
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i32* @_strided_datetime_cast_data_free, i32** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32* @_strided_datetime_cast_data_clone, i32** %58, align 8
  %59 = load i64, i64* %18, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %19, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NPY_DATETIME, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %106

72:                                               ; preds = %52
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NPY_FR_Y, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %96, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NPY_FR_M, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NPY_FR_Y, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NPY_FR_M, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %90, %84, %78, %72
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %100 = call i32 @memcpy(i32* %98, %struct.TYPE_15__* %99, i32 4)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %104 = call i32 @memcpy(i32* %102, %struct.TYPE_15__* %103, i32 4)
  %105 = load i32**, i32*** %14, align 8
  store i32* @_strided_to_strided_datetime_general_cast, i32** %105, align 8
  br label %114

106:                                              ; preds = %90, %52
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32**, i32*** %14, align 8
  store i32* @_aligned_strided_to_strided_datetime_cast, i32** %110, align 8
  br label %113

111:                                              ; preds = %106
  %112 = load i32**, i32*** %14, align 8
  store i32* @_strided_to_strided_datetime_cast, i32** %112, align 8
  br label %113

113:                                              ; preds = %111, %109
  br label %114

114:                                              ; preds = %113, %96
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %116 = bitcast %struct.TYPE_13__* %115 to i32*
  %117 = load i32**, i32*** %15, align 8
  store i32* %116, i32** %117, align 8
  %118 = load i32, i32* @NPY_SUCCEED, align 4
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %114, %47, %40, %32, %25
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_15__* @get_datetime_metadata_from_dtype(%struct.TYPE_14__*) #1

declare dso_local i32 @get_datetime_conversion_factor(%struct.TYPE_15__*, %struct.TYPE_15__*, i64*, i64*) #1

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
