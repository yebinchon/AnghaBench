; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_setdestzero_fields_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_setdestzero_fields_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32* }

@NPY_FAIL = common dso_local global i32 0, align 4
@_field_transfer_data_free = common dso_local global i32 0, align 4
@_field_transfer_data_clone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Oi|O\00", align 1
@NPY_SUCCEED = common dso_local global i64 0, align 8
@_strided_to_strided_field_transfer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_12__*, i32**, i32**, i32*)* @get_setdestzero_fields_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_setdestzero_fields_transfer_function(i32 %0, i32 %1, %struct.TYPE_12__* %2, i32** %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %14, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @PyTuple_GET_SIZE(i32* %31)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 32
  %37 = add i64 56, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %22, align 4
  %40 = call i64 @PyArray_malloc(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %24, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %43 = icmp eq %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = call i32 (...) @PyErr_NoMemory()
  %46 = load i32, i32* @NPY_FAIL, align 4
  store i32 %46, i32* %7, align 4
  br label %144

47:                                               ; preds = %6
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32* @_field_transfer_data_free, i32** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32* @_field_transfer_data_clone, i32** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %25, align 8
  store i32 0, i32* %19, align 4
  br label %56

56:                                               ; preds = %131, %47
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %134

60:                                               ; preds = %56
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %19, align 4
  %63 = call i32* @PyTuple_GET_ITEM(i32* %61, i32 %62)
  store i32* %63, i32** %15, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i32* @PyDict_GetItem(i32 %66, i32* %67)
  store i32* %68, i32** %16, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @PyArg_ParseTuple(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__** %18, i32* %23, i32** %17)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %74 = call i32 @PyArray_free(%struct.TYPE_11__* %73)
  %75 = load i32, i32* @NPY_FAIL, align 4
  store i32 %75, i32* %7, align 4
  br label %144

76:                                               ; preds = %60
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32*, i32** %13, align 8
  %90 = call i64 @get_setdstzero_transfer_function(i32 0, i32 %77, %struct.TYPE_12__* %78, i32* %83, i32* %88, i32* %89)
  %91 = load i64, i64* @NPY_SUCCEED, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %76
  %94 = load i32, i32* %19, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %19, align 4
  br label %96

96:                                               ; preds = %107, %93
  %97 = load i32, i32* %19, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @NPY_AUXDATA_FREE(i32 %105)
  br label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %19, align 4
  br label %96

110:                                              ; preds = %96
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %112 = call i32 @PyArray_free(%struct.TYPE_11__* %111)
  %113 = load i32, i32* @NPY_FAIL, align 4
  store i32 %113, i32* %7, align 4
  br label %144

114:                                              ; preds = %76
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* %23, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i32 %120, i32* %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %114
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %19, align 4
  br label %56

134:                                              ; preds = %56
  %135 = load i32, i32* %21, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32**, i32*** %11, align 8
  store i32* @_strided_to_strided_field_transfer, i32** %138, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %140 = bitcast %struct.TYPE_11__* %139 to i32*
  %141 = load i32**, i32*** %12, align 8
  store i32* %140, i32** %141, align 8
  %142 = load i64, i64* @NPY_SUCCEED, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %134, %110, %72, %44
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32* @PyDict_GetItem(i32, i32*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, %struct.TYPE_12__**, i32*, i32**) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_11__*) #1

declare dso_local i64 @get_setdstzero_transfer_function(i32, i32, %struct.TYPE_12__*, i32*, i32*, i32*) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
