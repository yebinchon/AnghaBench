; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_decsrcref_fields_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_decsrcref_fields_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32* }

@NPY_FAIL = common dso_local global i32 0, align 4
@_field_transfer_data_free = common dso_local global i32 0, align 4
@_field_transfer_data_clone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Oi|O\00", align 1
@NPY_SUCCEED = common dso_local global i64 0, align 8
@_strided_to_strided_field_transfer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_13__*, i32**, i32**, i32*)* @get_decsrcref_fields_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_decsrcref_fields_transfer_function(i32 %0, i32 %1, %struct.TYPE_13__* %2, i32** %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_12__*, align 8
  %25 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %14, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @PyTuple_GET_SIZE(i32* %31)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 24
  %37 = add i64 48, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %22, align 4
  %40 = call i64 @PyArray_malloc(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %24, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %43 = icmp eq %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = call i32 (...) @PyErr_NoMemory()
  %46 = load i32, i32* @NPY_FAIL, align 4
  store i32 %46, i32* %7, align 4
  br label %159

47:                                               ; preds = %6
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32* @_field_transfer_data_free, i32** %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32* @_field_transfer_data_clone, i32** %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %25, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %56

56:                                               ; preds = %146, %47
  %57 = load i32, i32* %19, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %149

60:                                               ; preds = %56
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %19, align 4
  %63 = call i32* @PyTuple_GET_ITEM(i32* %61, i32 %62)
  store i32* %63, i32** %15, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = call i32* @PyDict_GetItem(i32 %66, i32* %67)
  store i32* %68, i32** %16, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @PyArg_ParseTuple(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__** %18, i32* %23, i32** %17)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %74 = call i32 @PyArray_free(%struct.TYPE_12__* %73)
  %75 = load i32, i32* @NPY_FAIL, align 4
  store i32 %75, i32* %7, align 4
  br label %159

76:                                               ; preds = %60
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %78 = call i64 @PyDataType_REFCHK(%struct.TYPE_13__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %145

80:                                               ; preds = %76
  %81 = load i32*, i32** %13, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32*, i32** %13, align 8
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load i32*, i32** %13, align 8
  %99 = call i64 @get_decsrcref_transfer_function(i32 0, i32 %86, %struct.TYPE_13__* %87, i32* %92, i32* %97, i32* %98)
  %100 = load i64, i64* @NPY_SUCCEED, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %85
  %103 = load i32, i32* %21, align 4
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  br label %105

105:                                              ; preds = %116, %102
  %106 = load i32, i32* %19, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @NPY_AUXDATA_FREE(i32 %114)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %19, align 4
  br label %105

119:                                              ; preds = %105
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %121 = call i32 @PyArray_free(%struct.TYPE_12__* %120)
  %122 = load i32, i32* @NPY_FAIL, align 4
  store i32 %122, i32* %7, align 4
  br label %159

123:                                              ; preds = %85
  %124 = load i32, i32* %23, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i32 %124, i32* %129, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %131 = load i32, i32* %21, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %139 = load i32, i32* %21, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* %21, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %21, align 4
  br label %145

145:                                              ; preds = %123, %76
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %19, align 4
  br label %56

149:                                              ; preds = %56
  %150 = load i32, i32* %21, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load i32**, i32*** %11, align 8
  store i32* @_strided_to_strided_field_transfer, i32** %153, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %155 = bitcast %struct.TYPE_12__* %154 to i32*
  %156 = load i32**, i32*** %12, align 8
  store i32* %155, i32** %156, align 8
  %157 = load i64, i64* @NPY_SUCCEED, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %149, %119, %72, %44
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32* @PyDict_GetItem(i32, i32*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, %struct.TYPE_13__**, i32*, i32**) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_12__*) #1

declare dso_local i64 @PyDataType_REFCHK(%struct.TYPE_13__*) #1

declare dso_local i64 @get_decsrcref_transfer_function(i32, i32, %struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
