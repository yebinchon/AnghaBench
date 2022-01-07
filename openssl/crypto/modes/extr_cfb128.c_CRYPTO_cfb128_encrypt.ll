; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_cfb128.c_CRYPTO_cfb128_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_cfb128.c_CRYPTO_cfb128_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_cfb128_encrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32* %5, i32 %6, i32 (i8*, i8*, i8*)* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32 (i8*, i8*, i8*)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 (i8*, i8*, i8*)* %7, i32 (i8*, i8*, i8*)** %16, align 8
  store i64 0, i64* %18, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %178

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i1 [ false, %29 ], [ %34, %32 ]
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %17, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, %41
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %10, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %11, align 8
  %54 = load i32, i32* %17, align 4
  %55 = add i32 %54, 1
  %56 = urem i32 %55, 16
  store i32 %56, i32* %17, align 4
  br label %29

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %94, %57
  %59 = load i64, i64* %11, align 8
  %60 = icmp uge i64 %59, 16
  br i1 %60, label %61, label %101

61:                                               ; preds = %58
  %62 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 %62(i8* %63, i8* %64, i8* %65)
  br label %67

67:                                               ; preds = %89, %61
  %68 = load i32, i32* %17, align 4
  %69 = icmp ult i32 %68, 16
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %17, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = bitcast i8* %74 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %17, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = xor i64 %82, %76
  store i64 %83, i64* %81, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i32, i32* %17, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = bitcast i8* %87 to i64*
  store i64 %83, i64* %88, align 8
  br label %89

89:                                               ; preds = %70
  %90 = load i32, i32* %17, align 4
  %91 = zext i32 %90 to i64
  %92 = add i64 %91, 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %17, align 4
  br label %67

94:                                               ; preds = %67
  %95 = load i64, i64* %11, align 8
  %96 = sub i64 %95, 16
  store i64 %96, i64* %11, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 16
  store i8* %98, i8** %10, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 16
  store i8* %100, i8** %9, align 8
  store i32 0, i32* %17, align 4
  br label %58

101:                                              ; preds = %58
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %136

104:                                              ; preds = %101
  %105 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 %105(i8* %106, i8* %107, i8* %108)
  br label %110

110:                                              ; preds = %114, %104
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %11, align 8
  %113 = icmp ne i64 %111, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %110
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* %17, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8*, i8** %13, align 8
  %122 = load i32, i32* %17, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = xor i32 %126, %120
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %124, align 1
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* %17, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 %128, i8* %132, align 1
  %133 = load i32, i32* %17, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %110

135:                                              ; preds = %110
  br label %136

136:                                              ; preds = %135, %101
  %137 = load i32, i32* %17, align 4
  %138 = load i32*, i32** %14, align 8
  store i32 %137, i32* %138, align 4
  br label %351

139:                                              ; No predecessors!
  br label %140

140:                                              ; preds = %153, %139
  %141 = load i64, i64* %18, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %140
  %145 = load i32, i32* %17, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = call i32 %148(i8* %149, i8* %150, i8* %151)
  br label %153

153:                                              ; preds = %147, %144
  %154 = load i8*, i8** %9, align 8
  %155 = load i64, i64* %18, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8*, i8** %13, align 8
  %160 = load i32, i32* %17, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = xor i32 %164, %158
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %162, align 1
  %167 = load i8*, i8** %10, align 8
  %168 = load i64, i64* %18, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8 %166, i8* %169, align 1
  %170 = load i64, i64* %18, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %18, align 8
  %172 = load i32, i32* %17, align 4
  %173 = add i32 %172, 1
  %174 = urem i32 %173, 16
  store i32 %174, i32* %17, align 4
  br label %140

175:                                              ; preds = %140
  %176 = load i32, i32* %17, align 4
  %177 = load i32*, i32** %14, align 8
  store i32 %176, i32* %177, align 4
  br label %351

178:                                              ; preds = %8
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %188, %179
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i64, i64* %11, align 8
  %185 = icmp ne i64 %184, 0
  br label %186

186:                                              ; preds = %183, %180
  %187 = phi i1 [ false, %180 ], [ %185, %183 ]
  br i1 %187, label %188, label %213

188:                                              ; preds = %186
  %189 = load i8*, i8** %13, align 8
  %190 = load i32, i32* %17, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %9, align 8
  %197 = load i8, i8* %195, align 1
  store i8 %197, i8* %19, align 1
  %198 = zext i8 %197 to i32
  %199 = xor i32 %194, %198
  %200 = trunc i32 %199 to i8
  %201 = load i8*, i8** %10, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %10, align 8
  store i8 %200, i8* %201, align 1
  %203 = load i8, i8* %19, align 1
  %204 = load i8*, i8** %13, align 8
  %205 = load i32, i32* %17, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 %203, i8* %207, align 1
  %208 = load i64, i64* %11, align 8
  %209 = add i64 %208, -1
  store i64 %209, i64* %11, align 8
  %210 = load i32, i32* %17, align 4
  %211 = add i32 %210, 1
  %212 = urem i32 %211, 16
  store i32 %212, i32* %17, align 4
  br label %180

213:                                              ; preds = %186
  br label %214

214:                                              ; preds = %257, %213
  %215 = load i64, i64* %11, align 8
  %216 = icmp uge i64 %215, 16
  br i1 %216, label %217, label %264

217:                                              ; preds = %214
  %218 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = load i8*, i8** %12, align 8
  %222 = call i32 %218(i8* %219, i8* %220, i8* %221)
  br label %223

223:                                              ; preds = %252, %217
  %224 = load i32, i32* %17, align 4
  %225 = icmp ult i32 %224, 16
  br i1 %225, label %226, label %257

226:                                              ; preds = %223
  %227 = load i8*, i8** %9, align 8
  %228 = load i32, i32* %17, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = bitcast i8* %230 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %20, align 8
  %233 = load i8*, i8** %13, align 8
  %234 = load i32, i32* %17, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = bitcast i8* %236 to i64*
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %20, align 8
  %240 = xor i64 %238, %239
  %241 = load i8*, i8** %10, align 8
  %242 = load i32, i32* %17, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = bitcast i8* %244 to i64*
  store i64 %240, i64* %245, align 8
  %246 = load i64, i64* %20, align 8
  %247 = load i8*, i8** %13, align 8
  %248 = load i32, i32* %17, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = bitcast i8* %250 to i64*
  store i64 %246, i64* %251, align 8
  br label %252

252:                                              ; preds = %226
  %253 = load i32, i32* %17, align 4
  %254 = zext i32 %253 to i64
  %255 = add i64 %254, 8
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %17, align 4
  br label %223

257:                                              ; preds = %223
  %258 = load i64, i64* %11, align 8
  %259 = sub i64 %258, 16
  store i64 %259, i64* %11, align 8
  %260 = load i8*, i8** %10, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 16
  store i8* %261, i8** %10, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 16
  store i8* %263, i8** %9, align 8
  store i32 0, i32* %17, align 4
  br label %214

264:                                              ; preds = %214
  %265 = load i64, i64* %11, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %304

267:                                              ; preds = %264
  %268 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8
  %269 = load i8*, i8** %13, align 8
  %270 = load i8*, i8** %13, align 8
  %271 = load i8*, i8** %12, align 8
  %272 = call i32 %268(i8* %269, i8* %270, i8* %271)
  br label %273

273:                                              ; preds = %277, %267
  %274 = load i64, i64* %11, align 8
  %275 = add i64 %274, -1
  store i64 %275, i64* %11, align 8
  %276 = icmp ne i64 %274, 0
  br i1 %276, label %277, label %303

277:                                              ; preds = %273
  %278 = load i8*, i8** %13, align 8
  %279 = load i32, i32* %17, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = load i8*, i8** %9, align 8
  %285 = load i32, i32* %17, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = load i8, i8* %287, align 1
  store i8 %288, i8* %21, align 1
  %289 = zext i8 %288 to i32
  %290 = xor i32 %283, %289
  %291 = trunc i32 %290 to i8
  %292 = load i8*, i8** %10, align 8
  %293 = load i32, i32* %17, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %292, i64 %294
  store i8 %291, i8* %295, align 1
  %296 = load i8, i8* %21, align 1
  %297 = load i8*, i8** %13, align 8
  %298 = load i32, i32* %17, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  store i8 %296, i8* %300, align 1
  %301 = load i32, i32* %17, align 4
  %302 = add i32 %301, 1
  store i32 %302, i32* %17, align 4
  br label %273

303:                                              ; preds = %273
  br label %304

304:                                              ; preds = %303, %264
  %305 = load i32, i32* %17, align 4
  %306 = load i32*, i32** %14, align 8
  store i32 %305, i32* %306, align 4
  br label %351

307:                                              ; No predecessors!
  br label %308

308:                                              ; preds = %321, %307
  %309 = load i64, i64* %18, align 8
  %310 = load i64, i64* %11, align 8
  %311 = icmp ult i64 %309, %310
  br i1 %311, label %312, label %348

312:                                              ; preds = %308
  %313 = load i32, i32* %17, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %312
  %316 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8
  %317 = load i8*, i8** %13, align 8
  %318 = load i8*, i8** %13, align 8
  %319 = load i8*, i8** %12, align 8
  %320 = call i32 %316(i8* %317, i8* %318, i8* %319)
  br label %321

321:                                              ; preds = %315, %312
  %322 = load i8*, i8** %13, align 8
  %323 = load i32, i32* %17, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i32
  %328 = load i8*, i8** %9, align 8
  %329 = load i64, i64* %18, align 8
  %330 = getelementptr inbounds i8, i8* %328, i64 %329
  %331 = load i8, i8* %330, align 1
  store i8 %331, i8* %22, align 1
  %332 = zext i8 %331 to i32
  %333 = xor i32 %327, %332
  %334 = trunc i32 %333 to i8
  %335 = load i8*, i8** %10, align 8
  %336 = load i64, i64* %18, align 8
  %337 = getelementptr inbounds i8, i8* %335, i64 %336
  store i8 %334, i8* %337, align 1
  %338 = load i8, i8* %22, align 1
  %339 = load i8*, i8** %13, align 8
  %340 = load i32, i32* %17, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  store i8 %338, i8* %342, align 1
  %343 = load i64, i64* %18, align 8
  %344 = add i64 %343, 1
  store i64 %344, i64* %18, align 8
  %345 = load i32, i32* %17, align 4
  %346 = add i32 %345, 1
  %347 = urem i32 %346, 16
  store i32 %347, i32* %17, align 4
  br label %308

348:                                              ; preds = %308
  %349 = load i32, i32* %17, align 4
  %350 = load i32*, i32** %14, align 8
  store i32 %349, i32* %350, align 4
  br label %351

351:                                              ; preds = %136, %304, %348, %175
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
