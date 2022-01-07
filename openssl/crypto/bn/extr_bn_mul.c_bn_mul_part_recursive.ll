; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mul.c_bn_mul_part_recursive.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mul.c_bn_mul_part_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_MUL_RECURSIVE_SIZE_NORMAL = common dso_local global i32 0, align 4
@BN_MASK2 = common dso_local global i32 0, align 4
@tn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bn_mul_part_recursive(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %24 = load i32, i32* %11, align 4
  %25 = mul nsw i32 %24, 2
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %39

28:                                               ; preds = %7
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @bn_mul_normal(i32* %29, i32* %30, i32 %33, i32* %34, i32 %37)
  br label %535

39:                                               ; preds = %7
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @bn_cmp_part_words(i32* %40, i32* %44, i32 %45, i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 @bn_cmp_part_words(i32* %53, i32* %54, i32 %55, i32 %58)
  store i32 %59, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %60 = load i32, i32* %18, align 4
  %61 = mul nsw i32 %60, 3
  %62 = load i32, i32* %19, align 4
  %63 = add nsw i32 %61, %62
  switch i32 %63, label %168 [
    i32 -4, label %64
    i32 -3, label %90
    i32 -2, label %90
    i32 -1, label %116
    i32 0, label %116
    i32 1, label %116
    i32 2, label %116
    i32 3, label %142
    i32 4, label %142
  ]

64:                                               ; preds = %39
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @bn_sub_part_words(i32* %65, i32* %69, i32* %70, i32 %71, i32 %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @bn_sub_part_words(i32* %79, i32* %80, i32* %84, i32 %85, i32 %88)
  br label %168

90:                                               ; preds = %39, %39
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %98, %99
  %101 = call i32 @bn_sub_part_words(i32* %91, i32* %95, i32* %96, i32 %97, i32 %100)
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @bn_sub_part_words(i32* %105, i32* %109, i32* %110, i32 %111, i32 %114)
  store i32 1, i32* %20, align 4
  br label %168

116:                                              ; preds = %39, %39, %39, %39
  %117 = load i32*, i32** %14, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i32 @bn_sub_part_words(i32* %117, i32* %118, i32* %122, i32 %123, i32 %126)
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32*, i32** %10, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call i32 @bn_sub_part_words(i32* %131, i32* %132, i32* %136, i32 %137, i32 %140)
  store i32 1, i32* %20, align 4
  br label %168

142:                                              ; preds = %39, %39
  %143 = load i32*, i32** %14, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = sub nsw i32 %150, %151
  %153 = call i32 @bn_sub_part_words(i32* %143, i32* %144, i32* %148, i32 %149, i32 %152)
  %154 = load i32*, i32** %14, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %11, align 4
  %166 = sub nsw i32 %164, %165
  %167 = call i32 @bn_sub_part_words(i32* %157, i32* %161, i32* %162, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %39, %142, %116, %90, %64
  %169 = load i32, i32* %11, align 4
  %170 = icmp eq i32 %169, 8
  br i1 %170, label %171, label %218

171:                                              ; preds = %168
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32*, i32** %14, align 8
  %177 = load i32*, i32** %14, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = call i32 @bn_mul_comba8(i32* %175, i32* %176, i32* %180)
  %182 = load i32*, i32** %8, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = call i32 @bn_mul_comba8(i32* %182, i32* %183, i32* %184)
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %12, align 4
  %195 = load i32*, i32** %10, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @bn_mul_normal(i32* %189, i32* %193, i32 %194, i32* %198, i32 %199)
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %202, %203
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %201, i64 %207
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* %12, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load i32, i32* %13, align 4
  %213 = sub nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = mul i64 4, %214
  %216 = trunc i64 %215 to i32
  %217 = call i32 @memset(i32* %208, i32 0, i32 %216)
  br label %437

218:                                              ; preds = %168
  %219 = load i32*, i32** %14, align 8
  %220 = load i32, i32* %17, align 4
  %221 = mul nsw i32 %220, 2
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32* %223, i32** %23, align 8
  %224 = load i32*, i32** %14, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32*, i32** %14, align 8
  %229 = load i32*, i32** %14, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %11, align 4
  %234 = load i32*, i32** %23, align 8
  %235 = call i32 @bn_mul_recursive(i32* %227, i32* %228, i32* %232, i32 %233, i32 0, i32 0, i32* %234)
  %236 = load i32*, i32** %8, align 8
  %237 = load i32*, i32** %9, align 8
  %238 = load i32*, i32** %10, align 8
  %239 = load i32, i32* %11, align 4
  %240 = load i32*, i32** %23, align 8
  %241 = call i32 @bn_mul_recursive(i32* %236, i32* %237, i32* %238, i32 %239, i32 0, i32 0, i32* %240)
  %242 = load i32, i32* %11, align 4
  %243 = sdiv i32 %242, 2
  store i32 %243, i32* %15, align 4
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* %13, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %218
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* %15, align 4
  %250 = sub nsw i32 %248, %249
  store i32 %250, i32* %16, align 4
  br label %255

251:                                              ; preds = %218
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* %15, align 4
  %254 = sub nsw i32 %252, %253
  store i32 %254, i32* %16, align 4
  br label %255

255:                                              ; preds = %251, %247
  %256 = load i32, i32* %16, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %295

258:                                              ; preds = %255
  %259 = load i32*, i32** %8, align 8
  %260 = load i32, i32* %17, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32*, i32** %9, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32*, i32** %10, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %15, align 4
  %274 = sub nsw i32 %272, %273
  %275 = load i32, i32* %13, align 4
  %276 = load i32, i32* %15, align 4
  %277 = sub nsw i32 %275, %276
  %278 = load i32*, i32** %23, align 8
  %279 = call i32 @bn_mul_recursive(i32* %262, i32* %266, i32* %270, i32 %271, i32 %274, i32 %277, i32* %278)
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %15, align 4
  %283 = mul nsw i32 %282, 2
  %284 = add nsw i32 %281, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %280, i64 %285
  %287 = load i32, i32* %17, align 4
  %288 = load i32, i32* %15, align 4
  %289 = mul nsw i32 %288, 2
  %290 = sub nsw i32 %287, %289
  %291 = sext i32 %290 to i64
  %292 = mul i64 4, %291
  %293 = trunc i64 %292 to i32
  %294 = call i32 @memset(i32* %286, i32 0, i32 %293)
  br label %436

295:                                              ; preds = %255
  %296 = load i32, i32* %16, align 4
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %336

298:                                              ; preds = %295
  %299 = load i32*, i32** %8, align 8
  %300 = load i32, i32* %17, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32*, i32** %9, align 8
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32*, i32** %10, align 8
  %308 = load i32, i32* %11, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %15, align 4
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %15, align 4
  %314 = sub nsw i32 %312, %313
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* %15, align 4
  %317 = sub nsw i32 %315, %316
  %318 = load i32*, i32** %23, align 8
  call void @bn_mul_part_recursive(i32* %302, i32* %306, i32* %310, i32 %311, i32 %314, i32 %317, i32* %318)
  %319 = load i32*, i32** %8, align 8
  %320 = load i32, i32* %17, align 4
  %321 = load i32, i32* %12, align 4
  %322 = add nsw i32 %320, %321
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %319, i64 %325
  %327 = load i32, i32* %17, align 4
  %328 = load i32, i32* %12, align 4
  %329 = sub nsw i32 %327, %328
  %330 = load i32, i32* %13, align 4
  %331 = sub nsw i32 %329, %330
  %332 = sext i32 %331 to i64
  %333 = mul i64 4, %332
  %334 = trunc i64 %333 to i32
  %335 = call i32 @memset(i32* %326, i32 0, i32 %334)
  br label %435

336:                                              ; preds = %295
  %337 = load i32*, i32** %8, align 8
  %338 = load i32, i32* %17, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %17, align 4
  %342 = sext i32 %341 to i64
  %343 = mul i64 4, %342
  %344 = trunc i64 %343 to i32
  %345 = call i32 @memset(i32* %340, i32 0, i32 %344)
  %346 = load i32, i32* %12, align 4
  %347 = load i32, i32* @BN_MUL_RECURSIVE_SIZE_NORMAL, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %369

349:                                              ; preds = %336
  %350 = load i32, i32* %13, align 4
  %351 = load i32, i32* @BN_MUL_RECURSIVE_SIZE_NORMAL, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %369

353:                                              ; preds = %349
  %354 = load i32*, i32** %8, align 8
  %355 = load i32, i32* %17, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32*, i32** %9, align 8
  %359 = load i32, i32* %11, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %12, align 4
  %363 = load i32*, i32** %10, align 8
  %364 = load i32, i32* %11, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %13, align 4
  %368 = call i32 @bn_mul_normal(i32* %357, i32* %361, i32 %362, i32* %366, i32 %367)
  br label %434

369:                                              ; preds = %349, %336
  br label %370

370:                                              ; preds = %432, %369
  %371 = load i32, i32* %15, align 4
  %372 = sdiv i32 %371, 2
  store i32 %372, i32* %15, align 4
  %373 = load i32, i32* %15, align 4
  %374 = load i32, i32* %12, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %380, label %376

376:                                              ; preds = %370
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %13, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %401

380:                                              ; preds = %376, %370
  %381 = load i32*, i32** %8, align 8
  %382 = load i32, i32* %17, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32*, i32** %9, align 8
  %386 = load i32, i32* %11, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32*, i32** %10, align 8
  %390 = load i32, i32* %11, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* %12, align 4
  %395 = load i32, i32* %15, align 4
  %396 = sub nsw i32 %394, %395
  %397 = load i32, i32* %13, align 4
  %398 = load i32, i32* %15, align 4
  %399 = sub nsw i32 %397, %398
  %400 = load i32*, i32** %23, align 8
  call void @bn_mul_part_recursive(i32* %384, i32* %388, i32* %392, i32 %393, i32 %396, i32 %399, i32* %400)
  br label %433

401:                                              ; preds = %376
  %402 = load i32, i32* %15, align 4
  %403 = load i32, i32* %12, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %409, label %405

405:                                              ; preds = %401
  %406 = load i32, i32* %15, align 4
  %407 = load i32, i32* %13, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %431

409:                                              ; preds = %405, %401
  %410 = load i32*, i32** %8, align 8
  %411 = load i32, i32* %17, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32*, i32** %9, align 8
  %415 = load i32, i32* %11, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32*, i32** %10, align 8
  %419 = load i32, i32* %11, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %15, align 4
  %423 = load i32, i32* %12, align 4
  %424 = load i32, i32* %15, align 4
  %425 = sub nsw i32 %423, %424
  %426 = load i32, i32* %13, align 4
  %427 = load i32, i32* %15, align 4
  %428 = sub nsw i32 %426, %427
  %429 = load i32*, i32** %23, align 8
  %430 = call i32 @bn_mul_recursive(i32* %413, i32* %417, i32* %421, i32 %422, i32 %425, i32 %428, i32* %429)
  br label %433

431:                                              ; preds = %405
  br label %432

432:                                              ; preds = %431
  br label %370

433:                                              ; preds = %409, %380
  br label %434

434:                                              ; preds = %433, %353
  br label %435

435:                                              ; preds = %434, %298
  br label %436

436:                                              ; preds = %435, %258
  br label %437

437:                                              ; preds = %436, %171
  %438 = load i32*, i32** %14, align 8
  %439 = load i32*, i32** %8, align 8
  %440 = load i32*, i32** %8, align 8
  %441 = load i32, i32* %17, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %17, align 4
  %445 = call i64 @bn_add_words(i32* %438, i32* %439, i32* %443, i32 %444)
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %18, align 4
  %447 = load i32, i32* %20, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %464

449:                                              ; preds = %437
  %450 = load i32*, i32** %14, align 8
  %451 = load i32, i32* %17, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  %454 = load i32*, i32** %14, align 8
  %455 = load i32*, i32** %14, align 8
  %456 = load i32, i32* %17, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  %459 = load i32, i32* %17, align 4
  %460 = call i64 @bn_sub_words(i32* %453, i32* %454, i32* %458, i32 %459)
  %461 = trunc i64 %460 to i32
  %462 = load i32, i32* %18, align 4
  %463 = sub nsw i32 %462, %461
  store i32 %463, i32* %18, align 4
  br label %479

464:                                              ; preds = %437
  %465 = load i32*, i32** %14, align 8
  %466 = load i32, i32* %17, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32*, i32** %14, align 8
  %470 = load i32, i32* %17, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32*, i32** %14, align 8
  %474 = load i32, i32* %17, align 4
  %475 = call i64 @bn_add_words(i32* %468, i32* %472, i32* %473, i32 %474)
  %476 = trunc i64 %475 to i32
  %477 = load i32, i32* %18, align 4
  %478 = add nsw i32 %477, %476
  store i32 %478, i32* %18, align 4
  br label %479

479:                                              ; preds = %464, %449
  %480 = load i32*, i32** %8, align 8
  %481 = load i32, i32* %11, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32*, i32** %8, align 8
  %485 = load i32, i32* %11, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32*, i32** %14, align 8
  %489 = load i32, i32* %17, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32, i32* %17, align 4
  %493 = call i64 @bn_add_words(i32* %483, i32* %487, i32* %491, i32 %492)
  %494 = trunc i64 %493 to i32
  %495 = load i32, i32* %18, align 4
  %496 = add nsw i32 %495, %494
  store i32 %496, i32* %18, align 4
  %497 = load i32, i32* %18, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %535

499:                                              ; preds = %479
  %500 = load i32*, i32** %8, align 8
  %501 = load i32, i32* %11, align 4
  %502 = load i32, i32* %17, align 4
  %503 = add nsw i32 %501, %502
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %500, i64 %504
  store i32* %505, i32** %23, align 8
  %506 = load i32*, i32** %23, align 8
  %507 = load i32, i32* %506, align 4
  store i32 %507, i32* %22, align 4
  %508 = load i32, i32* %22, align 4
  %509 = load i32, i32* %18, align 4
  %510 = add nsw i32 %508, %509
  %511 = load i32, i32* @BN_MASK2, align 4
  %512 = and i32 %510, %511
  store i32 %512, i32* %21, align 4
  %513 = load i32, i32* %21, align 4
  %514 = load i32*, i32** %23, align 8
  store i32 %513, i32* %514, align 4
  %515 = load i32, i32* %21, align 4
  %516 = load i32, i32* %18, align 4
  %517 = icmp slt i32 %515, %516
  br i1 %517, label %518, label %534

518:                                              ; preds = %499
  br label %519

519:                                              ; preds = %530, %518
  %520 = load i32*, i32** %23, align 8
  %521 = getelementptr inbounds i32, i32* %520, i32 1
  store i32* %521, i32** %23, align 8
  %522 = load i32*, i32** %23, align 8
  %523 = load i32, i32* %522, align 4
  store i32 %523, i32* %22, align 4
  %524 = load i32, i32* %22, align 4
  %525 = add nsw i32 %524, 1
  %526 = load i32, i32* @BN_MASK2, align 4
  %527 = and i32 %525, %526
  store i32 %527, i32* %21, align 4
  %528 = load i32, i32* %21, align 4
  %529 = load i32*, i32** %23, align 8
  store i32 %528, i32* %529, align 4
  br label %530

530:                                              ; preds = %519
  %531 = load i32, i32* %21, align 4
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %519, label %533

533:                                              ; preds = %530
  br label %534

534:                                              ; preds = %533, %499
  br label %535

535:                                              ; preds = %28, %534, %479
  ret void
}

declare dso_local i32 @bn_mul_normal(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @bn_cmp_part_words(i32*, i32*, i32, i32) #1

declare dso_local i32 @bn_sub_part_words(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @bn_mul_comba8(i32*, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bn_mul_recursive(i32*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @bn_add_words(i32*, i32*, i32*, i32) #1

declare dso_local i64 @bn_sub_words(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
