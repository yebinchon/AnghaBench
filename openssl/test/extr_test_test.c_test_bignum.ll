; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_test_test.c_test_bignum.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_test_test.c_test_bignum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"-334739439\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_bignum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bignum() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @BN_dec2bn(i32** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @TEST_int_eq(i32 %5, i32 1)
  %7 = call i32 @TEST(i32 1, i32 %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @TEST_BN_eq_word(i32* %11, i32 0)
  %13 = call i32 @TEST(i32 1, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = or i32 %10, %16
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @TEST_BN_eq_word(i32* %18, i32 30)
  %20 = call i32 @TEST(i32 0, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = or i32 %17, %23
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @TEST_BN_abs_eq_word(i32* %25, i32 0)
  %27 = call i32 @TEST(i32 1, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = or i32 %24, %30
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @TEST_BN_eq_one(i32* %32)
  %34 = call i32 @TEST(i32 0, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = or i32 %31, %37
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @TEST_BN_eq_zero(i32* %39)
  %41 = call i32 @TEST(i32 1, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = or i32 %38, %44
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @TEST_BN_ne_zero(i32* %46)
  %48 = call i32 @TEST(i32 0, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = or i32 %45, %51
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @TEST_BN_le_zero(i32* %53)
  %55 = call i32 @TEST(i32 1, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = or i32 %52, %58
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @TEST_BN_lt_zero(i32* %60)
  %62 = call i32 @TEST(i32 0, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = or i32 %59, %65
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @TEST_BN_ge_zero(i32* %67)
  %69 = call i32 @TEST(i32 1, i32 %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = or i32 %66, %72
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @TEST_BN_gt_zero(i32* %74)
  %76 = call i32 @TEST(i32 0, i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = or i32 %73, %79
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @TEST_BN_even(i32* %81)
  %83 = call i32 @TEST(i32 1, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = or i32 %80, %86
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @TEST_BN_odd(i32* %88)
  %90 = call i32 @TEST(i32 0, i32 %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = or i32 %87, %93
  %95 = load i32*, i32** %2, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @TEST_BN_eq(i32* %95, i32* %96)
  %98 = call i32 @TEST(i32 1, i32 %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = or i32 %94, %101
  %103 = load i32*, i32** %1, align 8
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @TEST_BN_eq(i32* %103, i32* %104)
  %106 = call i32 @TEST(i32 0, i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = or i32 %102, %109
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @TEST_BN_ne(i32* null, i32* %111)
  %113 = call i32 @TEST(i32 0, i32 %112)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = or i32 %110, %116
  %118 = call i32 @BN_dec2bn(i32** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 @TEST_int_eq(i32 %118, i32 1)
  %120 = call i32 @TEST(i32 1, i32 %119)
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = or i32 %117, %123
  %125 = load i32*, i32** %2, align 8
  %126 = call i32 @TEST_BN_eq_word(i32* %125, i32 1)
  %127 = call i32 @TEST(i32 1, i32 %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = or i32 %124, %130
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 @TEST_BN_eq_one(i32* %132)
  %134 = call i32 @TEST(i32 1, i32 %133)
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = or i32 %131, %137
  %139 = load i32*, i32** %2, align 8
  %140 = call i32 @TEST_BN_abs_eq_word(i32* %139, i32 0)
  %141 = call i32 @TEST(i32 0, i32 %140)
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = or i32 %138, %144
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 @TEST_BN_abs_eq_word(i32* %146, i32 1)
  %148 = call i32 @TEST(i32 1, i32 %147)
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = or i32 %145, %151
  %153 = load i32*, i32** %2, align 8
  %154 = call i32 @TEST_BN_eq_zero(i32* %153)
  %155 = call i32 @TEST(i32 0, i32 %154)
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = or i32 %152, %158
  %160 = load i32*, i32** %2, align 8
  %161 = call i32 @TEST_BN_ne_zero(i32* %160)
  %162 = call i32 @TEST(i32 1, i32 %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = or i32 %159, %165
  %167 = load i32*, i32** %2, align 8
  %168 = call i32 @TEST_BN_le_zero(i32* %167)
  %169 = call i32 @TEST(i32 0, i32 %168)
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = or i32 %166, %172
  %174 = load i32*, i32** %2, align 8
  %175 = call i32 @TEST_BN_lt_zero(i32* %174)
  %176 = call i32 @TEST(i32 0, i32 %175)
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = or i32 %173, %179
  %181 = load i32*, i32** %2, align 8
  %182 = call i32 @TEST_BN_ge_zero(i32* %181)
  %183 = call i32 @TEST(i32 1, i32 %182)
  %184 = icmp ne i32 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = or i32 %180, %186
  %188 = load i32*, i32** %2, align 8
  %189 = call i32 @TEST_BN_gt_zero(i32* %188)
  %190 = call i32 @TEST(i32 1, i32 %189)
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = or i32 %187, %193
  %195 = load i32*, i32** %2, align 8
  %196 = call i32 @TEST_BN_even(i32* %195)
  %197 = call i32 @TEST(i32 0, i32 %196)
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = or i32 %194, %200
  %202 = load i32*, i32** %2, align 8
  %203 = call i32 @TEST_BN_odd(i32* %202)
  %204 = call i32 @TEST(i32 1, i32 %203)
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  %207 = zext i1 %206 to i32
  %208 = or i32 %201, %207
  %209 = call i32 @BN_dec2bn(i32** %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %210 = call i32 @TEST_int_eq(i32 %209, i32 10)
  %211 = call i32 @TEST(i32 1, i32 %210)
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = or i32 %208, %214
  %216 = load i32*, i32** %3, align 8
  %217 = call i32 @TEST_BN_eq_word(i32* %216, i32 334739439)
  %218 = call i32 @TEST(i32 0, i32 %217)
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = or i32 %215, %221
  %223 = load i32*, i32** %3, align 8
  %224 = call i32 @TEST_BN_abs_eq_word(i32* %223, i32 334739439)
  %225 = call i32 @TEST(i32 1, i32 %224)
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = or i32 %222, %228
  %230 = load i32*, i32** %3, align 8
  %231 = call i32 @TEST_BN_eq_zero(i32* %230)
  %232 = call i32 @TEST(i32 0, i32 %231)
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = or i32 %229, %235
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 @TEST_BN_ne_zero(i32* %237)
  %239 = call i32 @TEST(i32 1, i32 %238)
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = or i32 %236, %242
  %244 = load i32*, i32** %3, align 8
  %245 = call i32 @TEST_BN_le_zero(i32* %244)
  %246 = call i32 @TEST(i32 1, i32 %245)
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = or i32 %243, %249
  %251 = load i32*, i32** %3, align 8
  %252 = call i32 @TEST_BN_lt_zero(i32* %251)
  %253 = call i32 @TEST(i32 1, i32 %252)
  %254 = icmp ne i32 %253, 0
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = or i32 %250, %256
  %258 = load i32*, i32** %3, align 8
  %259 = call i32 @TEST_BN_ge_zero(i32* %258)
  %260 = call i32 @TEST(i32 0, i32 %259)
  %261 = icmp ne i32 %260, 0
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = or i32 %257, %263
  %265 = load i32*, i32** %3, align 8
  %266 = call i32 @TEST_BN_gt_zero(i32* %265)
  %267 = call i32 @TEST(i32 0, i32 %266)
  %268 = icmp ne i32 %267, 0
  %269 = xor i1 %268, true
  %270 = zext i1 %269 to i32
  %271 = or i32 %264, %270
  %272 = load i32*, i32** %3, align 8
  %273 = call i32 @TEST_BN_even(i32* %272)
  %274 = call i32 @TEST(i32 0, i32 %273)
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  %278 = or i32 %271, %277
  %279 = load i32*, i32** %3, align 8
  %280 = call i32 @TEST_BN_odd(i32* %279)
  %281 = call i32 @TEST(i32 1, i32 %280)
  %282 = icmp ne i32 %281, 0
  %283 = xor i1 %282, true
  %284 = zext i1 %283 to i32
  %285 = or i32 %278, %284
  %286 = load i32*, i32** %1, align 8
  %287 = load i32*, i32** %1, align 8
  %288 = call i32 @TEST_BN_eq(i32* %286, i32* %287)
  %289 = call i32 @TEST(i32 1, i32 %288)
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  %292 = zext i1 %291 to i32
  %293 = or i32 %285, %292
  %294 = load i32*, i32** %1, align 8
  %295 = load i32*, i32** %1, align 8
  %296 = call i32 @TEST_BN_ne(i32* %294, i32* %295)
  %297 = call i32 @TEST(i32 0, i32 %296)
  %298 = icmp ne i32 %297, 0
  %299 = xor i1 %298, true
  %300 = zext i1 %299 to i32
  %301 = or i32 %293, %300
  %302 = load i32*, i32** %1, align 8
  %303 = load i32*, i32** %2, align 8
  %304 = call i32 @TEST_BN_eq(i32* %302, i32* %303)
  %305 = call i32 @TEST(i32 0, i32 %304)
  %306 = icmp ne i32 %305, 0
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  %309 = or i32 %301, %308
  %310 = load i32*, i32** %1, align 8
  %311 = load i32*, i32** %2, align 8
  %312 = call i32 @TEST_BN_ne(i32* %310, i32* %311)
  %313 = call i32 @TEST(i32 1, i32 %312)
  %314 = icmp ne i32 %313, 0
  %315 = xor i1 %314, true
  %316 = zext i1 %315 to i32
  %317 = or i32 %309, %316
  %318 = load i32*, i32** %1, align 8
  %319 = load i32*, i32** %3, align 8
  %320 = call i32 @TEST_BN_lt(i32* %318, i32* %319)
  %321 = call i32 @TEST(i32 0, i32 %320)
  %322 = icmp ne i32 %321, 0
  %323 = xor i1 %322, true
  %324 = zext i1 %323 to i32
  %325 = or i32 %317, %324
  %326 = load i32*, i32** %3, align 8
  %327 = load i32*, i32** %2, align 8
  %328 = call i32 @TEST_BN_lt(i32* %326, i32* %327)
  %329 = call i32 @TEST(i32 1, i32 %328)
  %330 = icmp ne i32 %329, 0
  %331 = xor i1 %330, true
  %332 = zext i1 %331 to i32
  %333 = or i32 %325, %332
  %334 = load i32*, i32** %2, align 8
  %335 = load i32*, i32** %3, align 8
  %336 = call i32 @TEST_BN_lt(i32* %334, i32* %335)
  %337 = call i32 @TEST(i32 0, i32 %336)
  %338 = icmp ne i32 %337, 0
  %339 = xor i1 %338, true
  %340 = zext i1 %339 to i32
  %341 = or i32 %333, %340
  %342 = load i32*, i32** %1, align 8
  %343 = load i32*, i32** %3, align 8
  %344 = call i32 @TEST_BN_le(i32* %342, i32* %343)
  %345 = call i32 @TEST(i32 0, i32 %344)
  %346 = icmp ne i32 %345, 0
  %347 = xor i1 %346, true
  %348 = zext i1 %347 to i32
  %349 = or i32 %341, %348
  %350 = load i32*, i32** %3, align 8
  %351 = load i32*, i32** %2, align 8
  %352 = call i32 @TEST_BN_le(i32* %350, i32* %351)
  %353 = call i32 @TEST(i32 1, i32 %352)
  %354 = icmp ne i32 %353, 0
  %355 = xor i1 %354, true
  %356 = zext i1 %355 to i32
  %357 = or i32 %349, %356
  %358 = load i32*, i32** %2, align 8
  %359 = load i32*, i32** %3, align 8
  %360 = call i32 @TEST_BN_le(i32* %358, i32* %359)
  %361 = call i32 @TEST(i32 0, i32 %360)
  %362 = icmp ne i32 %361, 0
  %363 = xor i1 %362, true
  %364 = zext i1 %363 to i32
  %365 = or i32 %357, %364
  %366 = load i32*, i32** %1, align 8
  %367 = load i32*, i32** %3, align 8
  %368 = call i32 @TEST_BN_gt(i32* %366, i32* %367)
  %369 = call i32 @TEST(i32 1, i32 %368)
  %370 = icmp ne i32 %369, 0
  %371 = xor i1 %370, true
  %372 = zext i1 %371 to i32
  %373 = or i32 %365, %372
  %374 = load i32*, i32** %3, align 8
  %375 = load i32*, i32** %2, align 8
  %376 = call i32 @TEST_BN_gt(i32* %374, i32* %375)
  %377 = call i32 @TEST(i32 0, i32 %376)
  %378 = icmp ne i32 %377, 0
  %379 = xor i1 %378, true
  %380 = zext i1 %379 to i32
  %381 = or i32 %373, %380
  %382 = load i32*, i32** %2, align 8
  %383 = load i32*, i32** %3, align 8
  %384 = call i32 @TEST_BN_gt(i32* %382, i32* %383)
  %385 = call i32 @TEST(i32 1, i32 %384)
  %386 = icmp ne i32 %385, 0
  %387 = xor i1 %386, true
  %388 = zext i1 %387 to i32
  %389 = or i32 %381, %388
  %390 = load i32*, i32** %1, align 8
  %391 = load i32*, i32** %3, align 8
  %392 = call i32 @TEST_BN_ge(i32* %390, i32* %391)
  %393 = call i32 @TEST(i32 1, i32 %392)
  %394 = icmp ne i32 %393, 0
  %395 = xor i1 %394, true
  %396 = zext i1 %395 to i32
  %397 = or i32 %389, %396
  %398 = load i32*, i32** %3, align 8
  %399 = load i32*, i32** %2, align 8
  %400 = call i32 @TEST_BN_ge(i32* %398, i32* %399)
  %401 = call i32 @TEST(i32 0, i32 %400)
  %402 = icmp ne i32 %401, 0
  %403 = xor i1 %402, true
  %404 = zext i1 %403 to i32
  %405 = or i32 %397, %404
  %406 = load i32*, i32** %2, align 8
  %407 = load i32*, i32** %3, align 8
  %408 = call i32 @TEST_BN_ge(i32* %406, i32* %407)
  %409 = call i32 @TEST(i32 1, i32 %408)
  %410 = icmp ne i32 %409, 0
  %411 = xor i1 %410, true
  %412 = zext i1 %411 to i32
  %413 = or i32 %405, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %0
  br label %417

416:                                              ; preds = %0
  store i32 1, i32* %4, align 4
  br label %417

417:                                              ; preds = %416, %415
  %418 = load i32*, i32** %1, align 8
  %419 = call i32 @BN_free(i32* %418)
  %420 = load i32*, i32** %2, align 8
  %421 = call i32 @BN_free(i32* %420)
  %422 = load i32*, i32** %3, align 8
  %423 = call i32 @BN_free(i32* %422)
  %424 = load i32, i32* %4, align 4
  ret i32 %424
}

declare dso_local i32 @TEST(i32, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @BN_dec2bn(i32**, i8*) #1

declare dso_local i32 @TEST_BN_eq_word(i32*, i32) #1

declare dso_local i32 @TEST_BN_abs_eq_word(i32*, i32) #1

declare dso_local i32 @TEST_BN_eq_one(i32*) #1

declare dso_local i32 @TEST_BN_eq_zero(i32*) #1

declare dso_local i32 @TEST_BN_ne_zero(i32*) #1

declare dso_local i32 @TEST_BN_le_zero(i32*) #1

declare dso_local i32 @TEST_BN_lt_zero(i32*) #1

declare dso_local i32 @TEST_BN_ge_zero(i32*) #1

declare dso_local i32 @TEST_BN_gt_zero(i32*) #1

declare dso_local i32 @TEST_BN_even(i32*) #1

declare dso_local i32 @TEST_BN_odd(i32*) #1

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #1

declare dso_local i32 @TEST_BN_ne(i32*, i32*) #1

declare dso_local i32 @TEST_BN_lt(i32*, i32*) #1

declare dso_local i32 @TEST_BN_le(i32*, i32*) #1

declare dso_local i32 @TEST_BN_gt(i32*, i32*) #1

declare dso_local i32 @TEST_BN_ge(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
