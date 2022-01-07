; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_des_setkey.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_des_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@des_initialised = common dso_local global i32 0, align 4
@old_rawkey0 = common dso_local global i32 0, align 4
@old_rawkey1 = common dso_local global i32 0, align 4
@key_perm_maskl = common dso_local global i32** null, align 8
@key_perm_maskr = common dso_local global i32** null, align 8
@key_shifts = common dso_local global i64* null, align 8
@comp_maskl = common dso_local global i32** null, align 8
@en_keysl = common dso_local global i32* null, align 8
@de_keysl = common dso_local global i32* null, align 8
@comp_maskr = common dso_local global i32** null, align 8
@en_keysr = common dso_local global i32* null, align 8
@de_keysr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @des_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_setkey(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @des_initialised, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 (...) @des_init()
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pg_ntoh32(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pg_ntoh32(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @old_rawkey0, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @old_rawkey1, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %401

39:                                               ; preds = %34, %30, %16
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* @old_rawkey0, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* @old_rawkey1, align 4
  %42 = load i32**, i32*** @key_perm_maskl, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 25
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32**, i32*** @key_perm_maskl, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %53, 17
  %55 = and i32 %54, 127
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %49, %58
  %60 = load i32**, i32*** @key_perm_maskl, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 9
  %65 = and i32 %64, 127
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %59, %68
  %70 = load i32**, i32*** @key_perm_maskl, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = ashr i32 %73, 1
  %75 = and i32 %74, 127
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %69, %78
  %80 = load i32**, i32*** @key_perm_maskl, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %83, 25
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %79, %87
  %89 = load i32**, i32*** @key_perm_maskl, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 5
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 17
  %94 = and i32 %93, 127
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %88, %97
  %99 = load i32**, i32*** @key_perm_maskl, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 6
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = ashr i32 %102, 9
  %104 = and i32 %103, 127
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %98, %107
  %109 = load i32**, i32*** @key_perm_maskl, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 7
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = ashr i32 %112, 1
  %114 = and i32 %113, 127
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %108, %117
  store i32 %118, i32* %4, align 4
  %119 = load i32**, i32*** @key_perm_maskr, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = ashr i32 %122, 25
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32**, i32*** @key_perm_maskr, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = ashr i32 %130, 17
  %132 = and i32 %131, 127
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %126, %135
  %137 = load i32**, i32*** @key_perm_maskr, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = ashr i32 %140, 9
  %142 = and i32 %141, 127
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %136, %145
  %147 = load i32**, i32*** @key_perm_maskr, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 3
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = ashr i32 %150, 1
  %152 = and i32 %151, 127
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %146, %155
  %157 = load i32**, i32*** @key_perm_maskr, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 4
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = ashr i32 %160, 25
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %156, %164
  %166 = load i32**, i32*** @key_perm_maskr, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 5
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = ashr i32 %169, 17
  %171 = and i32 %170, 127
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %165, %174
  %176 = load i32**, i32*** @key_perm_maskr, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 6
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = ashr i32 %179, 9
  %181 = and i32 %180, 127
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %175, %184
  %186 = load i32**, i32*** @key_perm_maskr, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 7
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = ashr i32 %189, 1
  %191 = and i32 %190, 127
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %185, %194
  store i32 %195, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %397, %39
  %197 = load i32, i32* %9, align 4
  %198 = icmp slt i32 %197, 16
  br i1 %198, label %199, label %400

199:                                              ; preds = %196
  %200 = load i64*, i64** @key_shifts, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %204
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* %8, align 4
  %211 = shl i32 %209, %210
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %8, align 4
  %214 = sub nsw i32 28, %213
  %215 = ashr i32 %212, %214
  %216 = or i32 %211, %215
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* %8, align 4
  %219 = shl i32 %217, %218
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* %8, align 4
  %222 = sub nsw i32 28, %221
  %223 = ashr i32 %220, %222
  %224 = or i32 %219, %223
  store i32 %224, i32* %11, align 4
  %225 = load i32**, i32*** @comp_maskl, align 8
  %226 = getelementptr inbounds i32*, i32** %225, i64 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = ashr i32 %228, 21
  %230 = and i32 %229, 127
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32**, i32*** @comp_maskl, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i64 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = ashr i32 %237, 14
  %239 = and i32 %238, 127
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %236, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %233, %242
  %244 = load i32**, i32*** @comp_maskl, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 2
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = ashr i32 %247, 7
  %249 = and i32 %248, 127
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %243, %252
  %254 = load i32**, i32*** @comp_maskl, align 8
  %255 = getelementptr inbounds i32*, i32** %254, i64 3
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %10, align 4
  %258 = and i32 %257, 127
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %253, %261
  %263 = load i32**, i32*** @comp_maskl, align 8
  %264 = getelementptr inbounds i32*, i32** %263, i64 4
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = ashr i32 %266, 21
  %268 = and i32 %267, 127
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %265, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %262, %271
  %273 = load i32**, i32*** @comp_maskl, align 8
  %274 = getelementptr inbounds i32*, i32** %273, i64 5
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %11, align 4
  %277 = ashr i32 %276, 14
  %278 = and i32 %277, 127
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = or i32 %272, %281
  %283 = load i32**, i32*** @comp_maskl, align 8
  %284 = getelementptr inbounds i32*, i32** %283, i64 6
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = ashr i32 %286, 7
  %288 = and i32 %287, 127
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %285, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %282, %291
  %293 = load i32**, i32*** @comp_maskl, align 8
  %294 = getelementptr inbounds i32*, i32** %293, i64 7
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %11, align 4
  %297 = and i32 %296, 127
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %295, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %292, %300
  %302 = load i32*, i32** @en_keysl, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 %301, i32* %305, align 4
  %306 = load i32*, i32** @de_keysl, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sub nsw i32 15, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  store i32 %301, i32* %310, align 4
  %311 = load i32**, i32*** @comp_maskr, align 8
  %312 = getelementptr inbounds i32*, i32** %311, i64 0
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %10, align 4
  %315 = ashr i32 %314, 21
  %316 = and i32 %315, 127
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %313, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32**, i32*** @comp_maskr, align 8
  %321 = getelementptr inbounds i32*, i32** %320, i64 1
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %10, align 4
  %324 = ashr i32 %323, 14
  %325 = and i32 %324, 127
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %322, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %319, %328
  %330 = load i32**, i32*** @comp_maskr, align 8
  %331 = getelementptr inbounds i32*, i32** %330, i64 2
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = ashr i32 %333, 7
  %335 = and i32 %334, 127
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %332, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %329, %338
  %340 = load i32**, i32*** @comp_maskr, align 8
  %341 = getelementptr inbounds i32*, i32** %340, i64 3
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = and i32 %343, 127
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %339, %347
  %349 = load i32**, i32*** @comp_maskr, align 8
  %350 = getelementptr inbounds i32*, i32** %349, i64 4
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %11, align 4
  %353 = ashr i32 %352, 21
  %354 = and i32 %353, 127
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %351, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %348, %357
  %359 = load i32**, i32*** @comp_maskr, align 8
  %360 = getelementptr inbounds i32*, i32** %359, i64 5
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %11, align 4
  %363 = ashr i32 %362, 14
  %364 = and i32 %363, 127
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %361, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = or i32 %358, %367
  %369 = load i32**, i32*** @comp_maskr, align 8
  %370 = getelementptr inbounds i32*, i32** %369, i64 6
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %11, align 4
  %373 = ashr i32 %372, 7
  %374 = and i32 %373, 127
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %371, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %368, %377
  %379 = load i32**, i32*** @comp_maskr, align 8
  %380 = getelementptr inbounds i32*, i32** %379, i64 7
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %11, align 4
  %383 = and i32 %382, 127
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %381, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = or i32 %378, %386
  %388 = load i32*, i32** @en_keysr, align 8
  %389 = load i32, i32* %9, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  store i32 %387, i32* %391, align 4
  %392 = load i32*, i32** @de_keysr, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sub nsw i32 15, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %392, i64 %395
  store i32 %387, i32* %396, align 4
  br label %397

397:                                              ; preds = %199
  %398 = load i32, i32* %9, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %9, align 4
  br label %196

400:                                              ; preds = %196
  store i32 0, i32* %2, align 4
  br label %401

401:                                              ; preds = %400, %38
  %402 = load i32, i32* %2, align 4
  ret i32 %402
}

declare dso_local i32 @des_init(...) #1

declare dso_local i32 @pg_ntoh32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
