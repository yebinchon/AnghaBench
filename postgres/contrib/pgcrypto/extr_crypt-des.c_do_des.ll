; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_do_des.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_do_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@en_keysl = common dso_local global i32* null, align 8
@en_keysr = common dso_local global i32* null, align 8
@de_keysl = common dso_local global i32* null, align 8
@de_keysr = common dso_local global i32* null, align 8
@ip_maskl = common dso_local global i32** null, align 8
@ip_maskr = common dso_local global i32** null, align 8
@saltbits = common dso_local global i32 0, align 4
@psbox = common dso_local global i32** null, align 8
@m_sbox = common dso_local global i64** null, align 8
@fp_maskl = common dso_local global i32** null, align 8
@fp_maskr = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32)* @do_des to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_des(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %474

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** @en_keysl, align 8
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** @en_keysr, align 8
  store i32* %30, i32** %17, align 8
  br label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** @de_keysl, align 8
  store i32* %34, i32** %16, align 8
  %35 = load i32*, i32** @de_keysr, align 8
  store i32* %35, i32** %17, align 8
  br label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %36
  %38 = load i32**, i32*** @ip_maskl, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 24
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32**, i32*** @ip_maskl, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %45, %54
  %56 = load i32**, i32*** @ip_maskl, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %55, %64
  %66 = load i32**, i32*** @ip_maskl, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 255
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %65, %73
  %75 = load i32**, i32*** @ip_maskl, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 24
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %74, %82
  %84 = load i32**, i32*** @ip_maskl, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 5
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %83, %92
  %94 = load i32**, i32*** @ip_maskl, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 6
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 255
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %93, %102
  %104 = load i32**, i32*** @ip_maskl, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 7
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 255
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %103, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32**, i32*** @ip_maskr, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = ashr i32 %116, 24
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32**, i32*** @ip_maskr, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = ashr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %120, %129
  %131 = load i32**, i32*** @ip_maskr, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = ashr i32 %134, 8
  %136 = and i32 %135, 255
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %130, %139
  %141 = load i32**, i32*** @ip_maskr, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = and i32 %144, 255
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %140, %148
  %150 = load i32**, i32*** @ip_maskr, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = ashr i32 %153, 24
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %149, %157
  %159 = load i32**, i32*** @ip_maskr, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 5
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = ashr i32 %162, 16
  %164 = and i32 %163, 255
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %158, %167
  %169 = load i32**, i32*** @ip_maskr, align 8
  %170 = getelementptr inbounds i32*, i32** %169, i64 6
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = ashr i32 %172, 8
  %174 = and i32 %173, 255
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %168, %177
  %179 = load i32**, i32*** @ip_maskr, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 7
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = and i32 %182, 255
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %178, %186
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %318, %37
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %11, align 4
  %191 = icmp ne i32 %189, 0
  br i1 %191, label %192, label %321

192:                                              ; preds = %188
  %193 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %194 = load i32*, i32** %16, align 8
  store i32* %194, i32** %14, align 8
  %195 = load i32*, i32** %17, align 8
  store i32* %195, i32** %15, align 8
  store i32 16, i32* %21, align 4
  br label %196

196:                                              ; preds = %200, %192
  %197 = load i32, i32* %21, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %21, align 4
  %199 = icmp ne i32 %197, 0
  br i1 %199, label %200, label %318

200:                                              ; preds = %196
  %201 = load i32, i32* %13, align 4
  %202 = and i32 %201, 1
  %203 = shl i32 %202, 23
  %204 = load i32, i32* %13, align 4
  %205 = and i32 %204, -134217728
  %206 = lshr i32 %205, 9
  %207 = or i32 %203, %206
  %208 = load i32, i32* %13, align 4
  %209 = and i32 %208, 528482304
  %210 = ashr i32 %209, 11
  %211 = or i32 %207, %210
  %212 = load i32, i32* %13, align 4
  %213 = and i32 %212, 33030144
  %214 = ashr i32 %213, 13
  %215 = or i32 %211, %214
  %216 = load i32, i32* %13, align 4
  %217 = and i32 %216, 2064384
  %218 = ashr i32 %217, 15
  %219 = or i32 %215, %218
  store i32 %219, i32* %19, align 4
  %220 = load i32, i32* %13, align 4
  %221 = and i32 %220, 129024
  %222 = shl i32 %221, 7
  %223 = load i32, i32* %13, align 4
  %224 = and i32 %223, 8064
  %225 = shl i32 %224, 5
  %226 = or i32 %222, %225
  %227 = load i32, i32* %13, align 4
  %228 = and i32 %227, 504
  %229 = shl i32 %228, 3
  %230 = or i32 %226, %229
  %231 = load i32, i32* %13, align 4
  %232 = and i32 %231, 31
  %233 = shl i32 %232, 1
  %234 = or i32 %230, %233
  %235 = load i32, i32* %13, align 4
  %236 = and i32 %235, -2147483648
  %237 = lshr i32 %236, 31
  %238 = or i32 %234, %237
  store i32 %238, i32* %20, align 4
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %20, align 4
  %241 = xor i32 %239, %240
  %242 = load i32, i32* @saltbits, align 4
  %243 = and i32 %241, %242
  store i32 %243, i32* %18, align 4
  %244 = load i32, i32* %18, align 4
  %245 = load i32*, i32** %14, align 8
  %246 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %246, i32** %14, align 8
  %247 = load i32, i32* %245, align 4
  %248 = xor i32 %244, %247
  %249 = load i32, i32* %19, align 4
  %250 = xor i32 %249, %248
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* %18, align 4
  %252 = load i32*, i32** %15, align 8
  %253 = getelementptr inbounds i32, i32* %252, i32 1
  store i32* %253, i32** %15, align 8
  %254 = load i32, i32* %252, align 4
  %255 = xor i32 %251, %254
  %256 = load i32, i32* %20, align 4
  %257 = xor i32 %256, %255
  store i32 %257, i32* %20, align 4
  %258 = load i32**, i32*** @psbox, align 8
  %259 = getelementptr inbounds i32*, i32** %258, i64 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i64**, i64*** @m_sbox, align 8
  %262 = getelementptr inbounds i64*, i64** %261, i64 0
  %263 = load i64*, i64** %262, align 8
  %264 = load i32, i32* %19, align 4
  %265 = ashr i32 %264, 12
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %263, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = getelementptr inbounds i32, i32* %260, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32**, i32*** @psbox, align 8
  %272 = getelementptr inbounds i32*, i32** %271, i64 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i64**, i64*** @m_sbox, align 8
  %275 = getelementptr inbounds i64*, i64** %274, i64 1
  %276 = load i64*, i64** %275, align 8
  %277 = load i32, i32* %19, align 4
  %278 = and i32 %277, 4095
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %276, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i32, i32* %273, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %270, %283
  %285 = load i32**, i32*** @psbox, align 8
  %286 = getelementptr inbounds i32*, i32** %285, i64 2
  %287 = load i32*, i32** %286, align 8
  %288 = load i64**, i64*** @m_sbox, align 8
  %289 = getelementptr inbounds i64*, i64** %288, i64 2
  %290 = load i64*, i64** %289, align 8
  %291 = load i32, i32* %20, align 4
  %292 = ashr i32 %291, 12
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64, i64* %290, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds i32, i32* %287, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %284, %297
  %299 = load i32**, i32*** @psbox, align 8
  %300 = getelementptr inbounds i32*, i32** %299, i64 3
  %301 = load i32*, i32** %300, align 8
  %302 = load i64**, i64*** @m_sbox, align 8
  %303 = getelementptr inbounds i64*, i64** %302, i64 3
  %304 = load i64*, i64** %303, align 8
  %305 = load i32, i32* %20, align 4
  %306 = and i32 %305, 4095
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %304, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds i32, i32* %301, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = or i32 %298, %311
  store i32 %312, i32* %18, align 4
  %313 = load i32, i32* %12, align 4
  %314 = load i32, i32* %18, align 4
  %315 = xor i32 %314, %313
  store i32 %315, i32* %18, align 4
  %316 = load i32, i32* %13, align 4
  store i32 %316, i32* %12, align 4
  %317 = load i32, i32* %18, align 4
  store i32 %317, i32* %13, align 4
  br label %196

318:                                              ; preds = %196
  %319 = load i32, i32* %12, align 4
  store i32 %319, i32* %13, align 4
  %320 = load i32, i32* %18, align 4
  store i32 %320, i32* %12, align 4
  br label %188

321:                                              ; preds = %188
  %322 = load i32**, i32*** @fp_maskl, align 8
  %323 = getelementptr inbounds i32*, i32** %322, i64 0
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %12, align 4
  %326 = ashr i32 %325, 24
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32**, i32*** @fp_maskl, align 8
  %331 = getelementptr inbounds i32*, i32** %330, i64 1
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %12, align 4
  %334 = ashr i32 %333, 16
  %335 = and i32 %334, 255
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %332, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %329, %338
  %340 = load i32**, i32*** @fp_maskl, align 8
  %341 = getelementptr inbounds i32*, i32** %340, i64 2
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %12, align 4
  %344 = ashr i32 %343, 8
  %345 = and i32 %344, 255
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %342, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %339, %348
  %350 = load i32**, i32*** @fp_maskl, align 8
  %351 = getelementptr inbounds i32*, i32** %350, i64 3
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %12, align 4
  %354 = and i32 %353, 255
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %352, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %349, %357
  %359 = load i32**, i32*** @fp_maskl, align 8
  %360 = getelementptr inbounds i32*, i32** %359, i64 4
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %13, align 4
  %363 = ashr i32 %362, 24
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %361, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = or i32 %358, %366
  %368 = load i32**, i32*** @fp_maskl, align 8
  %369 = getelementptr inbounds i32*, i32** %368, i64 5
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %13, align 4
  %372 = ashr i32 %371, 16
  %373 = and i32 %372, 255
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %370, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = or i32 %367, %376
  %378 = load i32**, i32*** @fp_maskl, align 8
  %379 = getelementptr inbounds i32*, i32** %378, i64 6
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %13, align 4
  %382 = ashr i32 %381, 8
  %383 = and i32 %382, 255
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %380, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = or i32 %377, %386
  %388 = load i32**, i32*** @fp_maskl, align 8
  %389 = getelementptr inbounds i32*, i32** %388, i64 7
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %13, align 4
  %392 = and i32 %391, 255
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %390, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = or i32 %387, %395
  %397 = load i32*, i32** %9, align 8
  store i32 %396, i32* %397, align 4
  %398 = load i32**, i32*** @fp_maskr, align 8
  %399 = getelementptr inbounds i32*, i32** %398, i64 0
  %400 = load i32*, i32** %399, align 8
  %401 = load i32, i32* %12, align 4
  %402 = ashr i32 %401, 24
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %400, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load i32**, i32*** @fp_maskr, align 8
  %407 = getelementptr inbounds i32*, i32** %406, i64 1
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %12, align 4
  %410 = ashr i32 %409, 16
  %411 = and i32 %410, 255
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %408, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = or i32 %405, %414
  %416 = load i32**, i32*** @fp_maskr, align 8
  %417 = getelementptr inbounds i32*, i32** %416, i64 2
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %12, align 4
  %420 = ashr i32 %419, 8
  %421 = and i32 %420, 255
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %418, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = or i32 %415, %424
  %426 = load i32**, i32*** @fp_maskr, align 8
  %427 = getelementptr inbounds i32*, i32** %426, i64 3
  %428 = load i32*, i32** %427, align 8
  %429 = load i32, i32* %12, align 4
  %430 = and i32 %429, 255
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %428, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = or i32 %425, %433
  %435 = load i32**, i32*** @fp_maskr, align 8
  %436 = getelementptr inbounds i32*, i32** %435, i64 4
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %13, align 4
  %439 = ashr i32 %438, 24
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = or i32 %434, %442
  %444 = load i32**, i32*** @fp_maskr, align 8
  %445 = getelementptr inbounds i32*, i32** %444, i64 5
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %13, align 4
  %448 = ashr i32 %447, 16
  %449 = and i32 %448, 255
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %446, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = or i32 %443, %452
  %454 = load i32**, i32*** @fp_maskr, align 8
  %455 = getelementptr inbounds i32*, i32** %454, i64 6
  %456 = load i32*, i32** %455, align 8
  %457 = load i32, i32* %13, align 4
  %458 = ashr i32 %457, 8
  %459 = and i32 %458, 255
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %456, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = or i32 %453, %462
  %464 = load i32**, i32*** @fp_maskr, align 8
  %465 = getelementptr inbounds i32*, i32** %464, i64 7
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %13, align 4
  %468 = and i32 %467, 255
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %466, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = or i32 %463, %471
  %473 = load i32*, i32** %10, align 8
  store i32 %472, i32* %473, align 4
  store i32 0, i32* %6, align 4
  br label %474

474:                                              ; preds = %321, %24
  %475 = load i32, i32* %6, align 4
  ret i32 %475
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
