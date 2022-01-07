; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_aes_algo.c_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_aes_algo.c_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes_state = type { i32 }

@Nb = common dso_local global i32 0, align 4
@RT0 = common dso_local global i32* null, align 8
@RT1 = common dso_local global i32* null, align 8
@RT2 = common dso_local global i32* null, align 8
@RT3 = common dso_local global i32* null, align 8
@InvSbox = common dso_local global i64* null, align 8
@Nr_AES256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aes_decrypt(%struct.aes_state* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.aes_state*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
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
  store %struct.aes_state* %0, %struct.aes_state** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %20 = load %struct.aes_state*, %struct.aes_state** %4, align 8
  %21 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* @Nb, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %7, align 8
  %28 = mul nuw i64 2, %24
  %29 = mul nuw i64 %28, %26
  %30 = alloca i32, i64 %29, align 16
  store i64 %24, i64* %8, align 8
  store i64 %26, i64* %9, align 8
  %31 = load %struct.aes_state*, %struct.aes_state** %4, align 8
  %32 = bitcast i32* %30 to i32***
  %33 = call i32 @aes_expkey(%struct.aes_state* %31, i32*** %32)
  %34 = load i64*, i64** %5, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %5, align 8
  %36 = load i64, i64* %34, align 8
  %37 = shl i64 %36, 24
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i64*, i64** %5, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %5, align 8
  %41 = load i64, i64* %39, align 8
  %42 = shl i64 %41, 16
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = or i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i64*, i64** %5, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %5, align 8
  %49 = load i64, i64* %47, align 8
  %50 = shl i64 %49, 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = or i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %5, align 8
  %57 = load i64, i64* %55, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = or i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = mul nuw i64 %24, %26
  %63 = mul nsw i64 1, %62
  %64 = getelementptr inbounds i32, i32* %30, i64 %63
  %65 = mul nsw i64 0, %26
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i64*, i64** %5, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %5, align 8
  %73 = load i64, i64* %71, align 8
  %74 = shl i64 %73, 24
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load i64*, i64** %5, align 8
  %77 = getelementptr inbounds i64, i64* %76, i32 1
  store i64* %77, i64** %5, align 8
  %78 = load i64, i64* %76, align 8
  %79 = shl i64 %78, 16
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = or i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  %84 = load i64*, i64** %5, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %5, align 8
  %86 = load i64, i64* %84, align 8
  %87 = shl i64 %86, 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = or i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load i64*, i64** %5, align 8
  %93 = getelementptr inbounds i64, i64* %92, i32 1
  store i64* %93, i64** %5, align 8
  %94 = load i64, i64* %92, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = or i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %11, align 4
  %99 = mul nuw i64 %24, %26
  %100 = mul nsw i64 1, %99
  %101 = getelementptr inbounds i32, i32* %30, i64 %100
  %102 = mul nsw i64 0, %26
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = xor i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load i64*, i64** %5, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %5, align 8
  %110 = load i64, i64* %108, align 8
  %111 = shl i64 %110, 24
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %12, align 4
  %113 = load i64*, i64** %5, align 8
  %114 = getelementptr inbounds i64, i64* %113, i32 1
  store i64* %114, i64** %5, align 8
  %115 = load i64, i64* %113, align 8
  %116 = shl i64 %115, 16
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = or i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %12, align 4
  %121 = load i64*, i64** %5, align 8
  %122 = getelementptr inbounds i64, i64* %121, i32 1
  store i64* %122, i64** %5, align 8
  %123 = load i64, i64* %121, align 8
  %124 = shl i64 %123, 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = or i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %12, align 4
  %129 = load i64*, i64** %5, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 1
  store i64* %130, i64** %5, align 8
  %131 = load i64, i64* %129, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = or i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %12, align 4
  %136 = mul nuw i64 %24, %26
  %137 = mul nsw i64 1, %136
  %138 = getelementptr inbounds i32, i32* %30, i64 %137
  %139 = mul nsw i64 0, %26
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %12, align 4
  %144 = xor i32 %143, %142
  store i32 %144, i32* %12, align 4
  %145 = load i64*, i64** %5, align 8
  %146 = getelementptr inbounds i64, i64* %145, i32 1
  store i64* %146, i64** %5, align 8
  %147 = load i64, i64* %145, align 8
  %148 = shl i64 %147, 24
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %13, align 4
  %150 = load i64*, i64** %5, align 8
  %151 = getelementptr inbounds i64, i64* %150, i32 1
  store i64* %151, i64** %5, align 8
  %152 = load i64, i64* %150, align 8
  %153 = shl i64 %152, 16
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = or i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %13, align 4
  %158 = load i64*, i64** %5, align 8
  %159 = getelementptr inbounds i64, i64* %158, i32 1
  store i64* %159, i64** %5, align 8
  %160 = load i64, i64* %158, align 8
  %161 = shl i64 %160, 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = or i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %13, align 4
  %166 = load i64*, i64** %5, align 8
  %167 = getelementptr inbounds i64, i64* %166, i32 1
  store i64* %167, i64** %5, align 8
  %168 = load i64, i64* %166, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = or i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %13, align 4
  %173 = mul nuw i64 %24, %26
  %174 = mul nsw i64 1, %173
  %175 = getelementptr inbounds i32, i32* %30, i64 %174
  %176 = mul nsw i64 0, %26
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = getelementptr inbounds i32, i32* %177, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %13, align 4
  %181 = xor i32 %180, %179
  store i32 %181, i32* %13, align 4
  store i32 1, i32* %19, align 4
  br label %182

182:                                              ; preds = %337, %3
  %183 = load i32, i32* %19, align 4
  %184 = load %struct.aes_state*, %struct.aes_state** %4, align 8
  %185 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %340

188:                                              ; preds = %182
  %189 = load i32*, i32** @RT0, align 8
  %190 = load i32, i32* %10, align 4
  %191 = ashr i32 %190, 24
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32*, i32** @RT1, align 8
  %196 = load i32, i32* %13, align 4
  %197 = ashr i32 %196, 16
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = xor i32 %194, %200
  %202 = load i32*, i32** @RT2, align 8
  %203 = load i32, i32* %12, align 4
  %204 = ashr i32 %203, 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = xor i32 %201, %207
  %209 = load i32*, i32** @RT3, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = xor i32 %208, %213
  store i32 %214, i32* %15, align 4
  %215 = load i32*, i32** @RT0, align 8
  %216 = load i32, i32* %11, align 4
  %217 = ashr i32 %216, 24
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** @RT1, align 8
  %222 = load i32, i32* %10, align 4
  %223 = ashr i32 %222, 16
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = xor i32 %220, %226
  %228 = load i32*, i32** @RT2, align 8
  %229 = load i32, i32* %13, align 4
  %230 = ashr i32 %229, 8
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = xor i32 %227, %233
  %235 = load i32*, i32** @RT3, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %234, %239
  store i32 %240, i32* %16, align 4
  %241 = load i32*, i32** @RT0, align 8
  %242 = load i32, i32* %12, align 4
  %243 = ashr i32 %242, 24
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** @RT1, align 8
  %248 = load i32, i32* %11, align 4
  %249 = ashr i32 %248, 16
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = xor i32 %246, %252
  %254 = load i32*, i32** @RT2, align 8
  %255 = load i32, i32* %10, align 4
  %256 = ashr i32 %255, 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = xor i32 %253, %259
  %261 = load i32*, i32** @RT3, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = xor i32 %260, %265
  store i32 %266, i32* %17, align 4
  %267 = load i32*, i32** @RT0, align 8
  %268 = load i32, i32* %13, align 4
  %269 = ashr i32 %268, 24
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** @RT1, align 8
  %274 = load i32, i32* %12, align 4
  %275 = ashr i32 %274, 16
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %273, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = xor i32 %272, %278
  %280 = load i32*, i32** @RT2, align 8
  %281 = load i32, i32* %11, align 4
  %282 = ashr i32 %281, 8
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = xor i32 %279, %285
  %287 = load i32*, i32** @RT3, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = xor i32 %286, %291
  store i32 %292, i32* %18, align 4
  %293 = load i32, i32* %15, align 4
  %294 = mul nuw i64 %24, %26
  %295 = mul nsw i64 1, %294
  %296 = getelementptr inbounds i32, i32* %30, i64 %295
  %297 = load i32, i32* %19, align 4
  %298 = sext i32 %297 to i64
  %299 = mul nsw i64 %298, %26
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = xor i32 %293, %302
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %16, align 4
  %305 = mul nuw i64 %24, %26
  %306 = mul nsw i64 1, %305
  %307 = getelementptr inbounds i32, i32* %30, i64 %306
  %308 = load i32, i32* %19, align 4
  %309 = sext i32 %308 to i64
  %310 = mul nsw i64 %309, %26
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load i32, i32* %312, align 4
  %314 = xor i32 %304, %313
  store i32 %314, i32* %11, align 4
  %315 = load i32, i32* %17, align 4
  %316 = mul nuw i64 %24, %26
  %317 = mul nsw i64 1, %316
  %318 = getelementptr inbounds i32, i32* %30, i64 %317
  %319 = load i32, i32* %19, align 4
  %320 = sext i32 %319 to i64
  %321 = mul nsw i64 %320, %26
  %322 = getelementptr inbounds i32, i32* %318, i64 %321
  %323 = getelementptr inbounds i32, i32* %322, i64 2
  %324 = load i32, i32* %323, align 4
  %325 = xor i32 %315, %324
  store i32 %325, i32* %12, align 4
  %326 = load i32, i32* %18, align 4
  %327 = mul nuw i64 %24, %26
  %328 = mul nsw i64 1, %327
  %329 = getelementptr inbounds i32, i32* %30, i64 %328
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = mul nsw i64 %331, %26
  %333 = getelementptr inbounds i32, i32* %329, i64 %332
  %334 = getelementptr inbounds i32, i32* %333, i64 3
  %335 = load i32, i32* %334, align 4
  %336 = xor i32 %326, %335
  store i32 %336, i32* %13, align 4
  br label %337

337:                                              ; preds = %188
  %338 = load i32, i32* %19, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %19, align 4
  br label %182

340:                                              ; preds = %182
  %341 = mul nuw i64 %24, %26
  %342 = mul nsw i64 1, %341
  %343 = getelementptr inbounds i32, i32* %30, i64 %342
  %344 = load %struct.aes_state*, %struct.aes_state** %4, align 8
  %345 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = mul nsw i64 %347, %26
  %349 = getelementptr inbounds i32, i32* %343, i64 %348
  %350 = getelementptr inbounds i32, i32* %349, i64 0
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %14, align 4
  %352 = load i64*, i64** @InvSbox, align 8
  %353 = load i32, i32* %10, align 4
  %354 = ashr i32 %353, 24
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %352, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = load i32, i32* %14, align 4
  %359 = ashr i32 %358, 24
  %360 = sext i32 %359 to i64
  %361 = xor i64 %357, %360
  %362 = load i64*, i64** %6, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 0
  store i64 %361, i64* %363, align 8
  %364 = load i64*, i64** @InvSbox, align 8
  %365 = load i32, i32* %13, align 4
  %366 = ashr i32 %365, 16
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i64, i64* %364, i64 %367
  %369 = load i64, i64* %368, align 8
  %370 = load i32, i32* %14, align 4
  %371 = ashr i32 %370, 16
  %372 = sext i32 %371 to i64
  %373 = xor i64 %369, %372
  %374 = load i64*, i64** %6, align 8
  %375 = getelementptr inbounds i64, i64* %374, i64 1
  store i64 %373, i64* %375, align 8
  %376 = load i64*, i64** @InvSbox, align 8
  %377 = load i32, i32* %12, align 4
  %378 = ashr i32 %377, 8
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i64, i64* %376, i64 %379
  %381 = load i64, i64* %380, align 8
  %382 = load i32, i32* %14, align 4
  %383 = ashr i32 %382, 8
  %384 = sext i32 %383 to i64
  %385 = xor i64 %381, %384
  %386 = load i64*, i64** %6, align 8
  %387 = getelementptr inbounds i64, i64* %386, i64 2
  store i64 %385, i64* %387, align 8
  %388 = load i64*, i64** @InvSbox, align 8
  %389 = load i32, i32* %11, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64, i64* %388, i64 %390
  %392 = load i64, i64* %391, align 8
  %393 = load i32, i32* %14, align 4
  %394 = sext i32 %393 to i64
  %395 = xor i64 %392, %394
  %396 = load i64*, i64** %6, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 3
  store i64 %395, i64* %397, align 8
  %398 = mul nuw i64 %24, %26
  %399 = mul nsw i64 1, %398
  %400 = getelementptr inbounds i32, i32* %30, i64 %399
  %401 = load %struct.aes_state*, %struct.aes_state** %4, align 8
  %402 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = mul nsw i64 %404, %26
  %406 = getelementptr inbounds i32, i32* %400, i64 %405
  %407 = getelementptr inbounds i32, i32* %406, i64 1
  %408 = load i32, i32* %407, align 4
  store i32 %408, i32* %14, align 4
  %409 = load i64*, i64** @InvSbox, align 8
  %410 = load i32, i32* %11, align 4
  %411 = ashr i32 %410, 24
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i64, i64* %409, i64 %412
  %414 = load i64, i64* %413, align 8
  %415 = load i32, i32* %14, align 4
  %416 = ashr i32 %415, 24
  %417 = sext i32 %416 to i64
  %418 = xor i64 %414, %417
  %419 = load i64*, i64** %6, align 8
  %420 = getelementptr inbounds i64, i64* %419, i64 4
  store i64 %418, i64* %420, align 8
  %421 = load i64*, i64** @InvSbox, align 8
  %422 = load i32, i32* %10, align 4
  %423 = ashr i32 %422, 16
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i64, i64* %421, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = load i32, i32* %14, align 4
  %428 = ashr i32 %427, 16
  %429 = sext i32 %428 to i64
  %430 = xor i64 %426, %429
  %431 = load i64*, i64** %6, align 8
  %432 = getelementptr inbounds i64, i64* %431, i64 5
  store i64 %430, i64* %432, align 8
  %433 = load i64*, i64** @InvSbox, align 8
  %434 = load i32, i32* %13, align 4
  %435 = ashr i32 %434, 8
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i64, i64* %433, i64 %436
  %438 = load i64, i64* %437, align 8
  %439 = load i32, i32* %14, align 4
  %440 = ashr i32 %439, 8
  %441 = sext i32 %440 to i64
  %442 = xor i64 %438, %441
  %443 = load i64*, i64** %6, align 8
  %444 = getelementptr inbounds i64, i64* %443, i64 6
  store i64 %442, i64* %444, align 8
  %445 = load i64*, i64** @InvSbox, align 8
  %446 = load i32, i32* %12, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i64, i64* %445, i64 %447
  %449 = load i64, i64* %448, align 8
  %450 = load i32, i32* %14, align 4
  %451 = sext i32 %450 to i64
  %452 = xor i64 %449, %451
  %453 = load i64*, i64** %6, align 8
  %454 = getelementptr inbounds i64, i64* %453, i64 7
  store i64 %452, i64* %454, align 8
  %455 = mul nuw i64 %24, %26
  %456 = mul nsw i64 1, %455
  %457 = getelementptr inbounds i32, i32* %30, i64 %456
  %458 = load %struct.aes_state*, %struct.aes_state** %4, align 8
  %459 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  %462 = mul nsw i64 %461, %26
  %463 = getelementptr inbounds i32, i32* %457, i64 %462
  %464 = getelementptr inbounds i32, i32* %463, i64 2
  %465 = load i32, i32* %464, align 4
  store i32 %465, i32* %14, align 4
  %466 = load i64*, i64** @InvSbox, align 8
  %467 = load i32, i32* %12, align 4
  %468 = ashr i32 %467, 24
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i64, i64* %466, i64 %469
  %471 = load i64, i64* %470, align 8
  %472 = load i32, i32* %14, align 4
  %473 = ashr i32 %472, 24
  %474 = sext i32 %473 to i64
  %475 = xor i64 %471, %474
  %476 = load i64*, i64** %6, align 8
  %477 = getelementptr inbounds i64, i64* %476, i64 8
  store i64 %475, i64* %477, align 8
  %478 = load i64*, i64** @InvSbox, align 8
  %479 = load i32, i32* %11, align 4
  %480 = ashr i32 %479, 16
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i64, i64* %478, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = load i32, i32* %14, align 4
  %485 = ashr i32 %484, 16
  %486 = sext i32 %485 to i64
  %487 = xor i64 %483, %486
  %488 = load i64*, i64** %6, align 8
  %489 = getelementptr inbounds i64, i64* %488, i64 9
  store i64 %487, i64* %489, align 8
  %490 = load i64*, i64** @InvSbox, align 8
  %491 = load i32, i32* %10, align 4
  %492 = ashr i32 %491, 8
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i64, i64* %490, i64 %493
  %495 = load i64, i64* %494, align 8
  %496 = load i32, i32* %14, align 4
  %497 = ashr i32 %496, 8
  %498 = sext i32 %497 to i64
  %499 = xor i64 %495, %498
  %500 = load i64*, i64** %6, align 8
  %501 = getelementptr inbounds i64, i64* %500, i64 10
  store i64 %499, i64* %501, align 8
  %502 = load i64*, i64** @InvSbox, align 8
  %503 = load i32, i32* %13, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i64, i64* %502, i64 %504
  %506 = load i64, i64* %505, align 8
  %507 = load i32, i32* %14, align 4
  %508 = sext i32 %507 to i64
  %509 = xor i64 %506, %508
  %510 = load i64*, i64** %6, align 8
  %511 = getelementptr inbounds i64, i64* %510, i64 11
  store i64 %509, i64* %511, align 8
  %512 = mul nuw i64 %24, %26
  %513 = mul nsw i64 1, %512
  %514 = getelementptr inbounds i32, i32* %30, i64 %513
  %515 = load %struct.aes_state*, %struct.aes_state** %4, align 8
  %516 = getelementptr inbounds %struct.aes_state, %struct.aes_state* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = sext i32 %517 to i64
  %519 = mul nsw i64 %518, %26
  %520 = getelementptr inbounds i32, i32* %514, i64 %519
  %521 = getelementptr inbounds i32, i32* %520, i64 3
  %522 = load i32, i32* %521, align 4
  store i32 %522, i32* %14, align 4
  %523 = load i64*, i64** @InvSbox, align 8
  %524 = load i32, i32* %13, align 4
  %525 = ashr i32 %524, 24
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i64, i64* %523, i64 %526
  %528 = load i64, i64* %527, align 8
  %529 = load i32, i32* %14, align 4
  %530 = ashr i32 %529, 24
  %531 = sext i32 %530 to i64
  %532 = xor i64 %528, %531
  %533 = load i64*, i64** %6, align 8
  %534 = getelementptr inbounds i64, i64* %533, i64 12
  store i64 %532, i64* %534, align 8
  %535 = load i64*, i64** @InvSbox, align 8
  %536 = load i32, i32* %12, align 4
  %537 = ashr i32 %536, 16
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i64, i64* %535, i64 %538
  %540 = load i64, i64* %539, align 8
  %541 = load i32, i32* %14, align 4
  %542 = ashr i32 %541, 16
  %543 = sext i32 %542 to i64
  %544 = xor i64 %540, %543
  %545 = load i64*, i64** %6, align 8
  %546 = getelementptr inbounds i64, i64* %545, i64 13
  store i64 %544, i64* %546, align 8
  %547 = load i64*, i64** @InvSbox, align 8
  %548 = load i32, i32* %11, align 4
  %549 = ashr i32 %548, 8
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i64, i64* %547, i64 %550
  %552 = load i64, i64* %551, align 8
  %553 = load i32, i32* %14, align 4
  %554 = ashr i32 %553, 8
  %555 = sext i32 %554 to i64
  %556 = xor i64 %552, %555
  %557 = load i64*, i64** %6, align 8
  %558 = getelementptr inbounds i64, i64* %557, i64 14
  store i64 %556, i64* %558, align 8
  %559 = load i64*, i64** @InvSbox, align 8
  %560 = load i32, i32* %10, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i64, i64* %559, i64 %561
  %563 = load i64, i64* %562, align 8
  %564 = load i32, i32* %14, align 4
  %565 = sext i32 %564 to i64
  %566 = xor i64 %563, %565
  %567 = load i64*, i64** %6, align 8
  %568 = getelementptr inbounds i64, i64* %567, i64 15
  store i64 %566, i64* %568, align 8
  %569 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %569)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @aes_expkey(%struct.aes_state*, i32***) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
