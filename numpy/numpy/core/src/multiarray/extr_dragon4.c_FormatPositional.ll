; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_FormatPositional.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_FormatPositional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DigitMode_Unique = common dso_local global i64 0, align 8
@TrimMode_DptZeros = common dso_local global i64 0, align 8
@CutoffMode_TotalLength = common dso_local global i64 0, align 8
@TrimMode_LeaveOneZero = common dso_local global i64 0, align 8
@TrimMode_None = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i32*, i64, i8, i64, i32, i64, i64, i64, i64, i64, i64)* @FormatPositional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FormatPositional(i8* %0, i64 %1, i32* %2, i64 %3, i8 signext %4, i64 %5, i32 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  store i8* %0, i8** %14, align 8
  store i64 %1, i64* %15, align 8
  store i32* %2, i32** %16, align 8
  store i64 %3, i64* %17, align 8
  store i8 %4, i8* %18, align 1
  store i64 %5, i64* %19, align 8
  store i32 %6, i32* %20, align 4
  store i64 %7, i64* %21, align 8
  store i64 %8, i64* %22, align 8
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store i64 %11, i64* %25, align 8
  store i64 %12, i64* %26, align 8
  store i64 0, i64* %29, align 8
  store i64 0, i64* %30, align 8
  %46 = load i64, i64* %15, align 8
  %47 = sub nsw i64 %46, 1
  store i64 %47, i64* %31, align 8
  store i64 0, i64* %32, align 8
  store i64 0, i64* %33, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp sgt i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @DEBUG_ASSERT(i32 %50)
  %52 = load i64, i64* %21, align 8
  %53 = load i64, i64* @DigitMode_Unique, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %13
  %56 = load i64, i64* %23, align 8
  %57 = icmp sge i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @DEBUG_ASSERT(i32 %58)
  br label %60

60:                                               ; preds = %55, %13
  %61 = load i8, i8* %18, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 43
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i64, i64* %32, align 8
  %66 = load i64, i64* %31, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %14, align 8
  %70 = load i64, i64* %32, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %32, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 43, i8* %72, align 1
  store i64 1, i64* %30, align 8
  br label %87

73:                                               ; preds = %64, %60
  %74 = load i8, i8* %18, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 45
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i64, i64* %32, align 8
  %79 = load i64, i64* %31, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %32, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %32, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 45, i8* %85, align 1
  store i64 1, i64* %30, align 8
  br label %86

86:                                               ; preds = %81, %77, %73
  br label %87

87:                                               ; preds = %86, %68
  %88 = load i32*, i32** %16, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i32, i32* %20, align 4
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* %22, align 8
  %94 = load i64, i64* %23, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i64, i64* %30, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i64, i64* %31, align 8
  %99 = load i64, i64* %30, align 8
  %100 = sub nsw i64 %98, %99
  %101 = call i64 @Dragon4(i32* %88, i64 %89, i64 %90, i32 %91, i64 %92, i64 %93, i64 %94, i8* %97, i64 %100, i64* %27)
  store i64 %101, i64* %28, align 8
  %102 = load i64, i64* %28, align 8
  %103 = icmp sgt i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @DEBUG_ASSERT(i32 %104)
  %106 = load i64, i64* %28, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp sle i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @DEBUG_ASSERT(i32 %109)
  %111 = load i64, i64* %27, align 8
  %112 = icmp sge i64 %111, 0
  br i1 %112, label %113, label %200

113:                                              ; preds = %87
  %114 = load i64, i64* %27, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %29, align 8
  %116 = load i64, i64* %28, align 8
  %117 = load i64, i64* %29, align 8
  %118 = icmp sle i64 %116, %117
  br i1 %118, label %119, label %151

119:                                              ; preds = %113
  %120 = load i64, i64* %29, align 8
  %121 = load i64, i64* %28, align 8
  %122 = sub nsw i64 %120, %121
  store i64 %122, i64* %35, align 8
  %123 = load i64, i64* %28, align 8
  %124 = load i64, i64* %32, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %32, align 8
  %126 = load i64, i64* %32, align 8
  %127 = load i64, i64* %35, align 8
  %128 = add nsw i64 %126, %127
  %129 = load i64, i64* %31, align 8
  %130 = icmp sgt i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %119
  %132 = load i64, i64* %31, align 8
  %133 = load i64, i64* %32, align 8
  %134 = sub nsw i64 %132, %133
  store i64 %134, i64* %35, align 8
  br label %135

135:                                              ; preds = %131, %119
  %136 = load i64, i64* %35, align 8
  %137 = load i64, i64* %28, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %28, align 8
  br label %139

139:                                              ; preds = %147, %135
  %140 = load i64, i64* %35, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load i8*, i8** %14, align 8
  %144 = load i64, i64* %32, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %32, align 8
  %146 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8 48, i8* %146, align 1
  br label %147

147:                                              ; preds = %142
  %148 = load i64, i64* %35, align 8
  %149 = add nsw i64 %148, -1
  store i64 %149, i64* %35, align 8
  br label %139

150:                                              ; preds = %139
  br label %199

151:                                              ; preds = %113
  %152 = load i64, i64* %28, align 8
  %153 = load i64, i64* %29, align 8
  %154 = icmp sgt i64 %152, %153
  br i1 %154, label %155, label %198

155:                                              ; preds = %151
  %156 = load i64, i64* %28, align 8
  %157 = load i64, i64* %29, align 8
  %158 = sub nsw i64 %156, %157
  store i64 %158, i64* %33, align 8
  %159 = load i64, i64* %31, align 8
  %160 = load i64, i64* %29, align 8
  %161 = sub nsw i64 %159, %160
  %162 = sub nsw i64 %161, 1
  %163 = load i64, i64* %32, align 8
  %164 = sub nsw i64 %162, %163
  store i64 %164, i64* %36, align 8
  %165 = load i64, i64* %33, align 8
  %166 = load i64, i64* %36, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %155
  %169 = load i64, i64* %36, align 8
  store i64 %169, i64* %33, align 8
  br label %170

170:                                              ; preds = %168, %155
  %171 = load i8*, i8** %14, align 8
  %172 = load i64, i64* %32, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  %174 = load i64, i64* %29, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i8*, i8** %14, align 8
  %178 = load i64, i64* %32, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  %180 = load i64, i64* %29, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  %182 = load i64, i64* %33, align 8
  %183 = call i32 @memmove(i8* %176, i8* %181, i64 %182)
  %184 = load i64, i64* %29, align 8
  %185 = load i64, i64* %32, align 8
  %186 = add nsw i64 %185, %184
  store i64 %186, i64* %32, align 8
  %187 = load i8*, i8** %14, align 8
  %188 = load i64, i64* %32, align 8
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8 46, i8* %189, align 1
  %190 = load i64, i64* %29, align 8
  %191 = add nsw i64 %190, 1
  %192 = load i64, i64* %33, align 8
  %193 = add nsw i64 %191, %192
  store i64 %193, i64* %28, align 8
  %194 = load i64, i64* %33, align 8
  %195 = add nsw i64 1, %194
  %196 = load i64, i64* %32, align 8
  %197 = add nsw i64 %196, %195
  store i64 %197, i64* %32, align 8
  br label %198

198:                                              ; preds = %170, %151
  br label %199

199:                                              ; preds = %198, %150
  br label %286

200:                                              ; preds = %87
  store i64 0, i64* %37, align 8
  %201 = load i64, i64* %32, align 8
  %202 = add nsw i64 %201, 2
  %203 = load i64, i64* %31, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %261

205:                                              ; preds = %200
  %206 = load i64, i64* %31, align 8
  %207 = sub nsw i64 %206, 2
  %208 = load i64, i64* %32, align 8
  %209 = sub nsw i64 %207, %208
  store i64 %209, i64* %38, align 8
  %210 = load i64, i64* %27, align 8
  %211 = add nsw i64 %210, 1
  %212 = sub nsw i64 0, %211
  store i64 %212, i64* %37, align 8
  %213 = load i64, i64* %37, align 8
  %214 = load i64, i64* %38, align 8
  %215 = icmp sgt i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %205
  %217 = load i64, i64* %38, align 8
  store i64 %217, i64* %37, align 8
  br label %218

218:                                              ; preds = %216, %205
  %219 = load i64, i64* %37, align 8
  %220 = add nsw i64 2, %219
  store i64 %220, i64* %39, align 8
  %221 = load i64, i64* %28, align 8
  store i64 %221, i64* %33, align 8
  %222 = load i64, i64* %31, align 8
  %223 = load i64, i64* %39, align 8
  %224 = sub nsw i64 %222, %223
  %225 = load i64, i64* %32, align 8
  %226 = sub nsw i64 %224, %225
  store i64 %226, i64* %40, align 8
  %227 = load i64, i64* %33, align 8
  %228 = load i64, i64* %40, align 8
  %229 = icmp sgt i64 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %218
  %231 = load i64, i64* %40, align 8
  store i64 %231, i64* %33, align 8
  br label %232

232:                                              ; preds = %230, %218
  %233 = load i8*, i8** %14, align 8
  %234 = load i64, i64* %32, align 8
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  %236 = load i64, i64* %39, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  %238 = load i8*, i8** %14, align 8
  %239 = load i64, i64* %32, align 8
  %240 = getelementptr inbounds i8, i8* %238, i64 %239
  %241 = load i64, i64* %33, align 8
  %242 = call i32 @memmove(i8* %237, i8* %240, i64 %241)
  store i64 2, i64* %41, align 8
  br label %243

243:                                              ; preds = %253, %232
  %244 = load i64, i64* %41, align 8
  %245 = load i64, i64* %39, align 8
  %246 = icmp slt i64 %244, %245
  br i1 %246, label %247, label %256

247:                                              ; preds = %243
  %248 = load i8*, i8** %14, align 8
  %249 = load i64, i64* %32, align 8
  %250 = load i64, i64* %41, align 8
  %251 = add nsw i64 %249, %250
  %252 = getelementptr inbounds i8, i8* %248, i64 %251
  store i8 48, i8* %252, align 1
  br label %253

253:                                              ; preds = %247
  %254 = load i64, i64* %41, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* %41, align 8
  br label %243

256:                                              ; preds = %243
  %257 = load i64, i64* %37, align 8
  %258 = load i64, i64* %33, align 8
  %259 = add nsw i64 %258, %257
  store i64 %259, i64* %33, align 8
  %260 = load i64, i64* %33, align 8
  store i64 %260, i64* %28, align 8
  br label %261

261:                                              ; preds = %256, %200
  %262 = load i64, i64* %32, align 8
  %263 = add nsw i64 %262, 1
  %264 = load i64, i64* %31, align 8
  %265 = icmp slt i64 %263, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load i8*, i8** %14, align 8
  %268 = load i64, i64* %32, align 8
  %269 = add nsw i64 %268, 1
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  store i8 46, i8* %270, align 1
  br label %271

271:                                              ; preds = %266, %261
  %272 = load i64, i64* %32, align 8
  %273 = load i64, i64* %31, align 8
  %274 = icmp slt i64 %272, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %271
  %276 = load i8*, i8** %14, align 8
  %277 = load i64, i64* %32, align 8
  %278 = getelementptr inbounds i8, i8* %276, i64 %277
  store i8 48, i8* %278, align 1
  %279 = load i64, i64* %28, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* %28, align 8
  br label %281

281:                                              ; preds = %275, %271
  store i64 1, i64* %29, align 8
  %282 = load i64, i64* %33, align 8
  %283 = add nsw i64 2, %282
  %284 = load i64, i64* %32, align 8
  %285 = add nsw i64 %284, %283
  store i64 %285, i64* %32, align 8
  br label %286

286:                                              ; preds = %281, %199
  %287 = load i64, i64* %24, align 8
  %288 = load i64, i64* @TrimMode_DptZeros, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %302

290:                                              ; preds = %286
  %291 = load i64, i64* %33, align 8
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %290
  %294 = load i64, i64* %32, align 8
  %295 = load i64, i64* %31, align 8
  %296 = icmp slt i64 %294, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = load i8*, i8** %14, align 8
  %299 = load i64, i64* %32, align 8
  %300 = add nsw i64 %299, 1
  store i64 %300, i64* %32, align 8
  %301 = getelementptr inbounds i8, i8* %298, i64 %299
  store i8 46, i8* %301, align 1
  br label %302

302:                                              ; preds = %297, %293, %290, %286
  %303 = load i64, i64* %23, align 8
  store i64 %303, i64* %34, align 8
  %304 = load i64, i64* %22, align 8
  %305 = load i64, i64* @CutoffMode_TotalLength, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %302
  %308 = load i64, i64* %23, align 8
  %309 = icmp sge i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = load i64, i64* %23, align 8
  %312 = load i64, i64* %29, align 8
  %313 = sub nsw i64 %311, %312
  store i64 %313, i64* %34, align 8
  br label %314

314:                                              ; preds = %310, %307, %302
  %315 = load i64, i64* %24, align 8
  %316 = load i64, i64* @TrimMode_LeaveOneZero, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %333

318:                                              ; preds = %314
  %319 = load i64, i64* %33, align 8
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %332

321:                                              ; preds = %318
  %322 = load i64, i64* %32, align 8
  %323 = load i64, i64* %31, align 8
  %324 = icmp slt i64 %322, %323
  br i1 %324, label %325, label %332

325:                                              ; preds = %321
  %326 = load i8*, i8** %14, align 8
  %327 = load i64, i64* %32, align 8
  %328 = add nsw i64 %327, 1
  store i64 %328, i64* %32, align 8
  %329 = getelementptr inbounds i8, i8* %326, i64 %327
  store i8 48, i8* %329, align 1
  %330 = load i64, i64* %33, align 8
  %331 = add nsw i64 %330, 1
  store i64 %331, i64* %33, align 8
  br label %332

332:                                              ; preds = %325, %321, %318
  br label %379

333:                                              ; preds = %314
  %334 = load i64, i64* %24, align 8
  %335 = load i64, i64* @TrimMode_None, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %378

337:                                              ; preds = %333
  %338 = load i64, i64* %21, align 8
  %339 = load i64, i64* @DigitMode_Unique, align 8
  %340 = icmp ne i64 %338, %339
  br i1 %340, label %341, label %378

341:                                              ; preds = %337
  %342 = load i64, i64* %34, align 8
  %343 = load i64, i64* %33, align 8
  %344 = icmp sgt i64 %342, %343
  br i1 %344, label %345, label %378

345:                                              ; preds = %341
  %346 = load i64, i64* %32, align 8
  %347 = load i64, i64* %31, align 8
  %348 = icmp slt i64 %346, %347
  br i1 %348, label %349, label %378

349:                                              ; preds = %345
  %350 = load i64, i64* %34, align 8
  %351 = load i64, i64* %33, align 8
  %352 = sub nsw i64 %350, %351
  store i64 %352, i64* %42, align 8
  %353 = load i64, i64* %32, align 8
  %354 = load i64, i64* %42, align 8
  %355 = add nsw i64 %353, %354
  %356 = load i64, i64* %31, align 8
  %357 = icmp sgt i64 %355, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %349
  %359 = load i64, i64* %31, align 8
  %360 = load i64, i64* %32, align 8
  %361 = sub nsw i64 %359, %360
  store i64 %361, i64* %42, align 8
  br label %362

362:                                              ; preds = %358, %349
  %363 = load i64, i64* %42, align 8
  %364 = load i64, i64* %33, align 8
  %365 = add nsw i64 %364, %363
  store i64 %365, i64* %33, align 8
  br label %366

366:                                              ; preds = %374, %362
  %367 = load i64, i64* %42, align 8
  %368 = icmp sgt i64 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %366
  %370 = load i8*, i8** %14, align 8
  %371 = load i64, i64* %32, align 8
  %372 = add nsw i64 %371, 1
  store i64 %372, i64* %32, align 8
  %373 = getelementptr inbounds i8, i8* %370, i64 %371
  store i8 48, i8* %373, align 1
  br label %374

374:                                              ; preds = %369
  %375 = load i64, i64* %42, align 8
  %376 = add nsw i64 %375, -1
  store i64 %376, i64* %42, align 8
  br label %366

377:                                              ; preds = %366
  br label %378

378:                                              ; preds = %377, %345, %341, %337, %333
  br label %379

379:                                              ; preds = %378, %332
  %380 = load i64, i64* %23, align 8
  %381 = icmp sge i64 %380, 0
  br i1 %381, label %382, label %423

382:                                              ; preds = %379
  %383 = load i64, i64* %24, align 8
  %384 = load i64, i64* @TrimMode_None, align 8
  %385 = icmp ne i64 %383, %384
  br i1 %385, label %386, label %423

386:                                              ; preds = %382
  %387 = load i64, i64* %33, align 8
  %388 = icmp sgt i64 %387, 0
  br i1 %388, label %389, label %423

389:                                              ; preds = %386
  br label %390

390:                                              ; preds = %398, %389
  %391 = load i8*, i8** %14, align 8
  %392 = load i64, i64* %32, align 8
  %393 = sub nsw i64 %392, 1
  %394 = getelementptr inbounds i8, i8* %391, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = sext i8 %395 to i32
  %397 = icmp eq i32 %396, 48
  br i1 %397, label %398, label %403

398:                                              ; preds = %390
  %399 = load i64, i64* %32, align 8
  %400 = add nsw i64 %399, -1
  store i64 %400, i64* %32, align 8
  %401 = load i64, i64* %33, align 8
  %402 = add nsw i64 %401, -1
  store i64 %402, i64* %33, align 8
  br label %390

403:                                              ; preds = %390
  %404 = load i64, i64* %24, align 8
  %405 = load i64, i64* @TrimMode_LeaveOneZero, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %422

407:                                              ; preds = %403
  %408 = load i8*, i8** %14, align 8
  %409 = load i64, i64* %32, align 8
  %410 = sub nsw i64 %409, 1
  %411 = getelementptr inbounds i8, i8* %408, i64 %410
  %412 = load i8, i8* %411, align 1
  %413 = sext i8 %412 to i32
  %414 = icmp eq i32 %413, 46
  br i1 %414, label %415, label %422

415:                                              ; preds = %407
  %416 = load i8*, i8** %14, align 8
  %417 = load i64, i64* %32, align 8
  %418 = add nsw i64 %417, 1
  store i64 %418, i64* %32, align 8
  %419 = getelementptr inbounds i8, i8* %416, i64 %417
  store i8 48, i8* %419, align 1
  %420 = load i64, i64* %33, align 8
  %421 = add nsw i64 %420, 1
  store i64 %421, i64* %33, align 8
  br label %422

422:                                              ; preds = %415, %407, %403
  br label %423

423:                                              ; preds = %422, %386, %382, %379
  %424 = load i64, i64* %26, align 8
  %425 = load i64, i64* %33, align 8
  %426 = icmp sge i64 %424, %425
  br i1 %426, label %427, label %469

427:                                              ; preds = %423
  %428 = load i64, i64* %26, align 8
  %429 = load i64, i64* %33, align 8
  %430 = sub nsw i64 %428, %429
  store i64 %430, i64* %43, align 8
  %431 = load i64, i64* %24, align 8
  %432 = load i64, i64* @TrimMode_DptZeros, align 8
  %433 = icmp eq i64 %431, %432
  br i1 %433, label %434, label %446

434:                                              ; preds = %427
  %435 = load i64, i64* %33, align 8
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %437, label %446

437:                                              ; preds = %434
  %438 = load i64, i64* %32, align 8
  %439 = load i64, i64* %31, align 8
  %440 = icmp slt i64 %438, %439
  br i1 %440, label %441, label %446

441:                                              ; preds = %437
  %442 = load i8*, i8** %14, align 8
  %443 = load i64, i64* %32, align 8
  %444 = add nsw i64 %443, 1
  store i64 %444, i64* %32, align 8
  %445 = getelementptr inbounds i8, i8* %442, i64 %443
  store i8 32, i8* %445, align 1
  br label %446

446:                                              ; preds = %441, %437, %434, %427
  %447 = load i64, i64* %32, align 8
  %448 = load i64, i64* %43, align 8
  %449 = add nsw i64 %447, %448
  %450 = load i64, i64* %31, align 8
  %451 = icmp sgt i64 %449, %450
  br i1 %451, label %452, label %456

452:                                              ; preds = %446
  %453 = load i64, i64* %31, align 8
  %454 = load i64, i64* %32, align 8
  %455 = sub nsw i64 %453, %454
  store i64 %455, i64* %43, align 8
  br label %456

456:                                              ; preds = %452, %446
  br label %457

457:                                              ; preds = %465, %456
  %458 = load i64, i64* %43, align 8
  %459 = icmp sgt i64 %458, 0
  br i1 %459, label %460, label %468

460:                                              ; preds = %457
  %461 = load i8*, i8** %14, align 8
  %462 = load i64, i64* %32, align 8
  %463 = add nsw i64 %462, 1
  store i64 %463, i64* %32, align 8
  %464 = getelementptr inbounds i8, i8* %461, i64 %462
  store i8 32, i8* %464, align 1
  br label %465

465:                                              ; preds = %460
  %466 = load i64, i64* %43, align 8
  %467 = add nsw i64 %466, -1
  store i64 %467, i64* %43, align 8
  br label %457

468:                                              ; preds = %457
  br label %469

469:                                              ; preds = %468, %423
  %470 = load i64, i64* %25, align 8
  %471 = load i64, i64* %29, align 8
  %472 = load i64, i64* %30, align 8
  %473 = add nsw i64 %471, %472
  %474 = icmp sgt i64 %470, %473
  br i1 %474, label %475, label %517

475:                                              ; preds = %469
  %476 = load i64, i64* %25, align 8
  %477 = load i64, i64* %29, align 8
  %478 = load i64, i64* %30, align 8
  %479 = add nsw i64 %477, %478
  %480 = sub nsw i64 %476, %479
  store i64 %480, i64* %44, align 8
  %481 = load i64, i64* %32, align 8
  store i64 %481, i64* %45, align 8
  %482 = load i64, i64* %45, align 8
  %483 = load i64, i64* %44, align 8
  %484 = add nsw i64 %482, %483
  %485 = load i64, i64* %31, align 8
  %486 = icmp sgt i64 %484, %485
  br i1 %486, label %487, label %491

487:                                              ; preds = %475
  %488 = load i64, i64* %31, align 8
  %489 = load i64, i64* %44, align 8
  %490 = sub nsw i64 %488, %489
  store i64 %490, i64* %45, align 8
  br label %491

491:                                              ; preds = %487, %475
  %492 = load i64, i64* %45, align 8
  %493 = icmp sgt i64 %492, 0
  br i1 %493, label %494, label %501

494:                                              ; preds = %491
  %495 = load i8*, i8** %14, align 8
  %496 = load i64, i64* %44, align 8
  %497 = getelementptr inbounds i8, i8* %495, i64 %496
  %498 = load i8*, i8** %14, align 8
  %499 = load i64, i64* %45, align 8
  %500 = call i32 @memmove(i8* %497, i8* %498, i64 %499)
  br label %501

501:                                              ; preds = %494, %491
  %502 = load i64, i64* %44, align 8
  %503 = load i64, i64* %45, align 8
  %504 = add nsw i64 %502, %503
  store i64 %504, i64* %32, align 8
  br label %505

505:                                              ; preds = %513, %501
  %506 = load i64, i64* %44, align 8
  %507 = icmp sgt i64 %506, 0
  br i1 %507, label %508, label %516

508:                                              ; preds = %505
  %509 = load i8*, i8** %14, align 8
  %510 = load i64, i64* %44, align 8
  %511 = sub nsw i64 %510, 1
  %512 = getelementptr inbounds i8, i8* %509, i64 %511
  store i8 32, i8* %512, align 1
  br label %513

513:                                              ; preds = %508
  %514 = load i64, i64* %44, align 8
  %515 = add nsw i64 %514, -1
  store i64 %515, i64* %44, align 8
  br label %505

516:                                              ; preds = %505
  br label %517

517:                                              ; preds = %516, %469
  %518 = load i64, i64* %32, align 8
  %519 = load i64, i64* %31, align 8
  %520 = icmp sle i64 %518, %519
  %521 = zext i1 %520 to i32
  %522 = call i32 @DEBUG_ASSERT(i32 %521)
  %523 = load i8*, i8** %14, align 8
  %524 = load i64, i64* %32, align 8
  %525 = getelementptr inbounds i8, i8* %523, i64 %524
  store i8 0, i8* %525, align 1
  %526 = load i64, i64* %32, align 8
  ret i64 %526
}

declare dso_local i32 @DEBUG_ASSERT(i32) #1

declare dso_local i64 @Dragon4(i32*, i64, i64, i32, i64, i64, i64, i8*, i64, i64*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
