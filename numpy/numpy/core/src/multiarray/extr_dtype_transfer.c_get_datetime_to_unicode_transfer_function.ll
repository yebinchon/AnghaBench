; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_datetime_to_unicode_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_datetime_to_unicode_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

@NPY_STRING = common dso_local global i32 0, align 4
@NPY_FAIL = common dso_local global i32 0, align 4
@NPY_SUCCEED = common dso_local global i64 0, align 8
@NPY_NEEDS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32**, i32**, i32*)* @get_datetime_to_unicode_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_datetime_to_unicode_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_15__* %3, %struct.TYPE_15__* %4, i32** %5, i32** %6, i32* %7) #0 {
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
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %29 = call %struct.TYPE_15__* @PyArray_AdaptFlexibleDType(i32* null, %struct.TYPE_15__* %27, %struct.TYPE_15__* %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %24, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %31 = icmp eq %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = load i32, i32* @NPY_FAIL, align 4
  store i32 %33, i32* %9, align 4
  br label %120

34:                                               ; preds = %8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %41 = call i64 @PyArray_GetDTypeCopySwapFn(i32 %35, i32 %36, i32 %39, %struct.TYPE_15__* %40, i32** %22, i32** %19)
  %42 = load i64, i64* @NPY_SUCCEED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %46 = call i32 @Py_DECREF(%struct.TYPE_15__* %45)
  %47 = load i32, i32* @NPY_FAIL, align 4
  store i32 %47, i32* %9, align 4
  br label %120

48:                                               ; preds = %34
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %57 = call i64 @get_nbo_datetime_to_string_transfer_function(i32 1, i32 %51, i32 %54, %struct.TYPE_15__* %55, %struct.TYPE_15__* %56, i32** %21, i32** %18)
  %58 = load i64, i64* @NPY_SUCCEED, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %62 = call i32 @Py_DECREF(%struct.TYPE_15__* %61)
  %63 = load i32*, i32** %19, align 8
  %64 = call i32 @NPY_AUXDATA_FREE(i32* %63)
  %65 = load i32, i32* @NPY_FAIL, align 4
  store i32 %65, i32* %9, align 4
  br label %120

66:                                               ; preds = %48
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call i64 @PyArray_GetDTypeTransferFunction(i32 %67, i32 %70, i32 %71, %struct.TYPE_15__* %72, %struct.TYPE_15__* %73, i32 0, i32** %23, i32** %20, i32* %74)
  %76 = load i64, i64* @NPY_SUCCEED, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %66
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %80 = call i32 @Py_DECREF(%struct.TYPE_15__* %79)
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @NPY_AUXDATA_FREE(i32* %81)
  %83 = load i32*, i32** %18, align 8
  %84 = call i32 @NPY_AUXDATA_FREE(i32* %83)
  %85 = load i32, i32* @NPY_FAIL, align 4
  store i32 %85, i32* %9, align 4
  br label %120

86:                                               ; preds = %66
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %22, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = load i32*, i32** %23, align 8
  %96 = load i32*, i32** %20, align 8
  %97 = load i32*, i32** %21, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %100 = load i32, i32* @NPY_NEEDS_INIT, align 4
  %101 = call i32 @PyDataType_FLAGCHK(%struct.TYPE_15__* %99, i32 %100)
  %102 = load i32**, i32*** %15, align 8
  %103 = load i32**, i32*** %16, align 8
  %104 = call i64 @wrap_aligned_contig_transfer_function(i32 %89, i32 %92, i32* %93, i32* %94, i32* %95, i32* %96, i32* %97, i32* %98, i32 %101, i32** %102, i32** %103)
  %105 = load i64, i64* @NPY_SUCCEED, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %86
  %108 = load i32*, i32** %18, align 8
  %109 = call i32 @NPY_AUXDATA_FREE(i32* %108)
  %110 = load i32*, i32** %19, align 8
  %111 = call i32 @NPY_AUXDATA_FREE(i32* %110)
  %112 = load i32*, i32** %20, align 8
  %113 = call i32 @NPY_AUXDATA_FREE(i32* %112)
  %114 = load i32, i32* @NPY_FAIL, align 4
  store i32 %114, i32* %9, align 4
  br label %120

115:                                              ; preds = %86
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %117 = call i32 @Py_DECREF(%struct.TYPE_15__* %116)
  %118 = load i64, i64* @NPY_SUCCEED, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %115, %107, %78, %60, %44, %32
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_15__* @PyArray_DescrFromType(i32) #1

declare dso_local %struct.TYPE_15__* @PyArray_AdaptFlexibleDType(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i64 @PyArray_GetDTypeCopySwapFn(i32, i32, i32, %struct.TYPE_15__*, i32**, i32**) #1

declare dso_local i32 @Py_DECREF(%struct.TYPE_15__*) #1

declare dso_local i64 @get_nbo_datetime_to_string_transfer_function(i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32**, i32**) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32*) #1

declare dso_local i64 @PyArray_GetDTypeTransferFunction(i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32**, i32**, i32*) #1

declare dso_local i64 @wrap_aligned_contig_transfer_function(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32**, i32**) #1

declare dso_local i32 @PyDataType_FLAGCHK(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
