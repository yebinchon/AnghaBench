; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_get_next_char.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_get_next_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i64*, i32*)* @get_next_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_char(i32 %0, i8* %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %30 = load i32, i32* @SUCCESS, align 4
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ule i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @CHECK_LEN(i64 %37, i32 1)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %5
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @MB_FAILURE(i64 %41, i32 1)
  br label %43

43:                                               ; preds = %40, %5
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %849 [
    i32 128, label %45
    i32 133, label %348
    i32 132, label %407
    i32 130, label %478
    i32 129, label %541
    i32 131, label %620
  ]

45:                                               ; preds = %43
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %13, align 1
  %50 = load i8, i8* %13, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %51, 128
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i8, i8* %13, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %11, align 8
  br label %347

58:                                               ; preds = %45
  %59 = load i8, i8* %13, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp slt i32 %60, 194
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @MB_FAILURE(i64 %63, i32 1)
  br label %346

65:                                               ; preds = %58
  %66 = load i8, i8* %13, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp slt i32 %67, 224
  br i1 %68, label %69, label %117

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @CHECK_LEN(i64 %70, i32 2)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @MB_FAILURE(i64 %74, i32 1)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @utf8_trail(i8 zeroext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %76
  %85 = load i64, i64* %11, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, 1
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @utf8_lead(i8 zeroext %90)
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 2
  %95 = call i32 @MB_FAILURE(i64 %85, i32 %94)
  br label %96

96:                                               ; preds = %84, %76
  %97 = load i8, i8* %13, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 31
  %100 = shl i32 %99, 6
  %101 = load i8*, i8** %7, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 63
  %108 = or i32 %100, %107
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ult i32 %109, 128
  br i1 %110, label %111, label %114

111:                                              ; preds = %96
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @MB_FAILURE(i64 %112, i32 2)
  br label %114

114:                                              ; preds = %111, %96
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 2
  store i64 %116, i64* %11, align 8
  br label %345

117:                                              ; preds = %65
  %118 = load i8, i8* %13, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp slt i32 %119, 240
  br i1 %120, label %121, label %216

121:                                              ; preds = %117
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %11, align 8
  %124 = sub i64 %122, %123
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %14, align 8
  %126 = icmp ult i64 %125, 3
  br i1 %126, label %143, label %127

127:                                              ; preds = %121
  %128 = load i8*, i8** %7, align 8
  %129 = load i64, i64* %11, align 8
  %130 = add i64 %129, 1
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @utf8_trail(i8 zeroext %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load i8*, i8** %7, align 8
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %137, 2
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @utf8_trail(i8 zeroext %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %176, label %143

143:                                              ; preds = %135, %127, %121
  %144 = load i64, i64* %14, align 8
  %145 = icmp ult i64 %144, 2
  br i1 %145, label %154, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %7, align 8
  %148 = load i64, i64* %11, align 8
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = call i32 @utf8_lead(i8 zeroext %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %146, %143
  %155 = load i64, i64* %11, align 8
  %156 = call i32 @MB_FAILURE(i64 %155, i32 1)
  br label %175

157:                                              ; preds = %146
  %158 = load i64, i64* %14, align 8
  %159 = icmp ult i64 %158, 3
  br i1 %159, label %168, label %160

160:                                              ; preds = %157
  %161 = load i8*, i8** %7, align 8
  %162 = load i64, i64* %11, align 8
  %163 = add i64 %162, 2
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = call i32 @utf8_lead(i8 zeroext %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160, %157
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @MB_FAILURE(i64 %169, i32 2)
  br label %174

171:                                              ; preds = %160
  %172 = load i64, i64* %11, align 8
  %173 = call i32 @MB_FAILURE(i64 %172, i32 3)
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %154
  br label %176

176:                                              ; preds = %175, %135
  %177 = load i8, i8* %13, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %178, 15
  %180 = shl i32 %179, 12
  %181 = load i8*, i8** %7, align 8
  %182 = load i64, i64* %11, align 8
  %183 = add i64 %182, 1
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = and i32 %186, 63
  %188 = shl i32 %187, 6
  %189 = or i32 %180, %188
  %190 = load i8*, i8** %7, align 8
  %191 = load i64, i64* %11, align 8
  %192 = add i64 %191, 2
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 63
  %197 = or i32 %189, %196
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp ult i32 %198, 2048
  br i1 %199, label %200, label %203

200:                                              ; preds = %176
  %201 = load i64, i64* %11, align 8
  %202 = call i32 @MB_FAILURE(i64 %201, i32 3)
  br label %213

203:                                              ; preds = %176
  %204 = load i32, i32* %12, align 4
  %205 = icmp uge i32 %204, 55296
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load i32, i32* %12, align 4
  %208 = icmp ule i32 %207, 57343
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i64, i64* %11, align 8
  %211 = call i32 @MB_FAILURE(i64 %210, i32 3)
  br label %212

212:                                              ; preds = %209, %206, %203
  br label %213

213:                                              ; preds = %212, %200
  %214 = load i64, i64* %11, align 8
  %215 = add i64 %214, 3
  store i64 %215, i64* %11, align 8
  br label %344

216:                                              ; preds = %117
  %217 = load i8, i8* %13, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp slt i32 %218, 245
  br i1 %219, label %220, label %340

220:                                              ; preds = %216
  %221 = load i64, i64* %8, align 8
  %222 = load i64, i64* %11, align 8
  %223 = sub i64 %221, %222
  store i64 %223, i64* %15, align 8
  %224 = load i64, i64* %15, align 8
  %225 = icmp ult i64 %224, 4
  br i1 %225, label %250, label %226

226:                                              ; preds = %220
  %227 = load i8*, i8** %7, align 8
  %228 = load i64, i64* %11, align 8
  %229 = add i64 %228, 1
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = call i32 @utf8_trail(i8 zeroext %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %250

234:                                              ; preds = %226
  %235 = load i8*, i8** %7, align 8
  %236 = load i64, i64* %11, align 8
  %237 = add i64 %236, 2
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = call i32 @utf8_trail(i8 zeroext %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %234
  %243 = load i8*, i8** %7, align 8
  %244 = load i64, i64* %11, align 8
  %245 = add i64 %244, 3
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = call i32 @utf8_trail(i8 zeroext %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %298, label %250

250:                                              ; preds = %242, %234, %226, %220
  %251 = load i64, i64* %15, align 8
  %252 = icmp ult i64 %251, 2
  br i1 %252, label %261, label %253

253:                                              ; preds = %250
  %254 = load i8*, i8** %7, align 8
  %255 = load i64, i64* %11, align 8
  %256 = add i64 %255, 1
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = call i32 @utf8_lead(i8 zeroext %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %253, %250
  %262 = load i64, i64* %11, align 8
  %263 = call i32 @MB_FAILURE(i64 %262, i32 1)
  br label %297

264:                                              ; preds = %253
  %265 = load i64, i64* %15, align 8
  %266 = icmp ult i64 %265, 3
  br i1 %266, label %275, label %267

267:                                              ; preds = %264
  %268 = load i8*, i8** %7, align 8
  %269 = load i64, i64* %11, align 8
  %270 = add i64 %269, 2
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = call i32 @utf8_lead(i8 zeroext %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %267, %264
  %276 = load i64, i64* %11, align 8
  %277 = call i32 @MB_FAILURE(i64 %276, i32 2)
  br label %296

278:                                              ; preds = %267
  %279 = load i64, i64* %15, align 8
  %280 = icmp ult i64 %279, 4
  br i1 %280, label %289, label %281

281:                                              ; preds = %278
  %282 = load i8*, i8** %7, align 8
  %283 = load i64, i64* %11, align 8
  %284 = add i64 %283, 3
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = call i32 @utf8_lead(i8 zeroext %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %281, %278
  %290 = load i64, i64* %11, align 8
  %291 = call i32 @MB_FAILURE(i64 %290, i32 3)
  br label %295

292:                                              ; preds = %281
  %293 = load i64, i64* %11, align 8
  %294 = call i32 @MB_FAILURE(i64 %293, i32 4)
  br label %295

295:                                              ; preds = %292, %289
  br label %296

296:                                              ; preds = %295, %275
  br label %297

297:                                              ; preds = %296, %261
  br label %298

298:                                              ; preds = %297, %242
  %299 = load i8, i8* %13, align 1
  %300 = zext i8 %299 to i32
  %301 = and i32 %300, 7
  %302 = shl i32 %301, 18
  %303 = load i8*, i8** %7, align 8
  %304 = load i64, i64* %11, align 8
  %305 = add i64 %304, 1
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = and i32 %308, 63
  %310 = shl i32 %309, 12
  %311 = or i32 %302, %310
  %312 = load i8*, i8** %7, align 8
  %313 = load i64, i64* %11, align 8
  %314 = add i64 %313, 2
  %315 = getelementptr inbounds i8, i8* %312, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = and i32 %317, 63
  %319 = shl i32 %318, 6
  %320 = or i32 %311, %319
  %321 = load i8*, i8** %7, align 8
  %322 = load i64, i64* %11, align 8
  %323 = add i64 %322, 3
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i32
  %327 = and i32 %326, 63
  %328 = or i32 %320, %327
  store i32 %328, i32* %12, align 4
  %329 = load i32, i32* %12, align 4
  %330 = icmp ult i32 %329, 65536
  br i1 %330, label %334, label %331

331:                                              ; preds = %298
  %332 = load i32, i32* %12, align 4
  %333 = icmp ugt i32 %332, 1114111
  br i1 %333, label %334, label %337

334:                                              ; preds = %331, %298
  %335 = load i64, i64* %11, align 8
  %336 = call i32 @MB_FAILURE(i64 %335, i32 4)
  br label %337

337:                                              ; preds = %334, %331
  %338 = load i64, i64* %11, align 8
  %339 = add i64 %338, 4
  store i64 %339, i64* %11, align 8
  br label %343

340:                                              ; preds = %216
  %341 = load i64, i64* %11, align 8
  %342 = call i32 @MB_FAILURE(i64 %341, i32 1)
  br label %343

343:                                              ; preds = %340, %337
  br label %344

344:                                              ; preds = %343, %213
  br label %345

345:                                              ; preds = %344, %114
  br label %346

346:                                              ; preds = %345, %62
  br label %347

347:                                              ; preds = %346, %53
  br label %856

348:                                              ; preds = %43
  %349 = load i8*, i8** %7, align 8
  %350 = load i64, i64* %11, align 8
  %351 = getelementptr inbounds i8, i8* %349, i64 %350
  %352 = load i8, i8* %351, align 1
  store i8 %352, i8* %16, align 1
  %353 = load i8, i8* %16, align 1
  %354 = zext i8 %353 to i32
  %355 = icmp sge i32 %354, 129
  br i1 %355, label %356, label %401

356:                                              ; preds = %348
  %357 = load i8, i8* %16, align 1
  %358 = zext i8 %357 to i32
  %359 = icmp sle i32 %358, 254
  br i1 %359, label %360, label %401

360:                                              ; preds = %356
  %361 = load i64, i64* %11, align 8
  %362 = call i32 @CHECK_LEN(i64 %361, i32 2)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %360
  %365 = load i64, i64* %11, align 8
  %366 = call i32 @MB_FAILURE(i64 %365, i32 1)
  br label %367

367:                                              ; preds = %364, %360
  %368 = load i8*, i8** %7, align 8
  %369 = load i64, i64* %11, align 8
  %370 = add i64 %369, 1
  %371 = getelementptr inbounds i8, i8* %368, i64 %370
  %372 = load i8, i8* %371, align 1
  store i8 %372, i8* %17, align 1
  %373 = load i8, i8* %17, align 1
  %374 = zext i8 %373 to i32
  %375 = icmp sge i32 %374, 64
  br i1 %375, label %376, label %380

376:                                              ; preds = %367
  %377 = load i8, i8* %17, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp sle i32 %378, 126
  br i1 %379, label %388, label %380

380:                                              ; preds = %376, %367
  %381 = load i8, i8* %17, align 1
  %382 = zext i8 %381 to i32
  %383 = icmp sge i32 %382, 161
  br i1 %383, label %384, label %395

384:                                              ; preds = %380
  %385 = load i8, i8* %17, align 1
  %386 = zext i8 %385 to i32
  %387 = icmp sle i32 %386, 254
  br i1 %387, label %388, label %395

388:                                              ; preds = %384, %376
  %389 = load i8, i8* %16, align 1
  %390 = zext i8 %389 to i32
  %391 = shl i32 %390, 8
  %392 = load i8, i8* %17, align 1
  %393 = zext i8 %392 to i32
  %394 = or i32 %391, %393
  store i32 %394, i32* %12, align 4
  br label %398

395:                                              ; preds = %384, %380
  %396 = load i64, i64* %11, align 8
  %397 = call i32 @MB_FAILURE(i64 %396, i32 1)
  br label %398

398:                                              ; preds = %395, %388
  %399 = load i64, i64* %11, align 8
  %400 = add i64 %399, 2
  store i64 %400, i64* %11, align 8
  br label %406

401:                                              ; preds = %356, %348
  %402 = load i8, i8* %16, align 1
  %403 = zext i8 %402 to i32
  store i32 %403, i32* %12, align 4
  %404 = load i64, i64* %11, align 8
  %405 = add i64 %404, 1
  store i64 %405, i64* %11, align 8
  br label %406

406:                                              ; preds = %401, %398
  br label %856

407:                                              ; preds = %43
  %408 = load i8*, i8** %7, align 8
  %409 = load i64, i64* %11, align 8
  %410 = getelementptr inbounds i8, i8* %408, i64 %409
  %411 = load i8, i8* %410, align 1
  store i8 %411, i8* %18, align 1
  %412 = load i8, i8* %18, align 1
  %413 = zext i8 %412 to i32
  %414 = icmp sge i32 %413, 129
  br i1 %414, label %415, label %472

415:                                              ; preds = %407
  %416 = load i8, i8* %18, align 1
  %417 = zext i8 %416 to i32
  %418 = icmp sle i32 %417, 254
  br i1 %418, label %419, label %472

419:                                              ; preds = %415
  %420 = load i64, i64* %11, align 8
  %421 = call i32 @CHECK_LEN(i64 %420, i32 2)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %426, label %423

423:                                              ; preds = %419
  %424 = load i64, i64* %11, align 8
  %425 = call i32 @MB_FAILURE(i64 %424, i32 1)
  br label %426

426:                                              ; preds = %423, %419
  %427 = load i8*, i8** %7, align 8
  %428 = load i64, i64* %11, align 8
  %429 = add i64 %428, 1
  %430 = getelementptr inbounds i8, i8* %427, i64 %429
  %431 = load i8, i8* %430, align 1
  store i8 %431, i8* %19, align 1
  %432 = load i8, i8* %19, align 1
  %433 = zext i8 %432 to i32
  %434 = icmp sge i32 %433, 64
  br i1 %434, label %435, label %439

435:                                              ; preds = %426
  %436 = load i8, i8* %19, align 1
  %437 = zext i8 %436 to i32
  %438 = icmp sle i32 %437, 126
  br i1 %438, label %447, label %439

439:                                              ; preds = %435, %426
  %440 = load i8, i8* %19, align 1
  %441 = zext i8 %440 to i32
  %442 = icmp sge i32 %441, 161
  br i1 %442, label %443, label %454

443:                                              ; preds = %439
  %444 = load i8, i8* %19, align 1
  %445 = zext i8 %444 to i32
  %446 = icmp sle i32 %445, 254
  br i1 %446, label %447, label %454

447:                                              ; preds = %443, %435
  %448 = load i8, i8* %18, align 1
  %449 = zext i8 %448 to i32
  %450 = shl i32 %449, 8
  %451 = load i8, i8* %19, align 1
  %452 = zext i8 %451 to i32
  %453 = or i32 %450, %452
  store i32 %453, i32* %12, align 4
  br label %469

454:                                              ; preds = %443, %439
  %455 = load i8, i8* %19, align 1
  %456 = zext i8 %455 to i32
  %457 = icmp ne i32 %456, 128
  br i1 %457, label %458, label %465

458:                                              ; preds = %454
  %459 = load i8, i8* %19, align 1
  %460 = zext i8 %459 to i32
  %461 = icmp ne i32 %460, 255
  br i1 %461, label %462, label %465

462:                                              ; preds = %458
  %463 = load i64, i64* %11, align 8
  %464 = call i32 @MB_FAILURE(i64 %463, i32 1)
  br label %468

465:                                              ; preds = %458, %454
  %466 = load i64, i64* %11, align 8
  %467 = call i32 @MB_FAILURE(i64 %466, i32 2)
  br label %468

468:                                              ; preds = %465, %462
  br label %469

469:                                              ; preds = %468, %447
  %470 = load i64, i64* %11, align 8
  %471 = add i64 %470, 2
  store i64 %471, i64* %11, align 8
  br label %477

472:                                              ; preds = %415, %407
  %473 = load i8, i8* %18, align 1
  %474 = zext i8 %473 to i32
  store i32 %474, i32* %12, align 4
  %475 = load i64, i64* %11, align 8
  %476 = add i64 %475, 1
  store i64 %476, i64* %11, align 8
  br label %477

477:                                              ; preds = %472, %469
  br label %856

478:                                              ; preds = %43
  %479 = load i8*, i8** %7, align 8
  %480 = load i64, i64* %11, align 8
  %481 = getelementptr inbounds i8, i8* %479, i64 %480
  %482 = load i8, i8* %481, align 1
  store i8 %482, i8* %20, align 1
  %483 = load i8, i8* %20, align 1
  %484 = zext i8 %483 to i32
  %485 = icmp sge i32 %484, 161
  br i1 %485, label %486, label %527

486:                                              ; preds = %478
  %487 = load i8, i8* %20, align 1
  %488 = zext i8 %487 to i32
  %489 = icmp sle i32 %488, 254
  br i1 %489, label %490, label %527

490:                                              ; preds = %486
  %491 = load i64, i64* %11, align 8
  %492 = call i32 @CHECK_LEN(i64 %491, i32 2)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %490
  %495 = load i64, i64* %11, align 8
  %496 = call i32 @MB_FAILURE(i64 %495, i32 1)
  br label %497

497:                                              ; preds = %494, %490
  %498 = load i8*, i8** %7, align 8
  %499 = load i64, i64* %11, align 8
  %500 = add i64 %499, 1
  %501 = getelementptr inbounds i8, i8* %498, i64 %500
  %502 = load i8, i8* %501, align 1
  store i8 %502, i8* %21, align 1
  %503 = load i8, i8* %21, align 1
  %504 = call i32 @gb2312_trail(i8 zeroext %503)
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %513

506:                                              ; preds = %497
  %507 = load i8, i8* %20, align 1
  %508 = zext i8 %507 to i32
  %509 = shl i32 %508, 8
  %510 = load i8, i8* %21, align 1
  %511 = zext i8 %510 to i32
  %512 = or i32 %509, %511
  store i32 %512, i32* %12, align 4
  br label %524

513:                                              ; preds = %497
  %514 = load i8, i8* %21, align 1
  %515 = call i32 @gb2312_lead(i8 zeroext %514)
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %513
  %518 = load i64, i64* %11, align 8
  %519 = call i32 @MB_FAILURE(i64 %518, i32 1)
  br label %523

520:                                              ; preds = %513
  %521 = load i64, i64* %11, align 8
  %522 = call i32 @MB_FAILURE(i64 %521, i32 2)
  br label %523

523:                                              ; preds = %520, %517
  br label %524

524:                                              ; preds = %523, %506
  %525 = load i64, i64* %11, align 8
  %526 = add i64 %525, 2
  store i64 %526, i64* %11, align 8
  br label %540

527:                                              ; preds = %486, %478
  %528 = load i8, i8* %20, align 1
  %529 = call i32 @gb2312_lead(i8 zeroext %528)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %536

531:                                              ; preds = %527
  %532 = load i8, i8* %20, align 1
  %533 = zext i8 %532 to i32
  store i32 %533, i32* %12, align 4
  %534 = load i64, i64* %11, align 8
  %535 = add i64 %534, 1
  store i64 %535, i64* %11, align 8
  br label %539

536:                                              ; preds = %527
  %537 = load i64, i64* %11, align 8
  %538 = call i32 @MB_FAILURE(i64 %537, i32 1)
  br label %539

539:                                              ; preds = %536, %531
  br label %540

540:                                              ; preds = %539, %524
  br label %856

541:                                              ; preds = %43
  %542 = load i8*, i8** %7, align 8
  %543 = load i64, i64* %11, align 8
  %544 = getelementptr inbounds i8, i8* %542, i64 %543
  %545 = load i8, i8* %544, align 1
  store i8 %545, i8* %22, align 1
  %546 = load i8, i8* %22, align 1
  %547 = zext i8 %546 to i32
  %548 = icmp sge i32 %547, 129
  br i1 %548, label %549, label %553

549:                                              ; preds = %541
  %550 = load i8, i8* %22, align 1
  %551 = zext i8 %550 to i32
  %552 = icmp sle i32 %551, 159
  br i1 %552, label %561, label %553

553:                                              ; preds = %549, %541
  %554 = load i8, i8* %22, align 1
  %555 = zext i8 %554 to i32
  %556 = icmp sge i32 %555, 224
  br i1 %556, label %557, label %598

557:                                              ; preds = %553
  %558 = load i8, i8* %22, align 1
  %559 = zext i8 %558 to i32
  %560 = icmp sle i32 %559, 252
  br i1 %560, label %561, label %598

561:                                              ; preds = %557, %549
  %562 = load i64, i64* %11, align 8
  %563 = call i32 @CHECK_LEN(i64 %562, i32 2)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %568, label %565

565:                                              ; preds = %561
  %566 = load i64, i64* %11, align 8
  %567 = call i32 @MB_FAILURE(i64 %566, i32 1)
  br label %568

568:                                              ; preds = %565, %561
  %569 = load i8*, i8** %7, align 8
  %570 = load i64, i64* %11, align 8
  %571 = add i64 %570, 1
  %572 = getelementptr inbounds i8, i8* %569, i64 %571
  %573 = load i8, i8* %572, align 1
  store i8 %573, i8* %23, align 1
  %574 = load i8, i8* %23, align 1
  %575 = call i32 @sjis_trail(i8 zeroext %574)
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %584

577:                                              ; preds = %568
  %578 = load i8, i8* %22, align 1
  %579 = zext i8 %578 to i32
  %580 = shl i32 %579, 8
  %581 = load i8, i8* %23, align 1
  %582 = zext i8 %581 to i32
  %583 = or i32 %580, %582
  store i32 %583, i32* %12, align 4
  br label %595

584:                                              ; preds = %568
  %585 = load i8, i8* %23, align 1
  %586 = call i32 @sjis_lead(i8 zeroext %585)
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %591

588:                                              ; preds = %584
  %589 = load i64, i64* %11, align 8
  %590 = call i32 @MB_FAILURE(i64 %589, i32 1)
  br label %594

591:                                              ; preds = %584
  %592 = load i64, i64* %11, align 8
  %593 = call i32 @MB_FAILURE(i64 %592, i32 2)
  br label %594

594:                                              ; preds = %591, %588
  br label %595

595:                                              ; preds = %594, %577
  %596 = load i64, i64* %11, align 8
  %597 = add i64 %596, 2
  store i64 %597, i64* %11, align 8
  br label %619

598:                                              ; preds = %557, %553
  %599 = load i8, i8* %22, align 1
  %600 = zext i8 %599 to i32
  %601 = icmp slt i32 %600, 128
  br i1 %601, label %610, label %602

602:                                              ; preds = %598
  %603 = load i8, i8* %22, align 1
  %604 = zext i8 %603 to i32
  %605 = icmp sge i32 %604, 161
  br i1 %605, label %606, label %615

606:                                              ; preds = %602
  %607 = load i8, i8* %22, align 1
  %608 = zext i8 %607 to i32
  %609 = icmp sle i32 %608, 223
  br i1 %609, label %610, label %615

610:                                              ; preds = %606, %598
  %611 = load i8, i8* %22, align 1
  %612 = zext i8 %611 to i32
  store i32 %612, i32* %12, align 4
  %613 = load i64, i64* %11, align 8
  %614 = add i64 %613, 1
  store i64 %614, i64* %11, align 8
  br label %618

615:                                              ; preds = %606, %602
  %616 = load i64, i64* %11, align 8
  %617 = call i32 @MB_FAILURE(i64 %616, i32 1)
  br label %618

618:                                              ; preds = %615, %610
  br label %619

619:                                              ; preds = %618, %595
  br label %856

620:                                              ; preds = %43
  %621 = load i8*, i8** %7, align 8
  %622 = load i64, i64* %11, align 8
  %623 = getelementptr inbounds i8, i8* %621, i64 %622
  %624 = load i8, i8* %623, align 1
  store i8 %624, i8* %24, align 1
  %625 = load i8, i8* %24, align 1
  %626 = zext i8 %625 to i32
  %627 = icmp sge i32 %626, 161
  br i1 %627, label %628, label %672

628:                                              ; preds = %620
  %629 = load i8, i8* %24, align 1
  %630 = zext i8 %629 to i32
  %631 = icmp sle i32 %630, 254
  br i1 %631, label %632, label %672

632:                                              ; preds = %628
  %633 = load i64, i64* %11, align 8
  %634 = call i32 @CHECK_LEN(i64 %633, i32 2)
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %639, label %636

636:                                              ; preds = %632
  %637 = load i64, i64* %11, align 8
  %638 = call i32 @MB_FAILURE(i64 %637, i32 1)
  br label %639

639:                                              ; preds = %636, %632
  %640 = load i8*, i8** %7, align 8
  %641 = load i64, i64* %11, align 8
  %642 = add i64 %641, 1
  %643 = getelementptr inbounds i8, i8* %640, i64 %642
  %644 = load i8, i8* %643, align 1
  %645 = zext i8 %644 to i32
  store i32 %645, i32* %25, align 4
  %646 = load i32, i32* %25, align 4
  %647 = icmp uge i32 %646, 161
  br i1 %647, label %648, label %657

648:                                              ; preds = %639
  %649 = load i32, i32* %25, align 4
  %650 = icmp ule i32 %649, 254
  br i1 %650, label %651, label %657

651:                                              ; preds = %648
  %652 = load i8, i8* %24, align 1
  %653 = zext i8 %652 to i32
  %654 = shl i32 %653, 8
  %655 = load i32, i32* %25, align 4
  %656 = or i32 %654, %655
  store i32 %656, i32* %12, align 4
  br label %669

657:                                              ; preds = %648, %639
  %658 = load i64, i64* %11, align 8
  %659 = load i32, i32* %25, align 4
  %660 = icmp ne i32 %659, 160
  br i1 %660, label %661, label %664

661:                                              ; preds = %657
  %662 = load i32, i32* %25, align 4
  %663 = icmp ne i32 %662, 255
  br label %664

664:                                              ; preds = %661, %657
  %665 = phi i1 [ false, %657 ], [ %663, %661 ]
  %666 = zext i1 %665 to i64
  %667 = select i1 %665, i32 1, i32 2
  %668 = call i32 @MB_FAILURE(i64 %658, i32 %667)
  br label %669

669:                                              ; preds = %664, %651
  %670 = load i64, i64* %11, align 8
  %671 = add i64 %670, 2
  store i64 %671, i64* %11, align 8
  br label %848

672:                                              ; preds = %628, %620
  %673 = load i8, i8* %24, align 1
  %674 = zext i8 %673 to i32
  %675 = icmp eq i32 %674, 142
  br i1 %675, label %676, label %716

676:                                              ; preds = %672
  %677 = load i64, i64* %11, align 8
  %678 = call i32 @CHECK_LEN(i64 %677, i32 2)
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %683, label %680

680:                                              ; preds = %676
  %681 = load i64, i64* %11, align 8
  %682 = call i32 @MB_FAILURE(i64 %681, i32 1)
  br label %683

683:                                              ; preds = %680, %676
  %684 = load i8*, i8** %7, align 8
  %685 = load i64, i64* %11, align 8
  %686 = add i64 %685, 1
  %687 = getelementptr inbounds i8, i8* %684, i64 %686
  %688 = load i8, i8* %687, align 1
  %689 = zext i8 %688 to i32
  store i32 %689, i32* %26, align 4
  %690 = load i32, i32* %26, align 4
  %691 = icmp uge i32 %690, 161
  br i1 %691, label %692, label %701

692:                                              ; preds = %683
  %693 = load i32, i32* %26, align 4
  %694 = icmp ule i32 %693, 223
  br i1 %694, label %695, label %701

695:                                              ; preds = %692
  %696 = load i8, i8* %24, align 1
  %697 = zext i8 %696 to i32
  %698 = shl i32 %697, 8
  %699 = load i32, i32* %26, align 4
  %700 = or i32 %698, %699
  store i32 %700, i32* %12, align 4
  br label %713

701:                                              ; preds = %692, %683
  %702 = load i64, i64* %11, align 8
  %703 = load i32, i32* %26, align 4
  %704 = icmp ne i32 %703, 160
  br i1 %704, label %705, label %708

705:                                              ; preds = %701
  %706 = load i32, i32* %26, align 4
  %707 = icmp ne i32 %706, 255
  br label %708

708:                                              ; preds = %705, %701
  %709 = phi i1 [ false, %701 ], [ %707, %705 ]
  %710 = zext i1 %709 to i64
  %711 = select i1 %709, i32 1, i32 2
  %712 = call i32 @MB_FAILURE(i64 %702, i32 %711)
  br label %713

713:                                              ; preds = %708, %695
  %714 = load i64, i64* %11, align 8
  %715 = add i64 %714, 2
  store i64 %715, i64* %11, align 8
  br label %847

716:                                              ; preds = %672
  %717 = load i8, i8* %24, align 1
  %718 = zext i8 %717 to i32
  %719 = icmp eq i32 %718, 143
  br i1 %719, label %720, label %829

720:                                              ; preds = %716
  %721 = load i64, i64* %8, align 8
  %722 = load i64, i64* %11, align 8
  %723 = sub i64 %721, %722
  store i64 %723, i64* %27, align 8
  %724 = load i64, i64* %27, align 8
  %725 = icmp ult i64 %724, 3
  br i1 %725, label %758, label %726

726:                                              ; preds = %720
  %727 = load i8*, i8** %7, align 8
  %728 = load i64, i64* %11, align 8
  %729 = add i64 %728, 1
  %730 = getelementptr inbounds i8, i8* %727, i64 %729
  %731 = load i8, i8* %730, align 1
  %732 = zext i8 %731 to i32
  %733 = icmp sge i32 %732, 161
  br i1 %733, label %734, label %758

734:                                              ; preds = %726
  %735 = load i8*, i8** %7, align 8
  %736 = load i64, i64* %11, align 8
  %737 = add i64 %736, 1
  %738 = getelementptr inbounds i8, i8* %735, i64 %737
  %739 = load i8, i8* %738, align 1
  %740 = zext i8 %739 to i32
  %741 = icmp sle i32 %740, 254
  br i1 %741, label %742, label %758

742:                                              ; preds = %734
  %743 = load i8*, i8** %7, align 8
  %744 = load i64, i64* %11, align 8
  %745 = add i64 %744, 2
  %746 = getelementptr inbounds i8, i8* %743, i64 %745
  %747 = load i8, i8* %746, align 1
  %748 = zext i8 %747 to i32
  %749 = icmp sge i32 %748, 161
  br i1 %749, label %750, label %758

750:                                              ; preds = %742
  %751 = load i8*, i8** %7, align 8
  %752 = load i64, i64* %11, align 8
  %753 = add i64 %752, 2
  %754 = getelementptr inbounds i8, i8* %751, i64 %753
  %755 = load i8, i8* %754, align 1
  %756 = zext i8 %755 to i32
  %757 = icmp sle i32 %756, 254
  br i1 %757, label %807, label %758

758:                                              ; preds = %750, %742, %734, %726, %720
  %759 = load i64, i64* %27, align 8
  %760 = icmp ult i64 %759, 2
  br i1 %760, label %777, label %761

761:                                              ; preds = %758
  %762 = load i8*, i8** %7, align 8
  %763 = load i64, i64* %11, align 8
  %764 = add i64 %763, 1
  %765 = getelementptr inbounds i8, i8* %762, i64 %764
  %766 = load i8, i8* %765, align 1
  %767 = zext i8 %766 to i32
  %768 = icmp ne i32 %767, 160
  br i1 %768, label %769, label %780

769:                                              ; preds = %761
  %770 = load i8*, i8** %7, align 8
  %771 = load i64, i64* %11, align 8
  %772 = add i64 %771, 1
  %773 = getelementptr inbounds i8, i8* %770, i64 %772
  %774 = load i8, i8* %773, align 1
  %775 = zext i8 %774 to i32
  %776 = icmp ne i32 %775, 255
  br i1 %776, label %777, label %780

777:                                              ; preds = %769, %758
  %778 = load i64, i64* %11, align 8
  %779 = call i32 @MB_FAILURE(i64 %778, i32 1)
  br label %806

780:                                              ; preds = %769, %761
  %781 = load i64, i64* %27, align 8
  %782 = icmp ult i64 %781, 3
  br i1 %782, label %799, label %783

783:                                              ; preds = %780
  %784 = load i8*, i8** %7, align 8
  %785 = load i64, i64* %11, align 8
  %786 = add i64 %785, 2
  %787 = getelementptr inbounds i8, i8* %784, i64 %786
  %788 = load i8, i8* %787, align 1
  %789 = zext i8 %788 to i32
  %790 = icmp ne i32 %789, 160
  br i1 %790, label %791, label %802

791:                                              ; preds = %783
  %792 = load i8*, i8** %7, align 8
  %793 = load i64, i64* %11, align 8
  %794 = add i64 %793, 2
  %795 = getelementptr inbounds i8, i8* %792, i64 %794
  %796 = load i8, i8* %795, align 1
  %797 = zext i8 %796 to i32
  %798 = icmp ne i32 %797, 255
  br i1 %798, label %799, label %802

799:                                              ; preds = %791, %780
  %800 = load i64, i64* %11, align 8
  %801 = call i32 @MB_FAILURE(i64 %800, i32 2)
  br label %805

802:                                              ; preds = %791, %783
  %803 = load i64, i64* %11, align 8
  %804 = call i32 @MB_FAILURE(i64 %803, i32 3)
  br label %805

805:                                              ; preds = %802, %799
  br label %806

806:                                              ; preds = %805, %777
  br label %826

807:                                              ; preds = %750
  %808 = load i8, i8* %24, align 1
  %809 = zext i8 %808 to i32
  %810 = shl i32 %809, 16
  %811 = load i8*, i8** %7, align 8
  %812 = load i64, i64* %11, align 8
  %813 = add i64 %812, 1
  %814 = getelementptr inbounds i8, i8* %811, i64 %813
  %815 = load i8, i8* %814, align 1
  %816 = zext i8 %815 to i32
  %817 = shl i32 %816, 8
  %818 = or i32 %810, %817
  %819 = load i8*, i8** %7, align 8
  %820 = load i64, i64* %11, align 8
  %821 = add i64 %820, 2
  %822 = getelementptr inbounds i8, i8* %819, i64 %821
  %823 = load i8, i8* %822, align 1
  %824 = zext i8 %823 to i32
  %825 = or i32 %818, %824
  store i32 %825, i32* %12, align 4
  br label %826

826:                                              ; preds = %807, %806
  %827 = load i64, i64* %11, align 8
  %828 = add i64 %827, 3
  store i64 %828, i64* %11, align 8
  br label %846

829:                                              ; preds = %716
  %830 = load i8, i8* %24, align 1
  %831 = zext i8 %830 to i32
  %832 = icmp ne i32 %831, 160
  br i1 %832, label %833, label %842

833:                                              ; preds = %829
  %834 = load i8, i8* %24, align 1
  %835 = zext i8 %834 to i32
  %836 = icmp ne i32 %835, 255
  br i1 %836, label %837, label %842

837:                                              ; preds = %833
  %838 = load i8, i8* %24, align 1
  %839 = zext i8 %838 to i32
  store i32 %839, i32* %12, align 4
  %840 = load i64, i64* %11, align 8
  %841 = add i64 %840, 1
  store i64 %841, i64* %11, align 8
  br label %845

842:                                              ; preds = %833, %829
  %843 = load i64, i64* %11, align 8
  %844 = call i32 @MB_FAILURE(i64 %843, i32 1)
  br label %845

845:                                              ; preds = %842, %837
  br label %846

846:                                              ; preds = %845, %826
  br label %847

847:                                              ; preds = %846, %713
  br label %848

848:                                              ; preds = %847, %669
  br label %856

849:                                              ; preds = %43
  %850 = load i8*, i8** %7, align 8
  %851 = load i64, i64* %11, align 8
  %852 = add i64 %851, 1
  store i64 %852, i64* %11, align 8
  %853 = getelementptr inbounds i8, i8* %850, i64 %851
  %854 = load i8, i8* %853, align 1
  %855 = zext i8 %854 to i32
  store i32 %855, i32* %12, align 4
  br label %856

856:                                              ; preds = %849, %848, %619, %540, %477, %406, %347
  %857 = load i64, i64* %11, align 8
  %858 = load i64*, i64** %9, align 8
  store i64 %857, i64* %858, align 8
  %859 = load i32, i32* %12, align 4
  ret i32 %859
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CHECK_LEN(i64, i32) #1

declare dso_local i32 @MB_FAILURE(i64, i32) #1

declare dso_local i32 @utf8_trail(i8 zeroext) #1

declare dso_local i32 @utf8_lead(i8 zeroext) #1

declare dso_local i32 @gb2312_trail(i8 zeroext) #1

declare dso_local i32 @gb2312_lead(i8 zeroext) #1

declare dso_local i32 @sjis_trail(i8 zeroext) #1

declare dso_local i32 @sjis_lead(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
