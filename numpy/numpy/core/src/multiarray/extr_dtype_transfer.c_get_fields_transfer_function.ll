; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_fields_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_fields_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, i32* }

@NPY_FAIL = common dso_local global i32 0, align 4
@_field_transfer_data_free = common dso_local global i32 0, align 4
@_field_transfer_data_clone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Oi|O\00", align 1
@NPY_SUCCEED = common dso_local global i64 0, align 8
@_strided_to_strided_field_transfer = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [93 x i8] c"Can't cast from structure to non-structure, except if the structure only has a single field.\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"structures must have the same size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32**, i32**, i32*)* @get_fields_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fields_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4, i32 %5, i32** %6, i32** %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_16__*, align 8
  %31 = alloca %struct.TYPE_15__*, align 8
  %32 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32** %6, i32*** %17, align 8
  store i32** %7, i32*** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %34 = call i32 @PyDataType_HASFIELDS(%struct.TYPE_17__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %224, label %36

36:                                               ; preds = %9
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PyTuple_GET_SIZE(i32 %39)
  store i32 %40, i32* %26, align 4
  %41 = load i32, i32* %26, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 20
  %45 = add i64 40, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %27, align 4
  %47 = load i32, i32* %27, align 4
  %48 = call i64 @PyArray_malloc(i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %30, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %51 = icmp eq %struct.TYPE_16__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = call i32 (...) @PyErr_NoMemory()
  %54 = load i32, i32* @NPY_FAIL, align 4
  store i32 %54, i32* %10, align 4
  br label %463

55:                                               ; preds = %36
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  store i32* @_field_transfer_data_free, i32** %58, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32* @_field_transfer_data_clone, i32** %61, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %31, align 8
  store i32 0, i32* %25, align 4
  br label %64

64:                                               ; preds = %146, %55
  %65 = load i32, i32* %25, align 4
  %66 = load i32, i32* %26, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %149

68:                                               ; preds = %64
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %25, align 4
  %73 = call i32* @PyTuple_GET_ITEM(i32 %71, i32 %72)
  store i32* %73, i32** %20, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %20, align 8
  %78 = call i32* @PyDict_GetItem(i32 %76, i32* %77)
  store i32* %78, i32** %21, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = call i32 @PyArg_ParseTuple(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__** %24, i32* %29, i32** %22)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %68
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %84 = call i32 @PyArray_free(%struct.TYPE_16__* %83)
  %85 = load i32, i32* @NPY_FAIL, align 4
  store i32 %85, i32* %10, align 4
  br label %463

86:                                               ; preds = %68
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %92 = load i32, i32* %25, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %97 = load i32, i32* %25, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i32*, i32** %19, align 8
  %102 = call i64 @PyArray_GetDTypeTransferFunction(i32 0, i32 %87, i32 %88, %struct.TYPE_17__* %89, %struct.TYPE_17__* %90, i32 0, i32* %95, i32* %100, i32* %101)
  %103 = load i64, i64* @NPY_SUCCEED, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %86
  %106 = load i32, i32* %25, align 4
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %25, align 4
  br label %108

108:                                              ; preds = %119, %105
  %109 = load i32, i32* %25, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %113 = load i32, i32* %25, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @NPY_AUXDATA_FREE(i32 %117)
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %25, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %25, align 4
  br label %108

122:                                              ; preds = %108
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %124 = call i32 @PyArray_free(%struct.TYPE_16__* %123)
  %125 = load i32, i32* @NPY_FAIL, align 4
  store i32 %125, i32* %10, align 4
  br label %463

126:                                              ; preds = %86
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %128 = load i32, i32* %25, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* %29, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %134 = load i32, i32* %25, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  store i32 %132, i32* %137, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %142 = load i32, i32* %25, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 3
  store i32 %140, i32* %145, align 4
  br label %146

146:                                              ; preds = %126
  %147 = load i32, i32* %25, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %25, align 4
  br label %64

149:                                              ; preds = %64
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %214

152:                                              ; preds = %149
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %154 = call i64 @PyDataType_REFCHK(%struct.TYPE_17__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %214

156:                                              ; preds = %152
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %160 = load i32, i32* %26, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %165 = load i32, i32* %26, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = load i32*, i32** %19, align 8
  %170 = call i64 @get_decsrcref_transfer_function(i32 0, i32 %157, %struct.TYPE_17__* %158, i32* %163, i32* %168, i32* %169)
  %171 = load i64, i64* @NPY_SUCCEED, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %193

173:                                              ; preds = %156
  store i32 0, i32* %25, align 4
  br label %174

174:                                              ; preds = %186, %173
  %175 = load i32, i32* %25, align 4
  %176 = load i32, i32* %26, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %180 = load i32, i32* %25, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @NPY_AUXDATA_FREE(i32 %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %25, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %25, align 4
  br label %174

189:                                              ; preds = %174
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %191 = call i32 @PyArray_free(%struct.TYPE_16__* %190)
  %192 = load i32, i32* @NPY_FAIL, align 4
  store i32 %192, i32* %10, align 4
  br label %463

193:                                              ; preds = %156
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %195 = load i32, i32* %26, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  store i32 0, i32* %198, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %200 = load i32, i32* %26, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  store i32 0, i32* %203, align 4
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %208 = load i32, i32* %26, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 3
  store i32 %206, i32* %211, align 4
  %212 = load i32, i32* %26, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %26, align 4
  br label %214

214:                                              ; preds = %193, %152, %149
  %215 = load i32, i32* %26, align 4
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load i32**, i32*** %17, align 8
  store i32* @_strided_to_strided_field_transfer, i32** %218, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %220 = bitcast %struct.TYPE_16__* %219 to i32*
  %221 = load i32**, i32*** %18, align 8
  store i32* %220, i32** %221, align 8
  %222 = load i64, i64* @NPY_SUCCEED, align 8
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %10, align 4
  br label %463

224:                                              ; preds = %9
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %226 = call i32 @PyDataType_HASFIELDS(%struct.TYPE_17__* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %312, label %228

228:                                              ; preds = %224
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @PyTuple_GET_SIZE(i32 %231)
  %233 = icmp ne i32 %232, 1
  br i1 %233, label %234, label %238

234:                                              ; preds = %228
  %235 = load i32, i32* @PyExc_ValueError, align 4
  %236 = call i32 @PyErr_SetString(i32 %235, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0))
  %237 = load i32, i32* @NPY_FAIL, align 4
  store i32 %237, i32* %10, align 4
  br label %463

238:                                              ; preds = %228
  store i32 60, i32* %27, align 4
  %239 = load i32, i32* %27, align 4
  %240 = call i64 @PyArray_malloc(i32 %239)
  %241 = inttoptr i64 %240 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %241, %struct.TYPE_16__** %30, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %243 = icmp eq %struct.TYPE_16__* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %238
  %245 = call i32 (...) @PyErr_NoMemory()
  %246 = load i32, i32* @NPY_FAIL, align 4
  store i32 %246, i32* %10, align 4
  br label %463

247:                                              ; preds = %238
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  store i32* @_field_transfer_data_free, i32** %250, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  store i32* @_field_transfer_data_clone, i32** %253, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 1
  store %struct.TYPE_15__* %255, %struct.TYPE_15__** %31, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32* @PyTuple_GET_ITEM(i32 %258, i32 0)
  store i32* %259, i32** %20, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %20, align 8
  %264 = call i32* @PyDict_GetItem(i32 %262, i32* %263)
  store i32* %264, i32** %21, align 8
  %265 = load i32*, i32** %21, align 8
  %266 = call i32 @PyArg_ParseTuple(i32* %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__** %23, i32* %28, i32** %22)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %247
  %269 = load i32, i32* @NPY_FAIL, align 4
  store i32 %269, i32* %10, align 4
  br label %463

270:                                              ; preds = %247
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %13, align 4
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %275 = load i32, i32* %16, align 4
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i64 0
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i64 0
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 2
  %282 = load i32*, i32** %19, align 8
  %283 = call i64 @PyArray_GetDTypeTransferFunction(i32 0, i32 %271, i32 %272, %struct.TYPE_17__* %273, %struct.TYPE_17__* %274, i32 %275, i32* %278, i32* %281, i32* %282)
  %284 = load i64, i64* @NPY_SUCCEED, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %270
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %288 = call i32 @PyArray_free(%struct.TYPE_16__* %287)
  %289 = load i32, i32* @NPY_FAIL, align 4
  store i32 %289, i32* %10, align 4
  br label %463

290:                                              ; preds = %270
  %291 = load i32, i32* %28, align 4
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i64 0
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i64 0
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 1
  store i32 0, i32* %297, align 4
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i64 0
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 3
  store i32 %300, i32* %303, align 4
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  store i32 1, i32* %305, align 8
  %306 = load i32**, i32*** %17, align 8
  store i32* @_strided_to_strided_field_transfer, i32** %306, align 8
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %308 = bitcast %struct.TYPE_16__* %307 to i32*
  %309 = load i32**, i32*** %18, align 8
  store i32* %308, i32** %309, align 8
  %310 = load i64, i64* @NPY_SUCCEED, align 8
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %10, align 4
  br label %463

312:                                              ; preds = %224
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @PyTuple_GET_SIZE(i32 %315)
  store i32 %316, i32* %26, align 4
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @PyTuple_GET_SIZE(i32 %319)
  %321 = load i32, i32* %26, align 4
  %322 = icmp ne i32 %320, %321
  br i1 %322, label %323, label %327

323:                                              ; preds = %312
  %324 = load i32, i32* @PyExc_ValueError, align 4
  %325 = call i32 @PyErr_SetString(i32 %324, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %326 = load i32, i32* @NPY_FAIL, align 4
  store i32 %326, i32* %10, align 4
  br label %463

327:                                              ; preds = %312
  %328 = load i32, i32* %26, align 4
  %329 = sext i32 %328 to i64
  %330 = mul i64 %329, 20
  %331 = add i64 40, %330
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %27, align 4
  %333 = load i32, i32* %27, align 4
  %334 = call i64 @PyArray_malloc(i32 %333)
  %335 = inttoptr i64 %334 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %335, %struct.TYPE_16__** %30, align 8
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %337 = icmp eq %struct.TYPE_16__* %336, null
  br i1 %337, label %338, label %341

338:                                              ; preds = %327
  %339 = call i32 (...) @PyErr_NoMemory()
  %340 = load i32, i32* @NPY_FAIL, align 4
  store i32 %340, i32* %10, align 4
  br label %463

341:                                              ; preds = %327
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  store i32* @_field_transfer_data_free, i32** %344, align 8
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  store i32* @_field_transfer_data_clone, i32** %347, align 8
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 1
  store %struct.TYPE_15__* %349, %struct.TYPE_15__** %31, align 8
  store i32 0, i32* %25, align 4
  br label %350

350:                                              ; preds = %426, %341
  %351 = load i32, i32* %25, align 4
  %352 = load i32, i32* %26, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %429

354:                                              ; preds = %350
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %25, align 4
  %359 = call i32* @PyTuple_GET_ITEM(i32 %357, i32 %358)
  store i32* %359, i32** %20, align 8
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load i32*, i32** %20, align 8
  %364 = call i32* @PyDict_GetItem(i32 %362, i32* %363)
  store i32* %364, i32** %21, align 8
  %365 = load i32*, i32** %21, align 8
  %366 = call i32 @PyArg_ParseTuple(i32* %365, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__** %24, i32* %29, i32** %22)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %354
  store i32 1, i32* %32, align 4
  br label %429

369:                                              ; preds = %354
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %25, align 4
  %374 = call i32* @PyTuple_GET_ITEM(i32 %372, i32 %373)
  store i32* %374, i32** %20, align 8
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load i32*, i32** %20, align 8
  %379 = call i32* @PyDict_GetItem(i32 %377, i32* %378)
  store i32* %379, i32** %21, align 8
  %380 = load i32*, i32** %21, align 8
  %381 = call i32 @PyArg_ParseTuple(i32* %380, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__** %23, i32* %28, i32** %22)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %369
  store i32 1, i32* %32, align 4
  br label %429

384:                                              ; preds = %369
  %385 = load i32, i32* %12, align 4
  %386 = load i32, i32* %13, align 4
  %387 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %389 = load i32, i32* %16, align 4
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %391 = load i32, i32* %25, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 4
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %396 = load i32, i32* %25, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 2
  %400 = load i32*, i32** %19, align 8
  %401 = call i64 @PyArray_GetDTypeTransferFunction(i32 0, i32 %385, i32 %386, %struct.TYPE_17__* %387, %struct.TYPE_17__* %388, i32 %389, i32* %394, i32* %399, i32* %400)
  %402 = load i64, i64* @NPY_SUCCEED, align 8
  %403 = icmp ne i64 %401, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %384
  store i32 1, i32* %32, align 4
  br label %429

405:                                              ; preds = %384
  %406 = load i32, i32* %28, align 4
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %408 = load i32, i32* %25, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 0
  store i32 %406, i32* %411, align 4
  %412 = load i32, i32* %29, align 4
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %414 = load i32, i32* %25, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 1
  store i32 %412, i32* %417, align 4
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %422 = load i32, i32* %25, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %424, i32 0, i32 3
  store i32 %420, i32* %425, align 4
  br label %426

426:                                              ; preds = %405
  %427 = load i32, i32* %25, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %25, align 4
  br label %350

429:                                              ; preds = %404, %383, %368, %350
  %430 = load i32, i32* %32, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %453

432:                                              ; preds = %429
  %433 = load i32, i32* %25, align 4
  %434 = sub nsw i32 %433, 1
  store i32 %434, i32* %25, align 4
  br label %435

435:                                              ; preds = %446, %432
  %436 = load i32, i32* %25, align 4
  %437 = icmp sge i32 %436, 0
  br i1 %437, label %438, label %449

438:                                              ; preds = %435
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %440 = load i32, i32* %25, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @NPY_AUXDATA_FREE(i32 %444)
  br label %446

446:                                              ; preds = %438
  %447 = load i32, i32* %25, align 4
  %448 = add nsw i32 %447, -1
  store i32 %448, i32* %25, align 4
  br label %435

449:                                              ; preds = %435
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %451 = call i32 @PyArray_free(%struct.TYPE_16__* %450)
  %452 = load i32, i32* @NPY_FAIL, align 4
  store i32 %452, i32* %10, align 4
  br label %463

453:                                              ; preds = %429
  %454 = load i32, i32* %26, align 4
  %455 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i32 0, i32 0
  store i32 %454, i32* %456, align 8
  %457 = load i32**, i32*** %17, align 8
  store i32* @_strided_to_strided_field_transfer, i32** %457, align 8
  %458 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %459 = bitcast %struct.TYPE_16__* %458 to i32*
  %460 = load i32**, i32*** %18, align 8
  store i32* %459, i32** %460, align 8
  %461 = load i64, i64* @NPY_SUCCEED, align 8
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %10, align 4
  br label %463

463:                                              ; preds = %453, %449, %338, %323, %290, %286, %268, %244, %234, %214, %189, %122, %82, %52
  %464 = load i32, i32* %10, align 4
  ret i32 %464
}

declare dso_local i32 @PyDataType_HASFIELDS(%struct.TYPE_17__*) #1

declare dso_local i32 @PyTuple_GET_SIZE(i32) #1

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32, i32) #1

declare dso_local i32* @PyDict_GetItem(i32, i32*) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, %struct.TYPE_17__**, i32*, i32**) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_16__*) #1

declare dso_local i64 @PyArray_GetDTypeTransferFunction(i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32) #1

declare dso_local i64 @PyDataType_REFCHK(%struct.TYPE_17__*) #1

declare dso_local i64 @get_decsrcref_transfer_function(i32, i32, %struct.TYPE_17__*, i32*, i32*, i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
