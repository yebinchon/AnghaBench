; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_security.c_expandKey.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_security.c_expandKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sbox = common dso_local global i64* null, align 8
@Rcon = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expandKey(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i64*, i64** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 %15, i64* %19, align 8
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7

23:                                               ; preds = %7
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %401, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 11
  br i1 %26, label %27, label %404

27:                                               ; preds = %24
  %28 = load i64*, i64** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 16
  %31 = sub nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %28, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i64*, i64** @sbox, align 8
  %37 = load i64*, i64** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 16
  %40 = sub nsw i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %36, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = mul nsw i32 %48, 16
  %50 = add nsw i32 %49, 0
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %46, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = xor i64 %45, %53
  %55 = load i64*, i64** @Rcon, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = xor i64 %54, %59
  %61 = load i64*, i64** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 16
  %64 = add nsw i32 %63, 0
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %61, i64 %65
  store i64 %60, i64* %66, align 8
  %67 = load i64*, i64** @sbox, align 8
  %68 = load i64*, i64** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 %69, 16
  %71 = sub nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %68, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %67, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  %80 = mul nsw i32 %79, 16
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %77, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = xor i64 %76, %84
  %86 = load i64*, i64** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = mul nsw i32 %87, 16
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %86, i64 %90
  store i64 %85, i64* %91, align 8
  %92 = load i64*, i64** @sbox, align 8
  %93 = load i64*, i64** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = mul nsw i32 %94, 16
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %93, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i64, i64* %92, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 %103, 1
  %105 = mul nsw i32 %104, 16
  %106 = add nsw i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %102, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = xor i64 %101, %109
  %111 = load i64*, i64** %3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = mul nsw i32 %112, 16
  %114 = add nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  store i64 %110, i64* %116, align 8
  %117 = load i64*, i64** @sbox, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %123, 1
  %125 = mul nsw i32 %124, 16
  %126 = add nsw i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %122, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = xor i64 %121, %129
  %131 = load i64*, i64** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = mul nsw i32 %132, 16
  %134 = add nsw i32 %133, 3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %131, i64 %135
  store i64 %130, i64* %136, align 8
  %137 = load i64*, i64** %3, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sub nsw i32 %138, 1
  %140 = mul nsw i32 %139, 16
  %141 = add nsw i32 %140, 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %137, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = mul nsw i32 %146, 16
  %148 = add nsw i32 %147, 0
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %145, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = xor i64 %144, %151
  %153 = load i64*, i64** %3, align 8
  %154 = load i32, i32* %5, align 4
  %155 = mul nsw i32 %154, 16
  %156 = add nsw i32 %155, 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %153, i64 %157
  store i64 %152, i64* %158, align 8
  %159 = load i64*, i64** %3, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sub nsw i32 %160, 1
  %162 = mul nsw i32 %161, 16
  %163 = add nsw i32 %162, 5
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %159, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %3, align 8
  %168 = load i32, i32* %5, align 4
  %169 = mul nsw i32 %168, 16
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %167, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = xor i64 %166, %173
  %175 = load i64*, i64** %3, align 8
  %176 = load i32, i32* %5, align 4
  %177 = mul nsw i32 %176, 16
  %178 = add nsw i32 %177, 5
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %175, i64 %179
  store i64 %174, i64* %180, align 8
  %181 = load i64*, i64** %3, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sub nsw i32 %182, 1
  %184 = mul nsw i32 %183, 16
  %185 = add nsw i32 %184, 6
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %181, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %3, align 8
  %190 = load i32, i32* %5, align 4
  %191 = mul nsw i32 %190, 16
  %192 = add nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %189, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = xor i64 %188, %195
  %197 = load i64*, i64** %3, align 8
  %198 = load i32, i32* %5, align 4
  %199 = mul nsw i32 %198, 16
  %200 = add nsw i32 %199, 6
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %197, i64 %201
  store i64 %196, i64* %202, align 8
  %203 = load i64*, i64** %3, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sub nsw i32 %204, 1
  %206 = mul nsw i32 %205, 16
  %207 = add nsw i32 %206, 7
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %203, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load i64*, i64** %3, align 8
  %212 = load i32, i32* %5, align 4
  %213 = mul nsw i32 %212, 16
  %214 = add nsw i32 %213, 3
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %211, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = xor i64 %210, %217
  %219 = load i64*, i64** %3, align 8
  %220 = load i32, i32* %5, align 4
  %221 = mul nsw i32 %220, 16
  %222 = add nsw i32 %221, 7
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %219, i64 %223
  store i64 %218, i64* %224, align 8
  %225 = load i64*, i64** %3, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sub nsw i32 %226, 1
  %228 = mul nsw i32 %227, 16
  %229 = add nsw i32 %228, 8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %225, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i64*, i64** %3, align 8
  %234 = load i32, i32* %5, align 4
  %235 = mul nsw i32 %234, 16
  %236 = add nsw i32 %235, 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %233, i64 %237
  %239 = load i64, i64* %238, align 8
  %240 = xor i64 %232, %239
  %241 = load i64*, i64** %3, align 8
  %242 = load i32, i32* %5, align 4
  %243 = mul nsw i32 %242, 16
  %244 = add nsw i32 %243, 8
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %241, i64 %245
  store i64 %240, i64* %246, align 8
  %247 = load i64*, i64** %3, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sub nsw i32 %248, 1
  %250 = mul nsw i32 %249, 16
  %251 = add nsw i32 %250, 9
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %247, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = load i64*, i64** %3, align 8
  %256 = load i32, i32* %5, align 4
  %257 = mul nsw i32 %256, 16
  %258 = add nsw i32 %257, 5
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %255, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = xor i64 %254, %261
  %263 = load i64*, i64** %3, align 8
  %264 = load i32, i32* %5, align 4
  %265 = mul nsw i32 %264, 16
  %266 = add nsw i32 %265, 9
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %263, i64 %267
  store i64 %262, i64* %268, align 8
  %269 = load i64*, i64** %3, align 8
  %270 = load i32, i32* %5, align 4
  %271 = sub nsw i32 %270, 1
  %272 = mul nsw i32 %271, 16
  %273 = add nsw i32 %272, 10
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %269, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = load i64*, i64** %3, align 8
  %278 = load i32, i32* %5, align 4
  %279 = mul nsw i32 %278, 16
  %280 = add nsw i32 %279, 6
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %277, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = xor i64 %276, %283
  %285 = load i64*, i64** %3, align 8
  %286 = load i32, i32* %5, align 4
  %287 = mul nsw i32 %286, 16
  %288 = add nsw i32 %287, 10
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %285, i64 %289
  store i64 %284, i64* %290, align 8
  %291 = load i64*, i64** %3, align 8
  %292 = load i32, i32* %5, align 4
  %293 = sub nsw i32 %292, 1
  %294 = mul nsw i32 %293, 16
  %295 = add nsw i32 %294, 11
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %291, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = load i64*, i64** %3, align 8
  %300 = load i32, i32* %5, align 4
  %301 = mul nsw i32 %300, 16
  %302 = add nsw i32 %301, 7
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %299, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = xor i64 %298, %305
  %307 = load i64*, i64** %3, align 8
  %308 = load i32, i32* %5, align 4
  %309 = mul nsw i32 %308, 16
  %310 = add nsw i32 %309, 11
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %307, i64 %311
  store i64 %306, i64* %312, align 8
  %313 = load i64*, i64** %3, align 8
  %314 = load i32, i32* %5, align 4
  %315 = sub nsw i32 %314, 1
  %316 = mul nsw i32 %315, 16
  %317 = add nsw i32 %316, 12
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i64, i64* %313, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = load i64*, i64** %3, align 8
  %322 = load i32, i32* %5, align 4
  %323 = mul nsw i32 %322, 16
  %324 = add nsw i32 %323, 8
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i64, i64* %321, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = xor i64 %320, %327
  %329 = load i64*, i64** %3, align 8
  %330 = load i32, i32* %5, align 4
  %331 = mul nsw i32 %330, 16
  %332 = add nsw i32 %331, 12
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %329, i64 %333
  store i64 %328, i64* %334, align 8
  %335 = load i64*, i64** %3, align 8
  %336 = load i32, i32* %5, align 4
  %337 = sub nsw i32 %336, 1
  %338 = mul nsw i32 %337, 16
  %339 = add nsw i32 %338, 13
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %335, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = load i64*, i64** %3, align 8
  %344 = load i32, i32* %5, align 4
  %345 = mul nsw i32 %344, 16
  %346 = add nsw i32 %345, 9
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i64, i64* %343, i64 %347
  %349 = load i64, i64* %348, align 8
  %350 = xor i64 %342, %349
  %351 = load i64*, i64** %3, align 8
  %352 = load i32, i32* %5, align 4
  %353 = mul nsw i32 %352, 16
  %354 = add nsw i32 %353, 13
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %351, i64 %355
  store i64 %350, i64* %356, align 8
  %357 = load i64*, i64** %3, align 8
  %358 = load i32, i32* %5, align 4
  %359 = sub nsw i32 %358, 1
  %360 = mul nsw i32 %359, 16
  %361 = add nsw i32 %360, 14
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %357, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = load i64*, i64** %3, align 8
  %366 = load i32, i32* %5, align 4
  %367 = mul nsw i32 %366, 16
  %368 = add nsw i32 %367, 10
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %365, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = xor i64 %364, %371
  %373 = load i64*, i64** %3, align 8
  %374 = load i32, i32* %5, align 4
  %375 = mul nsw i32 %374, 16
  %376 = add nsw i32 %375, 14
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %373, i64 %377
  store i64 %372, i64* %378, align 8
  %379 = load i64*, i64** %3, align 8
  %380 = load i32, i32* %5, align 4
  %381 = sub nsw i32 %380, 1
  %382 = mul nsw i32 %381, 16
  %383 = add nsw i32 %382, 15
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i64, i64* %379, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = load i64*, i64** %3, align 8
  %388 = load i32, i32* %5, align 4
  %389 = mul nsw i32 %388, 16
  %390 = add nsw i32 %389, 11
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i64, i64* %387, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = xor i64 %386, %393
  %395 = load i64*, i64** %3, align 8
  %396 = load i32, i32* %5, align 4
  %397 = mul nsw i32 %396, 16
  %398 = add nsw i32 %397, 15
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %395, i64 %399
  store i64 %394, i64* %400, align 8
  br label %401

401:                                              ; preds = %27
  %402 = load i32, i32* %5, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %5, align 4
  br label %24

404:                                              ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
