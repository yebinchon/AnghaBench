; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_val_character.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_val_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8* }

@ZEND_FFI_VAL_ERROR = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_CHAR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_ffi_val_character(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 39
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  br label %387

17:                                               ; preds = %3
  %18 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8 %26, i8* %28, align 8
  br label %386

29:                                               ; preds = %17
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %381

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 97
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %380

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 98
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8 8, i8* %53, align 8
  br label %379

54:                                               ; preds = %48, %42
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 102
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i8 12, i8* %65, align 8
  br label %378

66:                                               ; preds = %60, %54
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 110
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i64, i64* %6, align 8
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i8 10, i8* %77, align 8
  br label %377

78:                                               ; preds = %72, %66
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 114
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i64, i64* %6, align 8
  %86 = icmp eq i64 %85, 4
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i8 13, i8* %89, align 8
  br label %376

90:                                               ; preds = %84, %78
  %91 = load i8*, i8** %5, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 116
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i64, i64* %6, align 8
  %98 = icmp eq i64 %97, 4
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i8 9, i8* %101, align 8
  br label %375

102:                                              ; preds = %96, %90
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 118
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i64, i64* %6, align 8
  %110 = icmp eq i64 %109, 4
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i8 11, i8* %113, align 8
  br label %374

114:                                              ; preds = %108, %102
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sge i32 %118, 48
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sle i32 %124, 55
  br i1 %125, label %126, label %205

126:                                              ; preds = %120, %114
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = sub nsw i32 %130, 48
  store i32 %131, i32* %7, align 4
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 3
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp sge i32 %135, 48
  br i1 %136, label %143, label %137

137:                                              ; preds = %126
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 3
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp sle i32 %141, 55
  br i1 %142, label %143, label %184

143:                                              ; preds = %137, %126
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %144, 8
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 3
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = sub nsw i32 %149, 48
  %151 = add nsw i32 %145, %150
  store i32 %151, i32* %7, align 4
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 4
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp sge i32 %155, 48
  br i1 %156, label %163, label %157

157:                                              ; preds = %143
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 4
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp sle i32 %161, 55
  br i1 %162, label %163, label %175

163:                                              ; preds = %157, %143
  %164 = load i64, i64* %6, align 8
  %165 = icmp eq i64 %164, 6
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load i32, i32* %7, align 4
  %168 = mul nsw i32 %167, 8
  %169 = load i8*, i8** %5, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 4
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = sub nsw i32 %172, 48
  %174 = add nsw i32 %168, %173
  store i32 %174, i32* %7, align 4
  br label %183

175:                                              ; preds = %163, %157
  %176 = load i64, i64* %6, align 8
  %177 = icmp ne i64 %176, 5
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %178, %175
  br label %183

183:                                              ; preds = %182, %166
  br label %192

184:                                              ; preds = %137
  %185 = load i64, i64* %6, align 8
  %186 = icmp ne i64 %185, 4
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %187, %184
  br label %192

192:                                              ; preds = %191, %183
  %193 = load i32, i32* %7, align 4
  %194 = icmp sle i32 %193, 255
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i32, i32* %7, align 4
  %197 = trunc i32 %196 to i8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  store i8 %197, i8* %199, align 8
  br label %204

200:                                              ; preds = %192
  %201 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %200, %195
  br label %373

205:                                              ; preds = %120
  %206 = load i8*, i8** %5, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 120
  br i1 %210, label %211, label %358

211:                                              ; preds = %205
  %212 = load i8*, i8** %5, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 3
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp sge i32 %215, 48
  br i1 %216, label %223, label %217

217:                                              ; preds = %211
  %218 = load i8*, i8** %5, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 3
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp sle i32 %221, 55
  br i1 %222, label %223, label %229

223:                                              ; preds = %217, %211
  %224 = load i8*, i8** %5, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 3
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = sub nsw i32 %227, 48
  store i32 %228, i32* %7, align 4
  br label %271

229:                                              ; preds = %217
  %230 = load i8*, i8** %5, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 3
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp sge i32 %233, 65
  br i1 %234, label %241, label %235

235:                                              ; preds = %229
  %236 = load i8*, i8** %5, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 3
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp sle i32 %239, 70
  br i1 %240, label %241, label %247

241:                                              ; preds = %235, %229
  %242 = load i8*, i8** %5, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 3
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = sub nsw i32 %245, 65
  store i32 %246, i32* %7, align 4
  br label %270

247:                                              ; preds = %235
  %248 = load i8*, i8** %5, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 3
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp sge i32 %251, 97
  br i1 %252, label %259, label %253

253:                                              ; preds = %247
  %254 = load i8*, i8** %5, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 3
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp sle i32 %257, 102
  br i1 %258, label %259, label %265

259:                                              ; preds = %253, %247
  %260 = load i8*, i8** %5, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 3
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = sub nsw i32 %263, 97
  store i32 %264, i32* %7, align 4
  br label %269

265:                                              ; preds = %253
  %266 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 1
  store i8* %266, i8** %268, align 8
  br label %269

269:                                              ; preds = %265, %259
  br label %270

270:                                              ; preds = %269, %241
  br label %271

271:                                              ; preds = %270, %223
  %272 = load i8*, i8** %5, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 4
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp sge i32 %275, 48
  br i1 %276, label %283, label %277

277:                                              ; preds = %271
  %278 = load i8*, i8** %5, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 4
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp sle i32 %281, 55
  br i1 %282, label %283, label %295

283:                                              ; preds = %277, %271
  %284 = load i64, i64* %6, align 8
  %285 = icmp eq i64 %284, 6
  br i1 %285, label %286, label %295

286:                                              ; preds = %283
  %287 = load i32, i32* %7, align 4
  %288 = mul nsw i32 %287, 16
  %289 = load i8*, i8** %5, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 4
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = sub nsw i32 %292, 48
  %294 = add nsw i32 %288, %293
  store i32 %294, i32* %7, align 4
  br label %353

295:                                              ; preds = %283, %277
  %296 = load i8*, i8** %5, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 4
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp sge i32 %299, 65
  br i1 %300, label %307, label %301

301:                                              ; preds = %295
  %302 = load i8*, i8** %5, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 4
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp sle i32 %305, 70
  br i1 %306, label %307, label %319

307:                                              ; preds = %301, %295
  %308 = load i64, i64* %6, align 8
  %309 = icmp eq i64 %308, 6
  br i1 %309, label %310, label %319

310:                                              ; preds = %307
  %311 = load i32, i32* %7, align 4
  %312 = mul nsw i32 %311, 16
  %313 = load i8*, i8** %5, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 4
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = sub nsw i32 %316, 65
  %318 = add nsw i32 %312, %317
  store i32 %318, i32* %7, align 4
  br label %352

319:                                              ; preds = %307, %301
  %320 = load i8*, i8** %5, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 4
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = icmp sge i32 %323, 97
  br i1 %324, label %331, label %325

325:                                              ; preds = %319
  %326 = load i8*, i8** %5, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 4
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp sle i32 %329, 102
  br i1 %330, label %331, label %343

331:                                              ; preds = %325, %319
  %332 = load i64, i64* %6, align 8
  %333 = icmp eq i64 %332, 6
  br i1 %333, label %334, label %343

334:                                              ; preds = %331
  %335 = load i32, i32* %7, align 4
  %336 = mul nsw i32 %335, 16
  %337 = load i8*, i8** %5, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 4
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = sub nsw i32 %340, 97
  %342 = add nsw i32 %336, %341
  store i32 %342, i32* %7, align 4
  br label %351

343:                                              ; preds = %331, %325
  %344 = load i64, i64* %6, align 8
  %345 = icmp ne i64 %344, 5
  br i1 %345, label %346, label %350

346:                                              ; preds = %343
  %347 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 1
  store i8* %347, i8** %349, align 8
  br label %350

350:                                              ; preds = %346, %343
  br label %351

351:                                              ; preds = %350, %334
  br label %352

352:                                              ; preds = %351, %310
  br label %353

353:                                              ; preds = %352, %286
  %354 = load i32, i32* %7, align 4
  %355 = trunc i32 %354 to i8
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 0
  store i8 %355, i8* %357, align 8
  br label %372

358:                                              ; preds = %205
  %359 = load i64, i64* %6, align 8
  %360 = icmp eq i64 %359, 4
  br i1 %360, label %361, label %367

361:                                              ; preds = %358
  %362 = load i8*, i8** %5, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 2
  %364 = load i8, i8* %363, align 1
  %365 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %365, i32 0, i32 0
  store i8 %364, i8* %366, align 8
  br label %371

367:                                              ; preds = %358
  %368 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 1
  store i8* %368, i8** %370, align 8
  br label %371

371:                                              ; preds = %367, %361
  br label %372

372:                                              ; preds = %371, %353
  br label %373

373:                                              ; preds = %372, %204
  br label %374

374:                                              ; preds = %373, %111
  br label %375

375:                                              ; preds = %374, %99
  br label %376

376:                                              ; preds = %375, %87
  br label %377

377:                                              ; preds = %376, %75
  br label %378

378:                                              ; preds = %377, %63
  br label %379

379:                                              ; preds = %378, %51
  br label %380

380:                                              ; preds = %379, %41
  br label %385

381:                                              ; preds = %29
  %382 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %383 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 1
  store i8* %382, i8** %384, align 8
  br label %385

385:                                              ; preds = %381, %380
  br label %386

386:                                              ; preds = %385, %23
  br label %387

387:                                              ; preds = %386, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
