; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_cmpBitmap.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_tjunittest.c_cmpBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tjRedOffset = common dso_local global i32* null, align 8
@tjGreenOffset = common dso_local global i32* null, align 8
@tjBlueOffset = common dso_local global i32* null, align 8
@tjAlphaOffset = common dso_local global i32* null, align 8
@tjPixelSize = common dso_local global i32* null, align 8
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@TJPF_GRAY = common dso_local global i32 0, align 4
@TJPF_CMYK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmpBitmap(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %30 = load i32*, i32** @tjRedOffset, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32*, i32** @tjGreenOffset, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %17, align 4
  %40 = load i32*, i32** @tjBlueOffset, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %18, align 4
  %45 = load i32*, i32** @tjAlphaOffset, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %19, align 4
  %50 = load i32*, i32** @tjPixelSize, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %55

55:                                               ; preds = %361, %7
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %364

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %22, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  br label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %22, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi i32 [ %68, %64 ], [ %70, %69 ]
  store i32 %72, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %73

73:                                               ; preds = %357, %71
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %360

77:                                               ; preds = %73
  %78 = load i32, i32* %21, align 4
  %79 = mul nsw i32 %78, 256
  %80 = load i32, i32* %10, align 4
  %81 = sdiv i32 %79, %80
  %82 = srem i32 %81, 256
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %24, align 1
  %84 = load i32, i32* %22, align 4
  %85 = mul nsw i32 %84, 256
  %86 = load i32, i32* %12, align 4
  %87 = sdiv i32 %85, %86
  %88 = srem i32 %87, 256
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %25, align 1
  %90 = load i32, i32* %22, align 4
  %91 = mul nsw i32 %90, 256
  %92 = load i32, i32* %12, align 4
  %93 = sdiv i32 %91, %92
  %94 = load i32, i32* %21, align 4
  %95 = mul nsw i32 %94, 256
  %96 = load i32, i32* %10, align 4
  %97 = sdiv i32 %95, %96
  %98 = add nsw i32 %93, %97
  %99 = srem i32 %98, 256
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %26, align 1
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @TJPF_GRAY, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %77
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %11, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %20, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %105, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* %26, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %365

121:                                              ; preds = %104
  br label %356

122:                                              ; preds = %77
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @TJPF_CMYK, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %219

126:                                              ; preds = %122
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %20, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %130, %133
  %135 = add nsw i32 %134, 0
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %127, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %20, align 4
  %145 = mul nsw i32 %143, %144
  %146 = add nsw i32 %142, %145
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %139, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %20, align 4
  %157 = mul nsw i32 %155, %156
  %158 = add nsw i32 %154, %157
  %159 = add nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %151, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = load i8*, i8** %9, align 8
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* %11, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i32, i32* %21, align 4
  %168 = load i32, i32* %20, align 4
  %169 = mul nsw i32 %167, %168
  %170 = add nsw i32 %166, %169
  %171 = add nsw i32 %170, 3
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %163, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = call i32 @cmyk_to_rgb(i8 zeroext %138, i8 zeroext %150, i8 zeroext %162, i8 zeroext %174, i8* %27, i8* %28, i8* %29)
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %126
  %179 = load i8, i8* %27, align 1
  %180 = zext i8 %179 to i32
  %181 = load i8, i8* %26, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp ne i32 %180, %182
  br i1 %183, label %196, label %184

184:                                              ; preds = %178
  %185 = load i8, i8* %28, align 1
  %186 = zext i8 %185 to i32
  %187 = load i8, i8* %26, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp ne i32 %186, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %184
  %191 = load i8, i8* %29, align 1
  %192 = zext i8 %191 to i32
  %193 = load i8, i8* %26, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %190, %184, %178
  store i32 0, i32* %8, align 4
  br label %365

197:                                              ; preds = %190
  br label %218

198:                                              ; preds = %126
  %199 = load i8, i8* %27, align 1
  %200 = zext i8 %199 to i32
  %201 = load i8, i8* %24, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp ne i32 %200, %202
  br i1 %203, label %216, label %204

204:                                              ; preds = %198
  %205 = load i8, i8* %28, align 1
  %206 = zext i8 %205 to i32
  %207 = load i8, i8* %25, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp ne i32 %206, %208
  br i1 %209, label %216, label %210

210:                                              ; preds = %204
  %211 = load i8, i8* %29, align 1
  %212 = zext i8 %211 to i32
  %213 = load i8, i8* %26, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210, %204, %198
  store i32 0, i32* %8, align 4
  br label %365

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217, %197
  br label %355

219:                                              ; preds = %122
  %220 = load i32, i32* %15, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %278

222:                                              ; preds = %219
  %223 = load i8*, i8** %9, align 8
  %224 = load i32, i32* %23, align 4
  %225 = load i32, i32* %11, align 4
  %226 = mul nsw i32 %224, %225
  %227 = load i32, i32* %21, align 4
  %228 = load i32, i32* %20, align 4
  %229 = mul nsw i32 %227, %228
  %230 = add nsw i32 %226, %229
  %231 = load i32, i32* %16, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %223, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = load i8, i8* %26, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp ne i32 %236, %238
  br i1 %239, label %276, label %240

240:                                              ; preds = %222
  %241 = load i8*, i8** %9, align 8
  %242 = load i32, i32* %23, align 4
  %243 = load i32, i32* %11, align 4
  %244 = mul nsw i32 %242, %243
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* %20, align 4
  %247 = mul nsw i32 %245, %246
  %248 = add nsw i32 %244, %247
  %249 = load i32, i32* %17, align 4
  %250 = add nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %241, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = load i8, i8* %26, align 1
  %256 = zext i8 %255 to i32
  %257 = icmp ne i32 %254, %256
  br i1 %257, label %276, label %258

258:                                              ; preds = %240
  %259 = load i8*, i8** %9, align 8
  %260 = load i32, i32* %23, align 4
  %261 = load i32, i32* %11, align 4
  %262 = mul nsw i32 %260, %261
  %263 = load i32, i32* %21, align 4
  %264 = load i32, i32* %20, align 4
  %265 = mul nsw i32 %263, %264
  %266 = add nsw i32 %262, %265
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %259, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = load i8, i8* %26, align 1
  %274 = zext i8 %273 to i32
  %275 = icmp ne i32 %272, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %258, %240, %222
  store i32 0, i32* %8, align 4
  br label %365

277:                                              ; preds = %258
  br label %334

278:                                              ; preds = %219
  %279 = load i8*, i8** %9, align 8
  %280 = load i32, i32* %23, align 4
  %281 = load i32, i32* %11, align 4
  %282 = mul nsw i32 %280, %281
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* %20, align 4
  %285 = mul nsw i32 %283, %284
  %286 = add nsw i32 %282, %285
  %287 = load i32, i32* %16, align 4
  %288 = add nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %279, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = load i8, i8* %24, align 1
  %294 = zext i8 %293 to i32
  %295 = icmp ne i32 %292, %294
  br i1 %295, label %332, label %296

296:                                              ; preds = %278
  %297 = load i8*, i8** %9, align 8
  %298 = load i32, i32* %23, align 4
  %299 = load i32, i32* %11, align 4
  %300 = mul nsw i32 %298, %299
  %301 = load i32, i32* %21, align 4
  %302 = load i32, i32* %20, align 4
  %303 = mul nsw i32 %301, %302
  %304 = add nsw i32 %300, %303
  %305 = load i32, i32* %17, align 4
  %306 = add nsw i32 %304, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %297, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = load i8, i8* %25, align 1
  %312 = zext i8 %311 to i32
  %313 = icmp ne i32 %310, %312
  br i1 %313, label %332, label %314

314:                                              ; preds = %296
  %315 = load i8*, i8** %9, align 8
  %316 = load i32, i32* %23, align 4
  %317 = load i32, i32* %11, align 4
  %318 = mul nsw i32 %316, %317
  %319 = load i32, i32* %21, align 4
  %320 = load i32, i32* %20, align 4
  %321 = mul nsw i32 %319, %320
  %322 = add nsw i32 %318, %321
  %323 = load i32, i32* %18, align 4
  %324 = add nsw i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %315, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  %329 = load i8, i8* %26, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp ne i32 %328, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %314, %296, %278
  store i32 0, i32* %8, align 4
  br label %365

333:                                              ; preds = %314
  br label %334

334:                                              ; preds = %333, %277
  %335 = load i32, i32* %19, align 4
  %336 = icmp sge i32 %335, 0
  br i1 %336, label %337, label %354

337:                                              ; preds = %334
  %338 = load i8*, i8** %9, align 8
  %339 = load i32, i32* %23, align 4
  %340 = load i32, i32* %11, align 4
  %341 = mul nsw i32 %339, %340
  %342 = load i32, i32* %21, align 4
  %343 = load i32, i32* %20, align 4
  %344 = mul nsw i32 %342, %343
  %345 = add nsw i32 %341, %344
  %346 = load i32, i32* %19, align 4
  %347 = add nsw i32 %345, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %338, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = zext i8 %350 to i32
  %352 = icmp ne i32 %351, 255
  br i1 %352, label %353, label %354

353:                                              ; preds = %337
  store i32 0, i32* %8, align 4
  br label %365

354:                                              ; preds = %337, %334
  br label %355

355:                                              ; preds = %354, %218
  br label %356

356:                                              ; preds = %355, %121
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %21, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %21, align 4
  br label %73

360:                                              ; preds = %73
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %22, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %22, align 4
  br label %55

364:                                              ; preds = %55
  store i32 1, i32* %8, align 4
  br label %365

365:                                              ; preds = %364, %353, %332, %276, %216, %196, %120
  %366 = load i32, i32* %8, align 4
  ret i32 %366
}

declare dso_local i32 @cmyk_to_rgb(i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
