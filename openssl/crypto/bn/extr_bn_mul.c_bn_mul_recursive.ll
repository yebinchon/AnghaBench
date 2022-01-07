; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mul.c_bn_mul_recursive.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mul.c_bn_mul_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_MUL_RECURSIVE_SIZE_NORMAL = common dso_local global i32 0, align 4
@BN_MASK2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bn_mul_recursive(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
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
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sdiv i32 %25, 2
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @BN_MUL_RECURSIVE_SIZE_NORMAL, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %7
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @bn_mul_normal(i32* %37, i32* %38, i32 %41, i32* %42, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %36
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 2, %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %52, i64 %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 0, %63
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(i32* %60, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %51, %36
  br label %351

70:                                               ; preds = %7
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %18, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i32 @bn_cmp_part_words(i32* %71, i32* %75, i32 %76, i32 %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 @bn_cmp_part_words(i32* %84, i32* %85, i32 %86, i32 %89)
  store i32 %90, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %91 = load i32, i32* %16, align 4
  %92 = mul nsw i32 %91, 3
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %92, %93
  switch i32 %94, label %202 [
    i32 -4, label %95
    i32 -3, label %121
    i32 -2, label %122
    i32 -1, label %148
    i32 0, label %148
    i32 1, label %148
    i32 2, label %149
    i32 3, label %175
    i32 4, label %176
  ]

95:                                               ; preds = %70
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32 @bn_sub_part_words(i32* %96, i32* %100, i32* %101, i32 %102, i32 %105)
  %107 = load i32*, i32** %14, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %19, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i32 @bn_sub_part_words(i32* %110, i32* %111, i32* %115, i32 %116, i32 %119)
  br label %202

121:                                              ; preds = %70
  store i32 1, i32* %21, align 4
  br label %202

122:                                              ; preds = %70
  %123 = load i32*, i32** %14, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %15, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @bn_sub_part_words(i32* %123, i32* %127, i32* %128, i32 %129, i32 %132)
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %15, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32 @bn_sub_part_words(i32* %137, i32* %141, i32* %142, i32 %143, i32 %146)
  store i32 1, i32* %20, align 4
  br label %202

148:                                              ; preds = %70, %70, %70
  store i32 1, i32* %21, align 4
  br label %202

149:                                              ; preds = %70
  %150 = load i32*, i32** %14, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %18, align 4
  %159 = sub nsw i32 %157, %158
  %160 = call i32 @bn_sub_part_words(i32* %150, i32* %151, i32* %155, i32 %156, i32 %159)
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32*, i32** %10, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %19, align 4
  %173 = sub nsw i32 %171, %172
  %174 = call i32 @bn_sub_part_words(i32* %164, i32* %165, i32* %169, i32 %170, i32 %173)
  store i32 1, i32* %20, align 4
  br label %202

175:                                              ; preds = %70
  store i32 1, i32* %21, align 4
  br label %202

176:                                              ; preds = %70
  %177 = load i32*, i32** %14, align 8
  %178 = load i32*, i32** %9, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* %18, align 4
  %186 = sub nsw i32 %184, %185
  %187 = call i32 @bn_sub_part_words(i32* %177, i32* %178, i32* %182, i32 %183, i32 %186)
  %188 = load i32*, i32** %14, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %15, align 4
  %200 = sub nsw i32 %198, %199
  %201 = call i32 @bn_sub_part_words(i32* %191, i32* %195, i32* %196, i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %70, %176, %175, %149, %148, %122, %121, %95
  %203 = load i32*, i32** %14, align 8
  %204 = load i32, i32* %11, align 4
  %205 = mul nsw i32 %204, 2
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  store i32* %207, i32** %24, align 8
  %208 = load i32, i32* %21, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %202
  %211 = load i32*, i32** %14, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32*, i32** %14, align 8
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %15, align 4
  %221 = load i32*, i32** %24, align 8
  call void @bn_mul_recursive(i32* %214, i32* %215, i32* %219, i32 %220, i32 0, i32 0, i32* %221)
  br label %232

222:                                              ; preds = %202
  %223 = load i32*, i32** %14, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 4, %228
  %230 = trunc i64 %229 to i32
  %231 = call i32 @memset(i32* %226, i32 0, i32 %230)
  br label %232

232:                                              ; preds = %222, %210
  %233 = load i32*, i32** %8, align 8
  %234 = load i32*, i32** %9, align 8
  %235 = load i32*, i32** %10, align 8
  %236 = load i32, i32* %15, align 4
  %237 = load i32*, i32** %24, align 8
  call void @bn_mul_recursive(i32* %233, i32* %234, i32* %235, i32 %236, i32 0, i32 0, i32* %237)
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32*, i32** %10, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* %13, align 4
  %253 = load i32*, i32** %24, align 8
  call void @bn_mul_recursive(i32* %241, i32* %245, i32* %249, i32 %250, i32 %251, i32 %252, i32* %253)
  %254 = load i32*, i32** %14, align 8
  %255 = load i32*, i32** %8, align 8
  %256 = load i32*, i32** %8, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %11, align 4
  %261 = call i64 @bn_add_words(i32* %254, i32* %255, i32* %259, i32 %260)
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %20, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %232
  %266 = load i32*, i32** %14, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32*, i32** %14, align 8
  %271 = load i32*, i32** %14, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %11, align 4
  %276 = call i64 @bn_sub_words(i32* %269, i32* %270, i32* %274, i32 %275)
  %277 = trunc i64 %276 to i32
  %278 = load i32, i32* %16, align 4
  %279 = sub nsw i32 %278, %277
  store i32 %279, i32* %16, align 4
  br label %295

280:                                              ; preds = %232
  %281 = load i32*, i32** %14, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32*, i32** %14, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32*, i32** %14, align 8
  %290 = load i32, i32* %11, align 4
  %291 = call i64 @bn_add_words(i32* %284, i32* %288, i32* %289, i32 %290)
  %292 = trunc i64 %291 to i32
  %293 = load i32, i32* %16, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %16, align 4
  br label %295

295:                                              ; preds = %280, %265
  %296 = load i32*, i32** %8, align 8
  %297 = load i32, i32* %15, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32*, i32** %8, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32*, i32** %14, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %11, align 4
  %309 = call i64 @bn_add_words(i32* %299, i32* %303, i32* %307, i32 %308)
  %310 = trunc i64 %309 to i32
  %311 = load i32, i32* %16, align 4
  %312 = add nsw i32 %311, %310
  store i32 %312, i32* %16, align 4
  %313 = load i32, i32* %16, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %351

315:                                              ; preds = %295
  %316 = load i32*, i32** %8, align 8
  %317 = load i32, i32* %15, align 4
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %317, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %316, i64 %320
  store i32* %321, i32** %24, align 8
  %322 = load i32*, i32** %24, align 8
  %323 = load i32, i32* %322, align 4
  store i32 %323, i32* %23, align 4
  %324 = load i32, i32* %23, align 4
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %324, %325
  %327 = load i32, i32* @BN_MASK2, align 4
  %328 = and i32 %326, %327
  store i32 %328, i32* %22, align 4
  %329 = load i32, i32* %22, align 4
  %330 = load i32*, i32** %24, align 8
  store i32 %329, i32* %330, align 4
  %331 = load i32, i32* %22, align 4
  %332 = load i32, i32* %16, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %350

334:                                              ; preds = %315
  br label %335

335:                                              ; preds = %346, %334
  %336 = load i32*, i32** %24, align 8
  %337 = getelementptr inbounds i32, i32* %336, i32 1
  store i32* %337, i32** %24, align 8
  %338 = load i32*, i32** %24, align 8
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %23, align 4
  %340 = load i32, i32* %23, align 4
  %341 = add nsw i32 %340, 1
  %342 = load i32, i32* @BN_MASK2, align 4
  %343 = and i32 %341, %342
  store i32 %343, i32* %22, align 4
  %344 = load i32, i32* %22, align 4
  %345 = load i32*, i32** %24, align 8
  store i32 %344, i32* %345, align 4
  br label %346

346:                                              ; preds = %335
  %347 = load i32, i32* %22, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %335, label %349

349:                                              ; preds = %346
  br label %350

350:                                              ; preds = %349, %315
  br label %351

351:                                              ; preds = %69, %350, %295
  ret void
}

declare dso_local i32 @bn_mul_normal(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bn_cmp_part_words(i32*, i32*, i32, i32) #1

declare dso_local i32 @bn_sub_part_words(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @bn_add_words(i32*, i32*, i32*, i32) #1

declare dso_local i64 @bn_sub_words(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
