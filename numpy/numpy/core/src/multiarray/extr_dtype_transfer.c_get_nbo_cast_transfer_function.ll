; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_cast_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_nbo_cast_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32 }
%struct.TYPE_24__ = type { i32*, i32*, i32*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32*, i32* }

@NPY_DATETIME = common dso_local global i32 0, align 4
@NPY_TIMEDELTA = common dso_local global i32 0, align 4
@NPY_NEEDS_PYAPI = common dso_local global i32 0, align 4
@NPY_FAIL = common dso_local global i32 0, align 4
@_strided_cast_data_free = common dso_local global i32 0, align 4
@_strided_cast_data_clone = common dso_local global i32 0, align 4
@NPY_NATIVE = common dso_local global i32 0, align 4
@PyArray_Type = common dso_local global i32 0, align 4
@_aligned_strided_to_strided_cast_decref_src = common dso_local global i32* null, align 8
@_aligned_contig_to_contig_cast = common dso_local global i32* null, align 8
@_aligned_strided_to_strided_cast = common dso_local global i32* null, align 8
@NPY_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32**, i32**, i32*, i32*)* @get_nbo_cast_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nbo_cast_transfer_function(i32 %0, i64 %1, i64 %2, %struct.TYPE_25__* %3, %struct.TYPE_25__* %4, i32 %5, i32** %6, i32** %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_25__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i32 %0, i32* %12, align 4
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32** %6, i32*** %18, align 8
  store i32** %7, i32*** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i64 1, i64* %25, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %26, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %27, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @PyTypeNum_ISNUMBER(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %10
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @PyTypeNum_ISNUMBER(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @PyArray_ISNBO(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @PyArray_ISNBO(i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %51, %45
  %59 = phi i1 [ true, %45 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %21, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32**, i32*** %18, align 8
  %72 = load i32**, i32*** %19, align 8
  %73 = call i32 @get_nbo_cast_numeric_transfer_function(i32 %62, i64 %63, i64 %64, i32 %67, i32 %70, i32** %71, i32** %72)
  store i32 %73, i32* %11, align 4
  br label %426

74:                                               ; preds = %39, %10
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @NPY_DATETIME, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %98, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NPY_TIMEDELTA, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @NPY_DATETIME, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NPY_TIMEDELTA, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %227

98:                                               ; preds = %92, %86, %80, %74
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @NPY_DATETIME, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @NPY_DATETIME, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @NPY_TIMEDELTA, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %147

116:                                              ; preds = %110
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @NPY_TIMEDELTA, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %116, %104
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @PyArray_ISNBO(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @PyArray_ISNBO(i32 %131)
  %133 = icmp ne i64 %132, 0
  %134 = xor i1 %133, true
  br label %135

135:                                              ; preds = %128, %122
  %136 = phi i1 [ true, %122 ], [ %134, %128 ]
  %137 = zext i1 %136 to i32
  %138 = load i32*, i32** %21, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %144 = load i32**, i32*** %18, align 8
  %145 = load i32**, i32*** %19, align 8
  %146 = call i32 @get_nbo_cast_datetime_transfer_function(i32 %139, i64 %140, i64 %141, %struct.TYPE_25__* %142, %struct.TYPE_25__* %143, i32** %144, i32** %145)
  store i32 %146, i32* %11, align 4
  br label %426

147:                                              ; preds = %116, %110
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @NPY_DATETIME, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %186

153:                                              ; preds = %147
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %185 [
    i32 130, label %157
    i32 129, label %175
  ]

157:                                              ; preds = %153
  %158 = load i32*, i32** %20, align 8
  store i32 1, i32* %158, align 4
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @PyArray_ISNBO(i32 %161)
  %163 = icmp ne i64 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load i32*, i32** %21, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %172 = load i32**, i32*** %18, align 8
  %173 = load i32**, i32*** %19, align 8
  %174 = call i32 @get_nbo_datetime_to_string_transfer_function(i32 %167, i64 %168, i64 %169, %struct.TYPE_25__* %170, %struct.TYPE_25__* %171, i32** %172, i32** %173)
  store i32 %174, i32* %11, align 4
  br label %426

175:                                              ; preds = %153
  %176 = load i32, i32* %12, align 4
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %181 = load i32**, i32*** %18, align 8
  %182 = load i32**, i32*** %19, align 8
  %183 = load i32*, i32** %20, align 8
  %184 = call i32 @get_datetime_to_unicode_transfer_function(i32 %176, i64 %177, i64 %178, %struct.TYPE_25__* %179, %struct.TYPE_25__* %180, i32** %181, i32** %182, i32* %183)
  store i32 %184, i32* %11, align 4
  br label %426

185:                                              ; preds = %153
  br label %226

186:                                              ; preds = %147
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @NPY_DATETIME, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %225

192:                                              ; preds = %186
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  switch i32 %195, label %224 [
    i32 130, label %196
    i32 129, label %214
  ]

196:                                              ; preds = %192
  %197 = load i32*, i32** %20, align 8
  store i32 1, i32* %197, align 4
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @PyArray_ISNBO(i32 %200)
  %202 = icmp ne i64 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = load i32*, i32** %21, align 8
  store i32 %204, i32* %205, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load i64, i64* %13, align 8
  %208 = load i64, i64* %14, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %211 = load i32**, i32*** %18, align 8
  %212 = load i32**, i32*** %19, align 8
  %213 = call i32 @get_nbo_string_to_datetime_transfer_function(i32 %206, i64 %207, i64 %208, %struct.TYPE_25__* %209, %struct.TYPE_25__* %210, i32** %211, i32** %212)
  store i32 %213, i32* %11, align 4
  br label %426

214:                                              ; preds = %192
  %215 = load i32, i32* %12, align 4
  %216 = load i64, i64* %13, align 8
  %217 = load i64, i64* %14, align 8
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %220 = load i32**, i32*** %18, align 8
  %221 = load i32**, i32*** %19, align 8
  %222 = load i32*, i32** %20, align 8
  %223 = call i32 @get_unicode_to_datetime_transfer_function(i32 %215, i64 %216, i64 %217, %struct.TYPE_25__* %218, %struct.TYPE_25__* %219, i32** %220, i32** %221, i32* %222)
  store i32 %223, i32* %11, align 4
  br label %426

224:                                              ; preds = %192
  br label %225

225:                                              ; preds = %224, %186
  br label %226

226:                                              ; preds = %225, %185
  br label %227

227:                                              ; preds = %226, %92
  %228 = load i32, i32* %12, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %227
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @PyArray_ISNBO(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %230
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @PyArray_ISNBO(i32 %239)
  %241 = icmp ne i64 %240, 0
  %242 = xor i1 %241, true
  br label %243

243:                                              ; preds = %236, %230, %227
  %244 = phi i1 [ true, %230 ], [ true, %227 ], [ %242, %236 ]
  %245 = zext i1 %244 to i32
  %246 = load i32*, i32** %21, align 8
  store i32 %245, i32* %246, align 4
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  switch i32 %249, label %256 [
    i32 131, label %250
    i32 130, label %250
    i32 129, label %250
    i32 128, label %250
  ]

250:                                              ; preds = %243, %243, %243, %243
  %251 = load i32*, i32** %20, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = load i32*, i32** %20, align 8
  store i32 1, i32* %254, align 4
  br label %255

255:                                              ; preds = %253, %250
  br label %256

256:                                              ; preds = %243, %255
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  switch i32 %259, label %266 [
    i32 131, label %260
    i32 130, label %260
    i32 129, label %260
    i32 128, label %260
  ]

260:                                              ; preds = %256, %256, %256, %256
  %261 = load i32*, i32** %20, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = load i32*, i32** %20, align 8
  store i32 1, i32* %264, align 4
  br label %265

265:                                              ; preds = %263, %260
  br label %266

266:                                              ; preds = %256, %265
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %268 = load i32, i32* @NPY_NEEDS_PYAPI, align 4
  %269 = call i64 @PyDataType_FLAGCHK(%struct.TYPE_25__* %267, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %273 = load i32, i32* @NPY_NEEDS_PYAPI, align 4
  %274 = call i64 @PyDataType_FLAGCHK(%struct.TYPE_25__* %272, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %271, %266
  %277 = load i32*, i32** %20, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = load i32*, i32** %20, align 8
  store i32 1, i32* %280, align 4
  br label %281

281:                                              ; preds = %279, %276
  br label %282

282:                                              ; preds = %281, %271
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32* @PyArray_GetCastFunc(%struct.TYPE_25__* %283, i32 %286)
  store i32* %287, i32** %23, align 8
  %288 = load i32*, i32** %23, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %294, label %290

290:                                              ; preds = %282
  %291 = load i32**, i32*** %18, align 8
  store i32* null, i32** %291, align 8
  %292 = load i32**, i32*** %19, align 8
  store i32* null, i32** %292, align 8
  %293 = load i32, i32* @NPY_FAIL, align 4
  store i32 %293, i32* %11, align 4
  br label %426

294:                                              ; preds = %282
  %295 = call i64 @PyArray_malloc(i32 40)
  %296 = inttoptr i64 %295 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %296, %struct.TYPE_24__** %22, align 8
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %298 = icmp eq %struct.TYPE_24__* %297, null
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  %300 = call i32 (...) @PyErr_NoMemory()
  %301 = load i32**, i32*** %18, align 8
  store i32* null, i32** %301, align 8
  %302 = load i32**, i32*** %19, align 8
  store i32* null, i32** %302, align 8
  %303 = load i32, i32* @NPY_FAIL, align 4
  store i32 %303, i32* %11, align 4
  br label %426

304:                                              ; preds = %294
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 1
  store i32* @_strided_cast_data_free, i32** %307, align 8
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 0
  store i32* @_strided_cast_data_clone, i32** %310, align 8
  %311 = load i32*, i32** %23, align 8
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 2
  store i32* %311, i32** %313, align 8
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = call i64 @PyArray_ISNBO(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %304
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %320, %struct.TYPE_25__** %24, align 8
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %322 = call i32 @Py_INCREF(%struct.TYPE_25__* %321)
  br label %334

323:                                              ; preds = %304
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %325 = load i32, i32* @NPY_NATIVE, align 4
  %326 = call %struct.TYPE_25__* @PyArray_DescrNewByteorder(%struct.TYPE_25__* %324, i32 %325)
  store %struct.TYPE_25__* %326, %struct.TYPE_25__** %24, align 8
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %328 = icmp eq %struct.TYPE_25__* %327, null
  br i1 %328, label %329, label %333

329:                                              ; preds = %323
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %331 = call i32 @PyArray_free(%struct.TYPE_24__* %330)
  %332 = load i32, i32* @NPY_FAIL, align 4
  store i32 %332, i32* %11, align 4
  br label %426

333:                                              ; preds = %323
  br label %334

334:                                              ; preds = %333, %319
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %336 = call i64 @PyArray_NewFromDescr_int(i32* @PyArray_Type, %struct.TYPE_25__* %335, i32 1, i64* %25, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0, i32 1)
  %337 = inttoptr i64 %336 to i32*
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 0
  store i32* %337, i32** %339, align 8
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = icmp eq i32* %342, null
  br i1 %343, label %344, label %348

344:                                              ; preds = %334
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %346 = call i32 @PyArray_free(%struct.TYPE_24__* %345)
  %347 = load i32, i32* @NPY_FAIL, align 4
  store i32 %347, i32* %11, align 4
  br label %426

348:                                              ; preds = %334
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = call i64 @PyArray_ISNBO(i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %348
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %355, %struct.TYPE_25__** %24, align 8
  %356 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %357 = call i32 @Py_INCREF(%struct.TYPE_25__* %356)
  br label %373

358:                                              ; preds = %348
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %360 = load i32, i32* @NPY_NATIVE, align 4
  %361 = call %struct.TYPE_25__* @PyArray_DescrNewByteorder(%struct.TYPE_25__* %359, i32 %360)
  store %struct.TYPE_25__* %361, %struct.TYPE_25__** %24, align 8
  %362 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %363 = icmp eq %struct.TYPE_25__* %362, null
  br i1 %363, label %364, label %372

364:                                              ; preds = %358
  %365 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %366 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = call i32 @Py_DECREF(i32* %367)
  %369 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %370 = call i32 @PyArray_free(%struct.TYPE_24__* %369)
  %371 = load i32, i32* @NPY_FAIL, align 4
  store i32 %371, i32* %11, align 4
  br label %426

372:                                              ; preds = %358
  br label %373

373:                                              ; preds = %372, %354
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %375 = call i64 @PyArray_NewFromDescr_int(i32* @PyArray_Type, %struct.TYPE_25__* %374, i32 1, i64* %25, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0, i32 1)
  %376 = inttoptr i64 %375 to i32*
  %377 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 1
  store i32* %376, i32** %378, align 8
  %379 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = icmp eq i32* %381, null
  br i1 %382, label %383, label %391

383:                                              ; preds = %373
  %384 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 0
  %386 = load i32*, i32** %385, align 8
  %387 = call i32 @Py_DECREF(i32* %386)
  %388 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %389 = call i32 @PyArray_free(%struct.TYPE_24__* %388)
  %390 = load i32, i32* @NPY_FAIL, align 4
  store i32 %390, i32* %11, align 4
  br label %426

391:                                              ; preds = %373
  %392 = load i32, i32* %17, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %402

394:                                              ; preds = %391
  %395 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %396 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = icmp eq i32 %397, 131
  br i1 %398, label %399, label %402

399:                                              ; preds = %394
  %400 = load i32*, i32** @_aligned_strided_to_strided_cast_decref_src, align 8
  %401 = load i32**, i32*** %18, align 8
  store i32* %400, i32** %401, align 8
  br label %421

402:                                              ; preds = %394, %391
  %403 = load i64, i64* %13, align 8
  %404 = load i64, i64* %26, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %406, label %410

406:                                              ; preds = %402
  %407 = load i64, i64* %14, align 8
  %408 = load i64, i64* %27, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %414, label %410

410:                                              ; preds = %406, %402
  %411 = load i32*, i32** %21, align 8
  %412 = load i32, i32* %411, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %410, %406
  %415 = load i32*, i32** @_aligned_contig_to_contig_cast, align 8
  %416 = load i32**, i32*** %18, align 8
  store i32* %415, i32** %416, align 8
  br label %420

417:                                              ; preds = %410
  %418 = load i32*, i32** @_aligned_strided_to_strided_cast, align 8
  %419 = load i32**, i32*** %18, align 8
  store i32* %418, i32** %419, align 8
  br label %420

420:                                              ; preds = %417, %414
  br label %421

421:                                              ; preds = %420, %399
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %423 = bitcast %struct.TYPE_24__* %422 to i32*
  %424 = load i32**, i32*** %19, align 8
  store i32* %423, i32** %424, align 8
  %425 = load i32, i32* @NPY_SUCCEED, align 4
  store i32 %425, i32* %11, align 4
  br label %426

426:                                              ; preds = %421, %383, %364, %344, %329, %299, %290, %214, %196, %175, %157, %135, %58
  %427 = load i32, i32* %11, align 4
  ret i32 %427
}

declare dso_local i64 @PyTypeNum_ISNUMBER(i32) #1

declare dso_local i64 @PyArray_ISNBO(i32) #1

declare dso_local i32 @get_nbo_cast_numeric_transfer_function(i32, i64, i64, i32, i32, i32**, i32**) #1

declare dso_local i32 @get_nbo_cast_datetime_transfer_function(i32, i64, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, i32**, i32**) #1

declare dso_local i32 @get_nbo_datetime_to_string_transfer_function(i32, i64, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, i32**, i32**) #1

declare dso_local i32 @get_datetime_to_unicode_transfer_function(i32, i64, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, i32**, i32**, i32*) #1

declare dso_local i32 @get_nbo_string_to_datetime_transfer_function(i32, i64, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, i32**, i32**) #1

declare dso_local i32 @get_unicode_to_datetime_transfer_function(i32, i64, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, i32**, i32**, i32*) #1

declare dso_local i64 @PyDataType_FLAGCHK(%struct.TYPE_25__*, i32) #1

declare dso_local i32* @PyArray_GetCastFunc(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @Py_INCREF(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @PyArray_DescrNewByteorder(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_24__*) #1

declare dso_local i64 @PyArray_NewFromDescr_int(i32*, %struct.TYPE_25__*, i32, i64*, i32*, i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
