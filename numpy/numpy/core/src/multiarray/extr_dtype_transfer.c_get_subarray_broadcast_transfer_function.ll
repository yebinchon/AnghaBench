; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_subarray_broadcast_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_subarray_broadcast_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_15__, i32*, i32*, i32*, %struct.TYPE_14__, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i32* }

@NPY_FAIL = common dso_local global i32 0, align 4
@NPY_SUCCEED = common dso_local global i64 0, align 8
@_subarray_broadcast_data_free = common dso_local global i32 0, align 4
@_subarray_broadcast_data_clone = common dso_local global i32 0, align 4
@_strided_to_strided_subarray_broadcast = common dso_local global i32 0, align 4
@_strided_to_strided_subarray_broadcast_withrefs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32**, i32**, i32*)* @get_subarray_broadcast_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_subarray_broadcast_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4, i32 %5, i32 %6, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %7, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %8, i32 %9, i32** %10, i32** %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32**, align 8
  %24 = alloca i32**, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_16__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_15__*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32** %10, i32*** %23, align 8
  store i32** %11, i32*** %24, align 8
  store i32* %12, i32** %25, align 8
  %39 = load i32, i32* %21, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = add i64 96, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %27, align 4
  %44 = load i32, i32* %27, align 4
  %45 = call i64 @PyArray_malloc(i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %26, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %48 = icmp eq %struct.TYPE_16__* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %13
  %50 = call i32 (...) @PyErr_NoMemory()
  %51 = load i32, i32* @NPY_FAIL, align 4
  store i32 %51, i32* %14, align 4
  br label %433

52:                                               ; preds = %13
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 12
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 10
  %66 = load i32*, i32** %25, align 8
  %67 = call i64 @PyArray_GetDTypeTransferFunction(i32 %53, i32 %56, i32 %59, %struct.TYPE_18__* %60, %struct.TYPE_18__* %61, i32 0, i32** %63, i32** %65, i32* %66)
  %68 = load i64, i64* @NPY_SUCCEED, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %52
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %72 = call i32 @PyArray_free(%struct.TYPE_16__* %71)
  %73 = load i32, i32* @NPY_FAIL, align 4
  store i32 %73, i32* %14, align 4
  br label %433

74:                                               ; preds = %52
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 11
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  store i32* @_subarray_broadcast_data_free, i32** %77, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i32* @_subarray_broadcast_data_clone, i32** %80, align 8
  %81 = load i32, i32* %20, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %22, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %74
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %101 = call i64 @PyDataType_REFCHK(%struct.TYPE_18__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %99
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 6
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 9
  %113 = load i32*, i32** %25, align 8
  %114 = call i64 @PyArray_GetDTypeTransferFunction(i32 %104, i32 %107, i32 0, %struct.TYPE_18__* %108, %struct.TYPE_18__* null, i32 1, i32** %110, i32** %112, i32* %113)
  %115 = load i64, i64* @NPY_SUCCEED, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %103
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 10
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @NPY_AUXDATA_FREE(i32* %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %123 = call i32 @PyArray_free(%struct.TYPE_16__* %122)
  %124 = load i32, i32* @NPY_FAIL, align 4
  store i32 %124, i32* %14, align 4
  br label %433

125:                                              ; preds = %103
  br label %131

126:                                              ; preds = %99, %74
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 6
  store i32* null, i32** %128, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 9
  store i32* null, i32** %130, align 8
  br label %131

131:                                              ; preds = %126, %125
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %133 = call i64 @PyDataType_REFCHK(%struct.TYPE_18__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %131
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 8
  %145 = load i32*, i32** %25, align 8
  %146 = call i64 @PyArray_GetDTypeTransferFunction(i32 %136, i32 %139, i32 0, %struct.TYPE_18__* %140, %struct.TYPE_18__* null, i32 1, i32** %142, i32** %144, i32* %145)
  %147 = load i64, i64* @NPY_SUCCEED, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %135
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 10
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @NPY_AUXDATA_FREE(i32* %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 9
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @NPY_AUXDATA_FREE(i32* %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %159 = call i32 @PyArray_free(%struct.TYPE_16__* %158)
  %160 = load i32, i32* @NPY_FAIL, align 4
  store i32 %160, i32* %14, align 4
  br label %433

161:                                              ; preds = %135
  br label %167

162:                                              ; preds = %131
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 5
  store i32* null, i32** %164, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 8
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %162, %161
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 7
  store %struct.TYPE_15__* %169, %struct.TYPE_15__** %35, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %171, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  br label %181

178:                                              ; preds = %167
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  br label %181

181:                                              ; preds = %178, %175
  %182 = phi i64 [ %177, %175 ], [ %180, %178 ]
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %34, align 4
  store i32 0, i32* %28, align 4
  br label %184

184:                                              ; preds = %285, %181
  %185 = load i32, i32* %28, align 4
  %186 = load i32, i32* %21, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %288

188:                                              ; preds = %184
  store i32 1, i32* %36, align 4
  %189 = load i32, i32* %28, align 4
  store i32 %189, i32* %32, align 4
  store i32 0, i32* %31, align 4
  %190 = load i32, i32* %34, align 4
  %191 = sub nsw i32 %190, 1
  store i32 %191, i32* %33, align 4
  br label %192

192:                                              ; preds = %265, %188
  %193 = load i32, i32* %33, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %268

195:                                              ; preds = %192
  store i32 0, i32* %37, align 4
  %196 = load i32, i32* %33, align 4
  %197 = sext i32 %196 to i64
  %198 = load i32, i32* %34, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %199, %201
  %203 = icmp sge i64 %197, %202
  br i1 %203, label %204, label %223

204:                                              ; preds = %195
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %33, align 4
  %208 = sext i32 %207 to i64
  %209 = load i32, i32* %34, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %210, %212
  %214 = sub nsw i64 %208, %213
  %215 = getelementptr inbounds i32, i32* %206, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %38, align 4
  %217 = load i32, i32* %32, align 4
  %218 = load i32, i32* %38, align 4
  %219 = srem i32 %217, %218
  store i32 %219, i32* %37, align 4
  %220 = load i32, i32* %38, align 4
  %221 = load i32, i32* %32, align 4
  %222 = sdiv i32 %221, %220
  store i32 %222, i32* %32, align 4
  br label %223

223:                                              ; preds = %204, %195
  %224 = load i32, i32* %33, align 4
  %225 = sext i32 %224 to i64
  %226 = load i32, i32* %34, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = sub nsw i64 %227, %229
  %231 = icmp sge i64 %225, %230
  br i1 %231, label %232, label %264

232:                                              ; preds = %223
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %33, align 4
  %236 = sext i32 %235 to i64
  %237 = load i32, i32* %34, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %238, %240
  %242 = sub nsw i64 %236, %241
  %243 = getelementptr inbounds i32, i32* %234, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %38, align 4
  %245 = load i32, i32* %38, align 4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %248

247:                                              ; preds = %232
  store i32 0, i32* %37, align 4
  br label %263

248:                                              ; preds = %232
  %249 = load i32, i32* %37, align 4
  %250 = load i32, i32* %38, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %261

252:                                              ; preds = %248
  %253 = load i32, i32* %36, align 4
  %254 = load i32, i32* %37, align 4
  %255 = mul nsw i32 %253, %254
  %256 = load i32, i32* %31, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %31, align 4
  %258 = load i32, i32* %38, align 4
  %259 = load i32, i32* %36, align 4
  %260 = mul nsw i32 %259, %258
  store i32 %260, i32* %36, align 4
  br label %262

261:                                              ; preds = %248
  store i32 -1, i32* %31, align 4
  br label %268

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %262, %247
  br label %264

264:                                              ; preds = %263, %223
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %33, align 4
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %33, align 4
  br label %192

268:                                              ; preds = %261, %192
  %269 = load i32, i32* %31, align 4
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %273 = load i32, i32* %28, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  store i32 -1, i32* %276, align 4
  br label %284

277:                                              ; preds = %268
  %278 = load i32, i32* %31, align 4
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %280 = load i32, i32* %28, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 0
  store i32 %278, i32* %283, align 4
  br label %284

284:                                              ; preds = %277, %271
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %28, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %28, align 4
  br label %184

288:                                              ; preds = %184
  store i32 0, i32* %29, align 4
  store i32 1, i32* %30, align 4
  store i32 1, i32* %28, align 4
  br label %289

289:                                              ; preds = %374, %288
  %290 = load i32, i32* %28, align 4
  %291 = load i32, i32* %21, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %377

293:                                              ; preds = %289
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %295 = load i32, i32* %29, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %333

301:                                              ; preds = %293
  %302 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %303 = load i32, i32* %28, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, -1
  br i1 %308, label %309, label %329

309:                                              ; preds = %301
  %310 = load i32, i32* %30, align 4
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %312 = load i32, i32* %29, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 1
  store i32 %310, i32* %315, align 4
  %316 = load i32, i32* %29, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %29, align 4
  store i32 1, i32* %30, align 4
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %319 = load i32, i32* %28, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %325 = load i32, i32* %29, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 0
  store i32 %323, i32* %328, align 4
  br label %332

329:                                              ; preds = %301
  %330 = load i32, i32* %30, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %30, align 4
  br label %332

332:                                              ; preds = %329, %309
  br label %373

333:                                              ; preds = %293
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %335 = load i32, i32* %28, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %341 = load i32, i32* %28, align 4
  %342 = sub nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 1
  %348 = icmp ne i32 %339, %347
  br i1 %348, label %349, label %369

349:                                              ; preds = %333
  %350 = load i32, i32* %30, align 4
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %352 = load i32, i32* %29, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 1
  store i32 %350, i32* %355, align 4
  %356 = load i32, i32* %29, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %29, align 4
  store i32 1, i32* %30, align 4
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %359 = load i32, i32* %28, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %365 = load i32, i32* %29, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  store i32 %363, i32* %368, align 4
  br label %372

369:                                              ; preds = %333
  %370 = load i32, i32* %30, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %30, align 4
  br label %372

372:                                              ; preds = %369, %349
  br label %373

373:                                              ; preds = %372, %332
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %28, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %28, align 4
  br label %289

377:                                              ; preds = %289
  %378 = load i32, i32* %30, align 4
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %380 = load i32, i32* %29, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 1
  store i32 %378, i32* %383, align 4
  %384 = load i32, i32* %29, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %29, align 4
  %386 = load i32, i32* %29, align 4
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 4
  store i32 %386, i32* %388, align 8
  br label %389

389:                                              ; preds = %412, %377
  %390 = load i32, i32* %29, align 4
  %391 = add nsw i32 %390, -1
  store i32 %391, i32* %29, align 4
  %392 = icmp ne i32 %390, 0
  br i1 %392, label %393, label %413

393:                                              ; preds = %389
  %394 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %395 = load i32, i32* %29, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, -1
  br i1 %400, label %401, label %412

401:                                              ; preds = %393
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %406 = load i32, i32* %29, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = mul nsw i32 %410, %404
  store i32 %411, i32* %409, align 4
  br label %412

412:                                              ; preds = %401, %393
  br label %389

413:                                              ; preds = %389
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 6
  %416 = load i32*, i32** %415, align 8
  %417 = icmp eq i32* %416, null
  br i1 %417, label %418, label %425

418:                                              ; preds = %413
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 5
  %421 = load i32*, i32** %420, align 8
  %422 = icmp eq i32* %421, null
  br i1 %422, label %423, label %425

423:                                              ; preds = %418
  %424 = load i32**, i32*** %23, align 8
  store i32* @_strided_to_strided_subarray_broadcast, i32** %424, align 8
  br label %427

425:                                              ; preds = %418, %413
  %426 = load i32**, i32*** %23, align 8
  store i32* @_strided_to_strided_subarray_broadcast_withrefs, i32** %426, align 8
  br label %427

427:                                              ; preds = %425, %423
  %428 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %429 = bitcast %struct.TYPE_16__* %428 to i32*
  %430 = load i32**, i32*** %24, align 8
  store i32* %429, i32** %430, align 8
  %431 = load i64, i64* @NPY_SUCCEED, align 8
  %432 = trunc i64 %431 to i32
  store i32 %432, i32* %14, align 4
  br label %433

433:                                              ; preds = %427, %149, %117, %70, %49
  %434 = load i32, i32* %14, align 4
  ret i32 %434
}

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i64 @PyArray_GetDTypeTransferFunction(i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32**, i32**, i32*) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_16__*) #1

declare dso_local i64 @PyDataType_REFCHK(%struct.TYPE_18__*) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
