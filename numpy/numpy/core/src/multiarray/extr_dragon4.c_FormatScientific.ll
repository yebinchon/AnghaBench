; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_FormatScientific.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_FormatScientific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DigitMode_Unique = common dso_local global i64 0, align 8
@CutoffMode_TotalLength = common dso_local global i32 0, align 4
@TrimMode_DptZeros = common dso_local global i64 0, align 8
@TrimMode_LeaveOneZero = common dso_local global i64 0, align 8
@TrimMode_None = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i64, i8, i32, i32, i64, i64, i64, i64, i64)* @FormatScientific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FormatScientific(i8* %0, i32 %1, i32* %2, i64 %3, i8 signext %4, i32 %5, i32 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca [7 x i8], align 1
  %35 = alloca [5 x i64], align 16
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  store i8* %0, i8** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i64 %3, i64* %16, align 8
  store i8 %4, i8* %17, align 1
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i64 %7, i64* %20, align 8
  store i64 %8, i64* %21, align 8
  store i64 %9, i64* %22, align 8
  store i64 %10, i64* %23, align 8
  store i64 %11, i64* %24, align 8
  %39 = load i64, i64* %20, align 8
  %40 = load i64, i64* @DigitMode_Unique, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %12
  %43 = load i64, i64* %21, align 8
  %44 = icmp sge i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @DEBUG_ASSERT(i32 %45)
  br label %47

47:                                               ; preds = %42, %12
  %48 = load i32, i32* %14, align 4
  %49 = icmp sgt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @DEBUG_ASSERT(i32 %50)
  %52 = load i8*, i8** %13, align 8
  store i8* %52, i8** %27, align 8
  %53 = load i8, i8* %17, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load i8, i8* %17, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 43
  br label %60

60:                                               ; preds = %56, %47
  %61 = phi i1 [ true, %47 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = add nsw i32 1, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %29, align 8
  %65 = load i64, i64* %23, align 8
  %66 = load i64, i64* %29, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %60
  store i32 0, i32* %30, align 4
  br label %69

69:                                               ; preds = %87, %68
  %70 = load i32, i32* %30, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %23, align 8
  %73 = load i64, i64* %29, align 8
  %74 = sub nsw i64 %72, %73
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %14, align 4
  %78 = icmp sgt i32 %77, 1
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi i1 [ false, %69 ], [ %78, %76 ]
  br i1 %80, label %81, label %90

81:                                               ; preds = %79
  %82 = load i8*, i8** %27, align 8
  store i8 32, i8* %82, align 1
  %83 = load i8*, i8** %27, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %27, align 8
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %30, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %30, align 4
  br label %69

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %60
  %92 = load i8, i8* %17, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 43
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32, i32* %14, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i8*, i8** %27, align 8
  store i8 43, i8* %99, align 1
  %100 = load i8*, i8** %27, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %27, align 8
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %14, align 4
  br label %118

104:                                              ; preds = %95, %91
  %105 = load i8, i8* %17, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 45
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32, i32* %14, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i8*, i8** %27, align 8
  store i8 45, i8* %112, align 1
  %113 = load i8*, i8** %27, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %27, align 8
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %111, %108, %104
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i32*, i32** %15, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i64, i64* %20, align 8
  %124 = load i32, i32* @CutoffMode_TotalLength, align 4
  %125 = load i64, i64* %21, align 8
  %126 = add nsw i64 %125, 1
  %127 = load i8*, i8** %27, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i64 @Dragon4(i32* %119, i64 %120, i32 %121, i32 %122, i64 %123, i32 %124, i64 %126, i8* %127, i32 %128, i64* %25)
  store i64 %129, i64* %26, align 8
  %130 = load i64, i64* %26, align 8
  %131 = icmp sgt i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @DEBUG_ASSERT(i32 %132)
  %134 = load i64, i64* %26, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp sle i64 %134, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @DEBUG_ASSERT(i32 %138)
  %140 = load i32, i32* %14, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %147

142:                                              ; preds = %118
  %143 = load i8*, i8** %27, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8* %144, i8** %27, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sub nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %147

147:                                              ; preds = %142, %118
  %148 = load i64, i64* %26, align 8
  %149 = sub nsw i64 %148, 1
  store i64 %149, i64* %28, align 8
  %150 = load i64, i64* %28, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %182

152:                                              ; preds = %147
  %153 = load i32, i32* %14, align 4
  %154 = icmp sgt i32 %153, 1
  br i1 %154, label %155, label %182

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %157, 2
  store i64 %158, i64* %31, align 8
  %159 = load i64, i64* %28, align 8
  %160 = load i64, i64* %31, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i64, i64* %31, align 8
  store i64 %163, i64* %28, align 8
  br label %164

164:                                              ; preds = %162, %155
  %165 = load i8*, i8** %27, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = load i8*, i8** %27, align 8
  %168 = load i64, i64* %28, align 8
  %169 = call i32 @memmove(i8* %166, i8* %167, i64 %168)
  %170 = load i8*, i8** %27, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  store i8 46, i8* %171, align 1
  %172 = load i64, i64* %28, align 8
  %173 = add nsw i64 1, %172
  %174 = load i8*, i8** %27, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8* %175, i8** %27, align 8
  %176 = load i64, i64* %28, align 8
  %177 = add nsw i64 1, %176
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = sub nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %14, align 4
  br label %182

182:                                              ; preds = %164, %152, %147
  %183 = load i64, i64* %22, align 8
  %184 = load i64, i64* @TrimMode_DptZeros, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %182
  %187 = load i64, i64* %28, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = load i32, i32* %14, align 4
  %191 = icmp sgt i32 %190, 1
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i8*, i8** %27, align 8
  store i8 46, i8* %193, align 1
  %194 = load i8*, i8** %27, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %27, align 8
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %192, %189, %186, %182
  %199 = load i64, i64* %22, align 8
  %200 = load i64, i64* @TrimMode_LeaveOneZero, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %198
  %203 = load i64, i64* %28, align 8
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %202
  %206 = load i32, i32* %14, align 4
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load i8*, i8** %27, align 8
  store i8 48, i8* %209, align 1
  %210 = load i8*, i8** %27, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %27, align 8
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %14, align 4
  %214 = load i64, i64* %28, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %28, align 8
  br label %216

216:                                              ; preds = %208, %205, %202
  br label %260

217:                                              ; preds = %198
  %218 = load i64, i64* %22, align 8
  %219 = load i64, i64* @TrimMode_None, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %259

221:                                              ; preds = %217
  %222 = load i64, i64* %20, align 8
  %223 = load i64, i64* @DigitMode_Unique, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %259

225:                                              ; preds = %221
  %226 = load i64, i64* %21, align 8
  %227 = load i64, i64* %28, align 8
  %228 = icmp sgt i64 %226, %227
  br i1 %228, label %229, label %258

229:                                              ; preds = %225
  %230 = load i64, i64* %21, align 8
  %231 = load i64, i64* %28, align 8
  %232 = sub nsw i64 %230, %231
  store i64 %232, i64* %33, align 8
  %233 = load i64, i64* %33, align 8
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %235, 1
  %237 = icmp sgt i64 %233, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %229
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = sub nsw i64 %240, 1
  store i64 %241, i64* %33, align 8
  br label %242

242:                                              ; preds = %238, %229
  %243 = load i8*, i8** %27, align 8
  %244 = load i64, i64* %33, align 8
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  store i8* %245, i8** %32, align 8
  br label %246

246:                                              ; preds = %254, %242
  %247 = load i8*, i8** %27, align 8
  %248 = load i8*, i8** %32, align 8
  %249 = icmp ult i8* %247, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %246
  %251 = load i8*, i8** %27, align 8
  store i8 48, i8* %251, align 1
  %252 = load i64, i64* %28, align 8
  %253 = add nsw i64 %252, 1
  store i64 %253, i64* %28, align 8
  br label %254

254:                                              ; preds = %250
  %255 = load i8*, i8** %27, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %27, align 8
  br label %246

257:                                              ; preds = %246
  br label %258

258:                                              ; preds = %257, %225
  br label %259

259:                                              ; preds = %258, %221, %217
  br label %260

260:                                              ; preds = %259, %216
  %261 = load i64, i64* %21, align 8
  %262 = icmp sge i64 %261, 0
  br i1 %262, label %263, label %305

263:                                              ; preds = %260
  %264 = load i64, i64* %22, align 8
  %265 = load i64, i64* @TrimMode_None, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %305

267:                                              ; preds = %263
  %268 = load i64, i64* %28, align 8
  %269 = icmp sgt i64 %268, 0
  br i1 %269, label %270, label %305

270:                                              ; preds = %267
  %271 = load i8*, i8** %27, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 -1
  store i8* %272, i8** %27, align 8
  br label %273

273:                                              ; preds = %278, %270
  %274 = load i8*, i8** %27, align 8
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %276, 48
  br i1 %277, label %278, label %285

278:                                              ; preds = %273
  %279 = load i8*, i8** %27, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 -1
  store i8* %280, i8** %27, align 8
  %281 = load i32, i32* %14, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %14, align 4
  %283 = load i64, i64* %28, align 8
  %284 = add nsw i64 %283, -1
  store i64 %284, i64* %28, align 8
  br label %273

285:                                              ; preds = %273
  %286 = load i64, i64* %22, align 8
  %287 = load i64, i64* @TrimMode_LeaveOneZero, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %302

289:                                              ; preds = %285
  %290 = load i8*, i8** %27, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 46
  br i1 %293, label %294, label %302

294:                                              ; preds = %289
  %295 = load i8*, i8** %27, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %27, align 8
  %297 = load i8*, i8** %27, align 8
  store i8 48, i8* %297, align 1
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, -1
  store i32 %299, i32* %14, align 4
  %300 = load i64, i64* %28, align 8
  %301 = add nsw i64 %300, 1
  store i64 %301, i64* %28, align 8
  br label %302

302:                                              ; preds = %294, %289, %285
  %303 = load i8*, i8** %27, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %27, align 8
  br label %305

305:                                              ; preds = %302, %267, %263, %260
  %306 = load i32, i32* %14, align 4
  %307 = icmp sgt i32 %306, 1
  br i1 %307, label %308, label %407

308:                                              ; preds = %305
  %309 = load i64, i64* %24, align 8
  %310 = icmp sgt i64 %309, 5
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  store i64 5, i64* %24, align 8
  br label %312

312:                                              ; preds = %311, %308
  %313 = load i64, i64* %24, align 8
  %314 = icmp slt i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  store i64 2, i64* %24, align 8
  br label %316

316:                                              ; preds = %315, %312
  %317 = getelementptr inbounds [7 x i8], [7 x i8]* %34, i64 0, i64 0
  store i8 101, i8* %317, align 1
  %318 = load i64, i64* %25, align 8
  %319 = icmp sge i64 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = getelementptr inbounds [7 x i8], [7 x i8]* %34, i64 0, i64 1
  store i8 43, i8* %321, align 1
  br label %326

322:                                              ; preds = %316
  %323 = getelementptr inbounds [7 x i8], [7 x i8]* %34, i64 0, i64 1
  store i8 45, i8* %323, align 1
  %324 = load i64, i64* %25, align 8
  %325 = sub nsw i64 0, %324
  store i64 %325, i64* %25, align 8
  br label %326

326:                                              ; preds = %322, %320
  %327 = load i64, i64* %25, align 8
  %328 = icmp slt i64 %327, 100000
  %329 = zext i1 %328 to i32
  %330 = call i32 @DEBUG_ASSERT(i32 %329)
  store i64 0, i64* %36, align 8
  br label %331

331:                                              ; preds = %341, %326
  %332 = load i64, i64* %36, align 8
  %333 = icmp slt i64 %332, 5
  br i1 %333, label %334, label %344

334:                                              ; preds = %331
  %335 = load i64, i64* %25, align 8
  %336 = srem i64 %335, 10
  %337 = load i64, i64* %36, align 8
  %338 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 %337
  store i64 %336, i64* %338, align 8
  %339 = load i64, i64* %25, align 8
  %340 = sdiv i64 %339, 10
  store i64 %340, i64* %25, align 8
  br label %341

341:                                              ; preds = %334
  %342 = load i64, i64* %36, align 8
  %343 = add nsw i64 %342, 1
  store i64 %343, i64* %36, align 8
  br label %331

344:                                              ; preds = %331
  store i64 5, i64* %36, align 8
  br label %345

345:                                              ; preds = %358, %344
  %346 = load i64, i64* %36, align 8
  %347 = load i64, i64* %24, align 8
  %348 = icmp sgt i64 %346, %347
  br i1 %348, label %349, label %355

349:                                              ; preds = %345
  %350 = load i64, i64* %36, align 8
  %351 = sub nsw i64 %350, 1
  %352 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = icmp eq i64 %353, 0
  br label %355

355:                                              ; preds = %349, %345
  %356 = phi i1 [ false, %345 ], [ %354, %349 ]
  br i1 %356, label %357, label %361

357:                                              ; preds = %355
  br label %358

358:                                              ; preds = %357
  %359 = load i64, i64* %36, align 8
  %360 = add nsw i64 %359, -1
  store i64 %360, i64* %36, align 8
  br label %345

361:                                              ; preds = %355
  %362 = load i64, i64* %36, align 8
  store i64 %362, i64* %37, align 8
  %363 = load i64, i64* %37, align 8
  store i64 %363, i64* %36, align 8
  br label %364

364:                                              ; preds = %379, %361
  %365 = load i64, i64* %36, align 8
  %366 = icmp sgt i64 %365, 0
  br i1 %366, label %367, label %382

367:                                              ; preds = %364
  %368 = load i64, i64* %36, align 8
  %369 = sub nsw i64 %368, 1
  %370 = getelementptr inbounds [5 x i64], [5 x i64]* %35, i64 0, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 48, %371
  %373 = trunc i64 %372 to i8
  %374 = load i64, i64* %37, align 8
  %375 = load i64, i64* %36, align 8
  %376 = sub nsw i64 %374, %375
  %377 = add nsw i64 2, %376
  %378 = getelementptr inbounds [7 x i8], [7 x i8]* %34, i64 0, i64 %377
  store i8 %373, i8* %378, align 1
  br label %379

379:                                              ; preds = %367
  %380 = load i64, i64* %36, align 8
  %381 = add nsw i64 %380, -1
  store i64 %381, i64* %36, align 8
  br label %364

382:                                              ; preds = %364
  %383 = load i64, i64* %37, align 8
  %384 = add nsw i64 %383, 2
  store i64 %384, i64* %38, align 8
  %385 = load i64, i64* %38, align 8
  %386 = load i32, i32* %14, align 4
  %387 = sext i32 %386 to i64
  %388 = sub nsw i64 %387, 1
  %389 = icmp sgt i64 %385, %388
  br i1 %389, label %390, label %394

390:                                              ; preds = %382
  %391 = load i32, i32* %14, align 4
  %392 = sext i32 %391 to i64
  %393 = sub nsw i64 %392, 1
  store i64 %393, i64* %38, align 8
  br label %394

394:                                              ; preds = %390, %382
  %395 = load i8*, i8** %27, align 8
  %396 = getelementptr inbounds [7 x i8], [7 x i8]* %34, i64 0, i64 0
  %397 = load i64, i64* %38, align 8
  %398 = call i32 @memcpy(i8* %395, i8* %396, i64 %397)
  %399 = load i64, i64* %38, align 8
  %400 = load i8*, i8** %27, align 8
  %401 = getelementptr inbounds i8, i8* %400, i64 %399
  store i8* %401, i8** %27, align 8
  %402 = load i64, i64* %38, align 8
  %403 = load i32, i32* %14, align 4
  %404 = sext i32 %403 to i64
  %405 = sub nsw i64 %404, %402
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %14, align 4
  br label %407

407:                                              ; preds = %394, %305
  %408 = load i32, i32* %14, align 4
  %409 = icmp sgt i32 %408, 0
  %410 = zext i1 %409 to i32
  %411 = call i32 @DEBUG_ASSERT(i32 %410)
  %412 = load i8*, i8** %27, align 8
  %413 = getelementptr inbounds i8, i8* %412, i64 0
  store i8 0, i8* %413, align 1
  %414 = load i8*, i8** %27, align 8
  %415 = load i8*, i8** %13, align 8
  %416 = ptrtoint i8* %414 to i64
  %417 = ptrtoint i8* %415 to i64
  %418 = sub i64 %416, %417
  %419 = trunc i64 %418 to i32
  ret i32 %419
}

declare dso_local i32 @DEBUG_ASSERT(i32) #1

declare dso_local i64 @Dragon4(i32*, i64, i32, i32, i64, i32, i64, i8*, i32, i64*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
