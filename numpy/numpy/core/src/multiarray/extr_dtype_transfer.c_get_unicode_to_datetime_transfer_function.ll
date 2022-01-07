; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_unicode_to_datetime_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_unicode_to_datetime_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

@NPY_STRING = common dso_local global i32 0, align 4
@NPY_FAIL = common dso_local global i32 0, align 4
@NPY_SUCCEED = common dso_local global i64 0, align 8
@NPY_NEEDS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32**, i32**, i32*)* @get_unicode_to_datetime_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_unicode_to_datetime_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_15__* %3, %struct.TYPE_15__* %4, i32** %5, i32** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %14, align 8
  store i32** %5, i32*** %15, align 8
  store i32** %6, i32*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %25 = load i32, i32* @NPY_STRING, align 4
  %26 = call %struct.TYPE_15__* @PyArray_DescrFromType(i32 %25)
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %24, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %29 = call %struct.TYPE_15__* @PyArray_AdaptFlexibleDType(i32* null, %struct.TYPE_15__* %27, %struct.TYPE_15__* %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %24, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %31 = icmp eq %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = load i32, i32* @NPY_FAIL, align 4
  store i32 %33, i32* %9, align 4
  br label %122

34:                                               ; preds = %8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i64 @PyArray_GetDTypeTransferFunction(i32 %35, i32 %36, i32 %39, %struct.TYPE_15__* %40, %struct.TYPE_15__* %41, i32 0, i32** %22, i32** %19, i32* %42)
  %44 = load i64, i64* @NPY_SUCCEED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %48 = call i32 @Py_DECREF(%struct.TYPE_15__* %47)
  %49 = load i32, i32* @NPY_FAIL, align 4
  store i32 %49, i32* %9, align 4
  br label %122

50:                                               ; preds = %34
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %59 = call i64 @get_nbo_string_to_datetime_transfer_function(i32 1, i32 %53, i32 %56, %struct.TYPE_15__* %57, %struct.TYPE_15__* %58, i32** %21, i32** %18)
  %60 = load i64, i64* @NPY_SUCCEED, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %64 = call i32 @Py_DECREF(%struct.TYPE_15__* %63)
  %65 = load i32*, i32** %19, align 8
  %66 = call i32 @NPY_AUXDATA_FREE(i32* %65)
  %67 = load i32, i32* @NPY_FAIL, align 4
  store i32 %67, i32* %9, align 4
  br label %122

68:                                               ; preds = %50
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %75 = call i64 @PyArray_GetDTypeCopySwapFn(i32 %69, i32 %72, i32 %73, %struct.TYPE_15__* %74, i32** %23, i32** %20)
  %76 = load i64, i64* @NPY_SUCCEED, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %80 = call i32 @Py_DECREF(%struct.TYPE_15__* %79)
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @NPY_AUXDATA_FREE(i32* %81)
  %83 = load i32*, i32** %18, align 8
  %84 = call i32 @NPY_AUXDATA_FREE(i32* %83)
  %85 = load i32, i32* @NPY_FAIL, align 4
  store i32 %85, i32* %9, align 4
  br label %122

86:                                               ; preds = %68
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %22, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = load i32*, i32** %23, align 8
  %96 = load i32*, i32** %20, align 8
  %97 = load i32*, i32** %21, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %100 = load i32, i32* @NPY_NEEDS_INIT, align 4
  %101 = call i32 @PyDataType_FLAGCHK(%struct.TYPE_15__* %99, i32 %100)
  %102 = load i32**, i32*** %15, align 8
  %103 = load i32**, i32*** %16, align 8
  %104 = call i64 @wrap_aligned_contig_transfer_function(i32 %89, i32 %92, i32* %93, i32* %94, i32* %95, i32* %96, i32* %97, i32* %98, i32 %101, i32** %102, i32** %103)
  %105 = load i64, i64* @NPY_SUCCEED, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %86
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %109 = call i32 @Py_DECREF(%struct.TYPE_15__* %108)
  %110 = load i32*, i32** %18, align 8
  %111 = call i32 @NPY_AUXDATA_FREE(i32* %110)
  %112 = load i32*, i32** %19, align 8
  %113 = call i32 @NPY_AUXDATA_FREE(i32* %112)
  %114 = load i32*, i32** %20, align 8
  %115 = call i32 @NPY_AUXDATA_FREE(i32* %114)
  %116 = load i32, i32* @NPY_FAIL, align 4
  store i32 %116, i32* %9, align 4
  br label %122

117:                                              ; preds = %86
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %119 = call i32 @Py_DECREF(%struct.TYPE_15__* %118)
  %120 = load i64, i64* @NPY_SUCCEED, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %117, %107, %78, %62, %46, %32
  %123 = load i32, i32* %9, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_15__* @PyArray_DescrFromType(i32) #1

declare dso_local %struct.TYPE_15__* @PyArray_AdaptFlexibleDType(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i64 @PyArray_GetDTypeTransferFunction(i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32**, i32**, i32*) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_15__*) #1

declare dso_local i64 @get_nbo_string_to_datetime_transfer_function(i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32**, i32**) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32*) #1

declare dso_local i64 @PyArray_GetDTypeCopySwapFn(i32, i32, i32, %struct.TYPE_15__*, i32**, i32**) #1

declare dso_local i64 @wrap_aligned_contig_transfer_function(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32**, i32**) #1

declare dso_local i32 @PyDataType_FLAGCHK(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
