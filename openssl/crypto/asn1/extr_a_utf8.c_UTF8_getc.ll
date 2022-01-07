; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_utf8.c_UTF8_getc.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_utf8.c_UTF8_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UTF8_getc(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %388

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %8, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 127
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  store i32 1, i32* %10, align 4
  br label %384

28:                                               ; preds = %14
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 224
  %33 = icmp eq i32 %32, 192
  br i1 %33, label %34, label %66

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %388

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 192
  %44 = icmp ne i32 %43, 128
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 -3, i32* %4, align 4
  br label %388

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  %49 = load i8, i8* %47, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 31
  %52 = shl i32 %51, 6
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %8, align 8
  %56 = load i8, i8* %54, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 63
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %9, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ult i64 %62, 128
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  store i32 -4, i32* %4, align 4
  br label %388

65:                                               ; preds = %46
  store i32 2, i32* %10, align 4
  br label %383

66:                                               ; preds = %28
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 240
  %71 = icmp eq i32 %70, 224
  br i1 %71, label %72, label %120

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %388

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 192
  %82 = icmp ne i32 %81, 128
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 192
  %89 = icmp ne i32 %88, 128
  br i1 %89, label %90, label %91

90:                                               ; preds = %83, %76
  store i32 -3, i32* %4, align 4
  br label %388

91:                                               ; preds = %83
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %8, align 8
  %94 = load i8, i8* %92, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 15
  %97 = shl i32 %96, 12
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %9, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %8, align 8
  %101 = load i8, i8* %99, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 63
  %104 = shl i32 %103, 6
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %9, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %9, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  %110 = load i8, i8* %108, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 63
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %9, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ult i64 %116, 2048
  br i1 %117, label %118, label %119

118:                                              ; preds = %91
  store i32 -4, i32* %4, align 4
  br label %388

119:                                              ; preds = %91
  store i32 3, i32* %10, align 4
  br label %382

120:                                              ; preds = %66
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %123, 248
  %125 = icmp eq i32 %124, 240
  br i1 %125, label %126, label %190

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 -1, i32* %4, align 4
  br label %388

130:                                              ; preds = %126
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 192
  %136 = icmp ne i32 %135, 128
  br i1 %136, label %151, label %137

137:                                              ; preds = %130
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, 192
  %143 = icmp ne i32 %142, 128
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 3
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, 192
  %150 = icmp ne i32 %149, 128
  br i1 %150, label %151, label %152

151:                                              ; preds = %144, %137, %130
  store i32 -3, i32* %4, align 4
  br label %388

152:                                              ; preds = %144
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %8, align 8
  %155 = load i8, i8* %153, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, 7
  %158 = sext i32 %157 to i64
  %159 = shl i64 %158, 18
  store i64 %159, i64* %9, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %8, align 8
  %162 = load i8, i8* %160, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 63
  %165 = shl i32 %164, 12
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %9, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %9, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %8, align 8
  %171 = load i8, i8* %169, align 1
  %172 = zext i8 %171 to i32
  %173 = and i32 %172, 63
  %174 = shl i32 %173, 6
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %9, align 8
  %177 = or i64 %176, %175
  store i64 %177, i64* %9, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %8, align 8
  %180 = load i8, i8* %178, align 1
  %181 = zext i8 %180 to i32
  %182 = and i32 %181, 63
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* %9, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %9, align 8
  %186 = load i64, i64* %9, align 8
  %187 = icmp ult i64 %186, 65536
  br i1 %187, label %188, label %189

188:                                              ; preds = %152
  store i32 -4, i32* %4, align 4
  br label %388

189:                                              ; preds = %152
  store i32 4, i32* %10, align 4
  br label %381

190:                                              ; preds = %120
  %191 = load i8*, i8** %8, align 8
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = and i32 %193, 252
  %195 = icmp eq i32 %194, 248
  br i1 %195, label %196, label %276

196:                                              ; preds = %190
  %197 = load i32, i32* %6, align 4
  %198 = icmp slt i32 %197, 5
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 -1, i32* %4, align 4
  br label %388

200:                                              ; preds = %196
  %201 = load i8*, i8** %8, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = and i32 %204, 192
  %206 = icmp ne i32 %205, 128
  br i1 %206, label %228, label %207

207:                                              ; preds = %200
  %208 = load i8*, i8** %8, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 2
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 192
  %213 = icmp ne i32 %212, 128
  br i1 %213, label %228, label %214

214:                                              ; preds = %207
  %215 = load i8*, i8** %8, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 3
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = and i32 %218, 192
  %220 = icmp ne i32 %219, 128
  br i1 %220, label %228, label %221

221:                                              ; preds = %214
  %222 = load i8*, i8** %8, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 4
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = and i32 %225, 192
  %227 = icmp ne i32 %226, 128
  br i1 %227, label %228, label %229

228:                                              ; preds = %221, %214, %207, %200
  store i32 -3, i32* %4, align 4
  br label %388

229:                                              ; preds = %221
  %230 = load i8*, i8** %8, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %8, align 8
  %232 = load i8, i8* %230, align 1
  %233 = zext i8 %232 to i32
  %234 = and i32 %233, 3
  %235 = sext i32 %234 to i64
  %236 = shl i64 %235, 24
  store i64 %236, i64* %9, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %8, align 8
  %239 = load i8, i8* %237, align 1
  %240 = zext i8 %239 to i32
  %241 = and i32 %240, 63
  %242 = sext i32 %241 to i64
  %243 = shl i64 %242, 18
  %244 = load i64, i64* %9, align 8
  %245 = or i64 %244, %243
  store i64 %245, i64* %9, align 8
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %8, align 8
  %248 = load i8, i8* %246, align 1
  %249 = zext i8 %248 to i32
  %250 = and i32 %249, 63
  %251 = sext i32 %250 to i64
  %252 = shl i64 %251, 12
  %253 = load i64, i64* %9, align 8
  %254 = or i64 %253, %252
  store i64 %254, i64* %9, align 8
  %255 = load i8*, i8** %8, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %8, align 8
  %257 = load i8, i8* %255, align 1
  %258 = zext i8 %257 to i32
  %259 = and i32 %258, 63
  %260 = shl i32 %259, 6
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %9, align 8
  %263 = or i64 %262, %261
  store i64 %263, i64* %9, align 8
  %264 = load i8*, i8** %8, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %8, align 8
  %266 = load i8, i8* %264, align 1
  %267 = zext i8 %266 to i32
  %268 = and i32 %267, 63
  %269 = sext i32 %268 to i64
  %270 = load i64, i64* %9, align 8
  %271 = or i64 %270, %269
  store i64 %271, i64* %9, align 8
  %272 = load i64, i64* %9, align 8
  %273 = icmp ult i64 %272, 2097152
  br i1 %273, label %274, label %275

274:                                              ; preds = %229
  store i32 -4, i32* %4, align 4
  br label %388

275:                                              ; preds = %229
  store i32 5, i32* %10, align 4
  br label %380

276:                                              ; preds = %190
  %277 = load i8*, i8** %8, align 8
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = and i32 %279, 254
  %281 = icmp eq i32 %280, 252
  br i1 %281, label %282, label %378

282:                                              ; preds = %276
  %283 = load i32, i32* %6, align 4
  %284 = icmp slt i32 %283, 6
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 -1, i32* %4, align 4
  br label %388

286:                                              ; preds = %282
  %287 = load i8*, i8** %8, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = and i32 %290, 192
  %292 = icmp ne i32 %291, 128
  br i1 %292, label %321, label %293

293:                                              ; preds = %286
  %294 = load i8*, i8** %8, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 2
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = and i32 %297, 192
  %299 = icmp ne i32 %298, 128
  br i1 %299, label %321, label %300

300:                                              ; preds = %293
  %301 = load i8*, i8** %8, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 3
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = and i32 %304, 192
  %306 = icmp ne i32 %305, 128
  br i1 %306, label %321, label %307

307:                                              ; preds = %300
  %308 = load i8*, i8** %8, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 4
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = and i32 %311, 192
  %313 = icmp ne i32 %312, 128
  br i1 %313, label %321, label %314

314:                                              ; preds = %307
  %315 = load i8*, i8** %8, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 5
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = and i32 %318, 192
  %320 = icmp ne i32 %319, 128
  br i1 %320, label %321, label %322

321:                                              ; preds = %314, %307, %300, %293, %286
  store i32 -3, i32* %4, align 4
  br label %388

322:                                              ; preds = %314
  %323 = load i8*, i8** %8, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %8, align 8
  %325 = load i8, i8* %323, align 1
  %326 = zext i8 %325 to i32
  %327 = and i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = shl i64 %328, 30
  store i64 %329, i64* %9, align 8
  %330 = load i8*, i8** %8, align 8
  %331 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %331, i8** %8, align 8
  %332 = load i8, i8* %330, align 1
  %333 = zext i8 %332 to i32
  %334 = and i32 %333, 63
  %335 = sext i32 %334 to i64
  %336 = shl i64 %335, 24
  %337 = load i64, i64* %9, align 8
  %338 = or i64 %337, %336
  store i64 %338, i64* %9, align 8
  %339 = load i8*, i8** %8, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %340, i8** %8, align 8
  %341 = load i8, i8* %339, align 1
  %342 = zext i8 %341 to i32
  %343 = and i32 %342, 63
  %344 = sext i32 %343 to i64
  %345 = shl i64 %344, 18
  %346 = load i64, i64* %9, align 8
  %347 = or i64 %346, %345
  store i64 %347, i64* %9, align 8
  %348 = load i8*, i8** %8, align 8
  %349 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %349, i8** %8, align 8
  %350 = load i8, i8* %348, align 1
  %351 = zext i8 %350 to i32
  %352 = and i32 %351, 63
  %353 = sext i32 %352 to i64
  %354 = shl i64 %353, 12
  %355 = load i64, i64* %9, align 8
  %356 = or i64 %355, %354
  store i64 %356, i64* %9, align 8
  %357 = load i8*, i8** %8, align 8
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** %8, align 8
  %359 = load i8, i8* %357, align 1
  %360 = zext i8 %359 to i32
  %361 = and i32 %360, 63
  %362 = shl i32 %361, 6
  %363 = sext i32 %362 to i64
  %364 = load i64, i64* %9, align 8
  %365 = or i64 %364, %363
  store i64 %365, i64* %9, align 8
  %366 = load i8*, i8** %8, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %8, align 8
  %368 = load i8, i8* %366, align 1
  %369 = zext i8 %368 to i32
  %370 = and i32 %369, 63
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* %9, align 8
  %373 = or i64 %372, %371
  store i64 %373, i64* %9, align 8
  %374 = load i64, i64* %9, align 8
  %375 = icmp ult i64 %374, 67108864
  br i1 %375, label %376, label %377

376:                                              ; preds = %322
  store i32 -4, i32* %4, align 4
  br label %388

377:                                              ; preds = %322
  store i32 6, i32* %10, align 4
  br label %379

378:                                              ; preds = %276
  store i32 -2, i32* %4, align 4
  br label %388

379:                                              ; preds = %377
  br label %380

380:                                              ; preds = %379, %275
  br label %381

381:                                              ; preds = %380, %189
  br label %382

382:                                              ; preds = %381, %119
  br label %383

383:                                              ; preds = %382, %65
  br label %384

384:                                              ; preds = %383, %21
  %385 = load i64, i64* %9, align 8
  %386 = load i64*, i64** %7, align 8
  store i64 %385, i64* %386, align 8
  %387 = load i32, i32* %10, align 4
  store i32 %387, i32* %4, align 4
  br label %388

388:                                              ; preds = %384, %378, %376, %321, %285, %274, %228, %199, %188, %151, %129, %118, %90, %75, %64, %45, %37, %13
  %389 = load i32, i32* %4, align 4
  ret i32 %389
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
