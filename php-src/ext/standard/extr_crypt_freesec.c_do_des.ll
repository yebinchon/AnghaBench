; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_freesec.c_do_des.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_freesec.c_do_des.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_crypt_extended_data = type { i32*, i32*, i32*, i32*, i32 }

@ip_maskl = common dso_local global i32** null, align 8
@ip_maskr = common dso_local global i32** null, align 8
@psbox = common dso_local global i32** null, align 8
@m_sbox = common dso_local global i64** null, align 8
@fp_maskl = common dso_local global i32** null, align 8
@fp_maskr = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32, %struct.php_crypt_extended_data*)* @do_des to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_des(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, %struct.php_crypt_extended_data* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.php_crypt_extended_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.php_crypt_extended_data* %5, %struct.php_crypt_extended_data** %13, align 8
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %487

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %13, align 8
  %33 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %18, align 8
  %35 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %13, align 8
  %36 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %19, align 8
  br label %47

38:                                               ; preds = %28
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  %41 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %13, align 8
  %42 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %18, align 8
  %44 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %13, align 8
  %45 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %19, align 8
  br label %47

47:                                               ; preds = %38, %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32**, i32*** @ip_maskl, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 24
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32**, i32*** @ip_maskl, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %56, %65
  %67 = load i32**, i32*** @ip_maskl, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %66, %75
  %77 = load i32**, i32*** @ip_maskl, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 3
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 255
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %76, %84
  %86 = load i32**, i32*** @ip_maskl, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %89, 24
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %85, %93
  %95 = load i32**, i32*** @ip_maskl, align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 5
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = ashr i32 %98, 16
  %100 = and i32 %99, 255
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %94, %103
  %105 = load i32**, i32*** @ip_maskl, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 6
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 255
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %104, %113
  %115 = load i32**, i32*** @ip_maskl, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 7
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = and i32 %118, 255
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %114, %122
  store i32 %123, i32* %14, align 4
  %124 = load i32**, i32*** @ip_maskr, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = ashr i32 %127, 24
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32**, i32*** @ip_maskr, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = ashr i32 %135, 16
  %137 = and i32 %136, 255
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %131, %140
  %142 = load i32**, i32*** @ip_maskr, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = ashr i32 %145, 8
  %147 = and i32 %146, 255
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %141, %150
  %152 = load i32**, i32*** @ip_maskr, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = and i32 %155, 255
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %151, %159
  %161 = load i32**, i32*** @ip_maskr, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 4
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = ashr i32 %164, 24
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %160, %168
  %170 = load i32**, i32*** @ip_maskr, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 5
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = ashr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %169, %178
  %180 = load i32**, i32*** @ip_maskr, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 6
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = ashr i32 %183, 8
  %185 = and i32 %184, 255
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %179, %188
  %190 = load i32**, i32*** @ip_maskr, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 7
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = and i32 %193, 255
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %189, %197
  store i32 %198, i32* %15, align 4
  %199 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %13, align 8
  %200 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %23, align 4
  br label %202

202:                                              ; preds = %331, %48
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %12, align 4
  %205 = icmp ne i32 %203, 0
  br i1 %205, label %206, label %334

206:                                              ; preds = %202
  %207 = load i32*, i32** %18, align 8
  store i32* %207, i32** %16, align 8
  %208 = load i32*, i32** %19, align 8
  store i32* %208, i32** %17, align 8
  store i32 16, i32* %24, align 4
  br label %209

209:                                              ; preds = %213, %206
  %210 = load i32, i32* %24, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %24, align 4
  %212 = icmp ne i32 %210, 0
  br i1 %212, label %213, label %331

213:                                              ; preds = %209
  %214 = load i32, i32* %15, align 4
  %215 = and i32 %214, 1
  %216 = shl i32 %215, 23
  %217 = load i32, i32* %15, align 4
  %218 = and i32 %217, -134217728
  %219 = lshr i32 %218, 9
  %220 = or i32 %216, %219
  %221 = load i32, i32* %15, align 4
  %222 = and i32 %221, 528482304
  %223 = ashr i32 %222, 11
  %224 = or i32 %220, %223
  %225 = load i32, i32* %15, align 4
  %226 = and i32 %225, 33030144
  %227 = ashr i32 %226, 13
  %228 = or i32 %224, %227
  %229 = load i32, i32* %15, align 4
  %230 = and i32 %229, 2064384
  %231 = ashr i32 %230, 15
  %232 = or i32 %228, %231
  store i32 %232, i32* %21, align 4
  %233 = load i32, i32* %15, align 4
  %234 = and i32 %233, 129024
  %235 = shl i32 %234, 7
  %236 = load i32, i32* %15, align 4
  %237 = and i32 %236, 8064
  %238 = shl i32 %237, 5
  %239 = or i32 %235, %238
  %240 = load i32, i32* %15, align 4
  %241 = and i32 %240, 504
  %242 = shl i32 %241, 3
  %243 = or i32 %239, %242
  %244 = load i32, i32* %15, align 4
  %245 = and i32 %244, 31
  %246 = shl i32 %245, 1
  %247 = or i32 %243, %246
  %248 = load i32, i32* %15, align 4
  %249 = and i32 %248, -2147483648
  %250 = lshr i32 %249, 31
  %251 = or i32 %247, %250
  store i32 %251, i32* %22, align 4
  %252 = load i32, i32* %21, align 4
  %253 = load i32, i32* %22, align 4
  %254 = xor i32 %252, %253
  %255 = load i32, i32* %23, align 4
  %256 = and i32 %254, %255
  store i32 %256, i32* %20, align 4
  %257 = load i32, i32* %20, align 4
  %258 = load i32*, i32** %16, align 8
  %259 = getelementptr inbounds i32, i32* %258, i32 1
  store i32* %259, i32** %16, align 8
  %260 = load i32, i32* %258, align 4
  %261 = xor i32 %257, %260
  %262 = load i32, i32* %21, align 4
  %263 = xor i32 %262, %261
  store i32 %263, i32* %21, align 4
  %264 = load i32, i32* %20, align 4
  %265 = load i32*, i32** %17, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %17, align 8
  %267 = load i32, i32* %265, align 4
  %268 = xor i32 %264, %267
  %269 = load i32, i32* %22, align 4
  %270 = xor i32 %269, %268
  store i32 %270, i32* %22, align 4
  %271 = load i32**, i32*** @psbox, align 8
  %272 = getelementptr inbounds i32*, i32** %271, i64 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i64**, i64*** @m_sbox, align 8
  %275 = getelementptr inbounds i64*, i64** %274, i64 0
  %276 = load i64*, i64** %275, align 8
  %277 = load i32, i32* %21, align 4
  %278 = ashr i32 %277, 12
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %276, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i32, i32* %273, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32**, i32*** @psbox, align 8
  %285 = getelementptr inbounds i32*, i32** %284, i64 1
  %286 = load i32*, i32** %285, align 8
  %287 = load i64**, i64*** @m_sbox, align 8
  %288 = getelementptr inbounds i64*, i64** %287, i64 1
  %289 = load i64*, i64** %288, align 8
  %290 = load i32, i32* %21, align 4
  %291 = and i32 %290, 4095
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %289, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds i32, i32* %286, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %283, %296
  %298 = load i32**, i32*** @psbox, align 8
  %299 = getelementptr inbounds i32*, i32** %298, i64 2
  %300 = load i32*, i32** %299, align 8
  %301 = load i64**, i64*** @m_sbox, align 8
  %302 = getelementptr inbounds i64*, i64** %301, i64 2
  %303 = load i64*, i64** %302, align 8
  %304 = load i32, i32* %22, align 4
  %305 = ashr i32 %304, 12
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %303, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds i32, i32* %300, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = or i32 %297, %310
  %312 = load i32**, i32*** @psbox, align 8
  %313 = getelementptr inbounds i32*, i32** %312, i64 3
  %314 = load i32*, i32** %313, align 8
  %315 = load i64**, i64*** @m_sbox, align 8
  %316 = getelementptr inbounds i64*, i64** %315, i64 3
  %317 = load i64*, i64** %316, align 8
  %318 = load i32, i32* %22, align 4
  %319 = and i32 %318, 4095
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %317, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds i32, i32* %314, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %311, %324
  store i32 %325, i32* %20, align 4
  %326 = load i32, i32* %14, align 4
  %327 = load i32, i32* %20, align 4
  %328 = xor i32 %327, %326
  store i32 %328, i32* %20, align 4
  %329 = load i32, i32* %15, align 4
  store i32 %329, i32* %14, align 4
  %330 = load i32, i32* %20, align 4
  store i32 %330, i32* %15, align 4
  br label %209

331:                                              ; preds = %209
  %332 = load i32, i32* %14, align 4
  store i32 %332, i32* %15, align 4
  %333 = load i32, i32* %20, align 4
  store i32 %333, i32* %14, align 4
  br label %202

334:                                              ; preds = %202
  %335 = load i32**, i32*** @fp_maskl, align 8
  %336 = getelementptr inbounds i32*, i32** %335, i64 0
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %14, align 4
  %339 = ashr i32 %338, 24
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %337, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32**, i32*** @fp_maskl, align 8
  %344 = getelementptr inbounds i32*, i32** %343, i64 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %14, align 4
  %347 = ashr i32 %346, 16
  %348 = and i32 %347, 255
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %345, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %342, %351
  %353 = load i32**, i32*** @fp_maskl, align 8
  %354 = getelementptr inbounds i32*, i32** %353, i64 2
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %14, align 4
  %357 = ashr i32 %356, 8
  %358 = and i32 %357, 255
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %355, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %352, %361
  %363 = load i32**, i32*** @fp_maskl, align 8
  %364 = getelementptr inbounds i32*, i32** %363, i64 3
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %14, align 4
  %367 = and i32 %366, 255
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = or i32 %362, %370
  %372 = load i32**, i32*** @fp_maskl, align 8
  %373 = getelementptr inbounds i32*, i32** %372, i64 4
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %15, align 4
  %376 = ashr i32 %375, 24
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = or i32 %371, %379
  %381 = load i32**, i32*** @fp_maskl, align 8
  %382 = getelementptr inbounds i32*, i32** %381, i64 5
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %15, align 4
  %385 = ashr i32 %384, 16
  %386 = and i32 %385, 255
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %383, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %380, %389
  %391 = load i32**, i32*** @fp_maskl, align 8
  %392 = getelementptr inbounds i32*, i32** %391, i64 6
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %15, align 4
  %395 = ashr i32 %394, 8
  %396 = and i32 %395, 255
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %393, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %390, %399
  %401 = load i32**, i32*** @fp_maskl, align 8
  %402 = getelementptr inbounds i32*, i32** %401, i64 7
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %15, align 4
  %405 = and i32 %404, 255
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %403, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = or i32 %400, %408
  %410 = load i32*, i32** %10, align 8
  store i32 %409, i32* %410, align 4
  %411 = load i32**, i32*** @fp_maskr, align 8
  %412 = getelementptr inbounds i32*, i32** %411, i64 0
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %14, align 4
  %415 = ashr i32 %414, 24
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %413, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load i32**, i32*** @fp_maskr, align 8
  %420 = getelementptr inbounds i32*, i32** %419, i64 1
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %14, align 4
  %423 = ashr i32 %422, 16
  %424 = and i32 %423, 255
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %421, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = or i32 %418, %427
  %429 = load i32**, i32*** @fp_maskr, align 8
  %430 = getelementptr inbounds i32*, i32** %429, i64 2
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %14, align 4
  %433 = ashr i32 %432, 8
  %434 = and i32 %433, 255
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %431, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = or i32 %428, %437
  %439 = load i32**, i32*** @fp_maskr, align 8
  %440 = getelementptr inbounds i32*, i32** %439, i64 3
  %441 = load i32*, i32** %440, align 8
  %442 = load i32, i32* %14, align 4
  %443 = and i32 %442, 255
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %441, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = or i32 %438, %446
  %448 = load i32**, i32*** @fp_maskr, align 8
  %449 = getelementptr inbounds i32*, i32** %448, i64 4
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %15, align 4
  %452 = ashr i32 %451, 24
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %450, i64 %453
  %455 = load i32, i32* %454, align 4
  %456 = or i32 %447, %455
  %457 = load i32**, i32*** @fp_maskr, align 8
  %458 = getelementptr inbounds i32*, i32** %457, i64 5
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %15, align 4
  %461 = ashr i32 %460, 16
  %462 = and i32 %461, 255
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %459, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = or i32 %456, %465
  %467 = load i32**, i32*** @fp_maskr, align 8
  %468 = getelementptr inbounds i32*, i32** %467, i64 6
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %15, align 4
  %471 = ashr i32 %470, 8
  %472 = and i32 %471, 255
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %469, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = or i32 %466, %475
  %477 = load i32**, i32*** @fp_maskr, align 8
  %478 = getelementptr inbounds i32*, i32** %477, i64 7
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* %15, align 4
  %481 = and i32 %480, 255
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %479, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = or i32 %476, %484
  %486 = load i32*, i32** %11, align 8
  store i32 %485, i32* %486, align 4
  store i32 0, i32* %7, align 4
  br label %487

487:                                              ; preds = %334, %27
  %488 = load i32, i32* %7, align 4
  ret i32 %488
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
