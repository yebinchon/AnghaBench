; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_qsort_arg.c_qsort_arg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_qsort_arg.c_qsort_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qsort_arg(i8* %0, i64 %1, i64 %2, i32 (i8*, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (i8*, i8*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (i8*, i8*, i8*)* %3, i32 (i8*, i8*, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  br label %24

24:                                               ; preds = %368, %340, %5
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @SWAPINIT(i8* %25, i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 7
  br i1 %29, label %30, label %78

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %16, align 8
  br label %34

34:                                               ; preds = %73, %30
  %35 = load i8*, i8** %16, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = mul i64 %37, %38
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = icmp ult i8* %35, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %34
  %43 = load i8*, i8** %16, align 8
  store i8* %43, i8** %15, align 8
  br label %44

44:                                               ; preds = %67, %42
  %45 = load i8*, i8** %15, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ugt i8* %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8*, i8** %15, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 %49(i8* %53, i8* %54, i8* %55)
  %57 = icmp sgt i32 %56, 0
  br label %58

58:                                               ; preds = %48, %44
  %59 = phi i1 [ false, %44 ], [ %57, %48 ]
  br i1 %59, label %60, label %72

60:                                               ; preds = %58
  %61 = load i8*, i8** %15, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @swap(i8* %61, i8* %65)
  br label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %8, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = sub i64 0, %68
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %15, align 8
  br label %44

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %8, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %16, align 8
  br label %34

77:                                               ; preds = %34
  br label %373

78:                                               ; preds = %24
  store i32 1, i32* %22, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %16, align 8
  br label %82

82:                                               ; preds = %102, %78
  %83 = load i8*, i8** %16, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = mul i64 %85, %86
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = icmp ult i8* %83, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %82
  %91 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub i64 0, %93
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8*, i8** %16, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 %91(i8* %95, i8* %96, i8* %97)
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  store i32 0, i32* %22, align 4
  br label %106

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %8, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %105, i8** %16, align 8
  br label %82

106:                                              ; preds = %100, %82
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %373

110:                                              ; preds = %106
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = udiv i64 %112, 2
  %114 = load i64, i64* %8, align 8
  %115 = mul i64 %113, %114
  %116 = getelementptr inbounds i8, i8* %111, i64 %115
  store i8* %116, i8** %16, align 8
  %117 = load i64, i64* %7, align 8
  %118 = icmp ugt i64 %117, 7
  br i1 %118, label %119, label %176

119:                                              ; preds = %110
  %120 = load i8*, i8** %6, align 8
  store i8* %120, i8** %15, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = sub i64 %122, 1
  %124 = load i64, i64* %8, align 8
  %125 = mul i64 %123, %124
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  store i8* %126, i8** %17, align 8
  %127 = load i64, i64* %7, align 8
  %128 = icmp ugt i64 %127, 40
  br i1 %128, label %129, label %169

129:                                              ; preds = %119
  %130 = load i64, i64* %7, align 8
  %131 = udiv i64 %130, 8
  %132 = load i64, i64* %8, align 8
  %133 = mul i64 %131, %132
  store i64 %133, i64* %23, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = load i64, i64* %23, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8*, i8** %15, align 8
  %139 = load i64, i64* %23, align 8
  %140 = mul i64 2, %139
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = call i8* @med3(i8* %134, i8* %137, i8* %141, i32 (i8*, i8*, i8*)* %142, i8* %143)
  store i8* %144, i8** %15, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = load i64, i64* %23, align 8
  %147 = sub i64 0, %146
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8*, i8** %16, align 8
  %150 = load i8*, i8** %16, align 8
  %151 = load i64, i64* %23, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = call i8* @med3(i8* %148, i8* %149, i8* %152, i32 (i8*, i8*, i8*)* %153, i8* %154)
  store i8* %155, i8** %16, align 8
  %156 = load i8*, i8** %17, align 8
  %157 = load i64, i64* %23, align 8
  %158 = mul i64 2, %157
  %159 = sub i64 0, %158
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  %161 = load i8*, i8** %17, align 8
  %162 = load i64, i64* %23, align 8
  %163 = sub i64 0, %162
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8*, i8** %17, align 8
  %166 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = call i8* @med3(i8* %160, i8* %164, i8* %165, i32 (i8*, i8*, i8*)* %166, i8* %167)
  store i8* %168, i8** %17, align 8
  br label %169

169:                                              ; preds = %129, %119
  %170 = load i8*, i8** %15, align 8
  %171 = load i8*, i8** %16, align 8
  %172 = load i8*, i8** %17, align 8
  %173 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = call i8* @med3(i8* %170, i8* %171, i8* %172, i32 (i8*, i8*, i8*)* %173, i8* %174)
  store i8* %175, i8** %16, align 8
  br label %176

176:                                              ; preds = %169, %110
  %177 = load i8*, i8** %6, align 8
  %178 = load i8*, i8** %16, align 8
  %179 = call i32 @swap(i8* %177, i8* %178)
  %180 = load i8*, i8** %6, align 8
  %181 = load i64, i64* %8, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8* %182, i8** %12, align 8
  store i8* %182, i8** %11, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load i64, i64* %7, align 8
  %185 = sub i64 %184, 1
  %186 = load i64, i64* %8, align 8
  %187 = mul i64 %185, %186
  %188 = getelementptr inbounds i8, i8* %183, i64 %187
  store i8* %188, i8** %14, align 8
  store i8* %188, i8** %13, align 8
  br label %189

189:                                              ; preds = %252, %176
  br label %190

190:                                              ; preds = %213, %189
  %191 = load i8*, i8** %12, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = icmp ule i8* %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = load i8*, i8** %6, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = call i32 %195(i8* %196, i8* %197, i8* %198)
  store i32 %199, i32* %20, align 4
  %200 = icmp sle i32 %199, 0
  br label %201

201:                                              ; preds = %194, %190
  %202 = phi i1 [ false, %190 ], [ %200, %194 ]
  br i1 %202, label %203, label %217

203:                                              ; preds = %201
  %204 = load i32, i32* %20, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %203
  %207 = load i8*, i8** %11, align 8
  %208 = load i8*, i8** %12, align 8
  %209 = call i32 @swap(i8* %207, i8* %208)
  %210 = load i64, i64* %8, align 8
  %211 = load i8*, i8** %11, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 %210
  store i8* %212, i8** %11, align 8
  br label %213

213:                                              ; preds = %206, %203
  %214 = load i64, i64* %8, align 8
  %215 = load i8*, i8** %12, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 %214
  store i8* %216, i8** %12, align 8
  br label %190

217:                                              ; preds = %201
  br label %218

218:                                              ; preds = %242, %217
  %219 = load i8*, i8** %12, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = icmp ule i8* %219, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %224 = load i8*, i8** %13, align 8
  %225 = load i8*, i8** %6, align 8
  %226 = load i8*, i8** %10, align 8
  %227 = call i32 %223(i8* %224, i8* %225, i8* %226)
  store i32 %227, i32* %20, align 4
  %228 = icmp sge i32 %227, 0
  br label %229

229:                                              ; preds = %222, %218
  %230 = phi i1 [ false, %218 ], [ %228, %222 ]
  br i1 %230, label %231, label %247

231:                                              ; preds = %229
  %232 = load i32, i32* %20, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %231
  %235 = load i8*, i8** %13, align 8
  %236 = load i8*, i8** %14, align 8
  %237 = call i32 @swap(i8* %235, i8* %236)
  %238 = load i64, i64* %8, align 8
  %239 = load i8*, i8** %14, align 8
  %240 = sub i64 0, %238
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8* %241, i8** %14, align 8
  br label %242

242:                                              ; preds = %234, %231
  %243 = load i64, i64* %8, align 8
  %244 = load i8*, i8** %13, align 8
  %245 = sub i64 0, %243
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8* %246, i8** %13, align 8
  br label %218

247:                                              ; preds = %229
  %248 = load i8*, i8** %12, align 8
  %249 = load i8*, i8** %13, align 8
  %250 = icmp ugt i8* %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  br label %263

252:                                              ; preds = %247
  %253 = load i8*, i8** %12, align 8
  %254 = load i8*, i8** %13, align 8
  %255 = call i32 @swap(i8* %253, i8* %254)
  %256 = load i64, i64* %8, align 8
  %257 = load i8*, i8** %12, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 %256
  store i8* %258, i8** %12, align 8
  %259 = load i64, i64* %8, align 8
  %260 = load i8*, i8** %13, align 8
  %261 = sub i64 0, %259
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  store i8* %262, i8** %13, align 8
  br label %189

263:                                              ; preds = %251
  %264 = load i8*, i8** %6, align 8
  %265 = load i64, i64* %7, align 8
  %266 = load i64, i64* %8, align 8
  %267 = mul i64 %265, %266
  %268 = getelementptr inbounds i8, i8* %264, i64 %267
  store i8* %268, i8** %17, align 8
  %269 = load i8*, i8** %11, align 8
  %270 = load i8*, i8** %6, align 8
  %271 = ptrtoint i8* %269 to i64
  %272 = ptrtoint i8* %270 to i64
  %273 = sub i64 %271, %272
  %274 = trunc i64 %273 to i32
  %275 = load i8*, i8** %12, align 8
  %276 = load i8*, i8** %11, align 8
  %277 = ptrtoint i8* %275 to i64
  %278 = ptrtoint i8* %276 to i64
  %279 = sub i64 %277, %278
  %280 = trunc i64 %279 to i32
  %281 = call i64 @Min(i32 %274, i32 %280)
  store i64 %281, i64* %18, align 8
  %282 = load i8*, i8** %6, align 8
  %283 = load i8*, i8** %12, align 8
  %284 = load i64, i64* %18, align 8
  %285 = sub i64 0, %284
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  %287 = load i64, i64* %18, align 8
  %288 = call i32 @vecswap(i8* %282, i8* %286, i64 %287)
  %289 = load i8*, i8** %14, align 8
  %290 = load i8*, i8** %13, align 8
  %291 = ptrtoint i8* %289 to i64
  %292 = ptrtoint i8* %290 to i64
  %293 = sub i64 %291, %292
  %294 = trunc i64 %293 to i32
  %295 = load i8*, i8** %17, align 8
  %296 = load i8*, i8** %14, align 8
  %297 = ptrtoint i8* %295 to i64
  %298 = ptrtoint i8* %296 to i64
  %299 = sub i64 %297, %298
  %300 = load i64, i64* %8, align 8
  %301 = sub i64 %299, %300
  %302 = trunc i64 %301 to i32
  %303 = call i64 @Min(i32 %294, i32 %302)
  store i64 %303, i64* %18, align 8
  %304 = load i8*, i8** %12, align 8
  %305 = load i8*, i8** %17, align 8
  %306 = load i64, i64* %18, align 8
  %307 = sub i64 0, %306
  %308 = getelementptr inbounds i8, i8* %305, i64 %307
  %309 = load i64, i64* %18, align 8
  %310 = call i32 @vecswap(i8* %304, i8* %308, i64 %309)
  %311 = load i8*, i8** %12, align 8
  %312 = load i8*, i8** %11, align 8
  %313 = ptrtoint i8* %311 to i64
  %314 = ptrtoint i8* %312 to i64
  %315 = sub i64 %313, %314
  store i64 %315, i64* %18, align 8
  %316 = load i8*, i8** %14, align 8
  %317 = load i8*, i8** %13, align 8
  %318 = ptrtoint i8* %316 to i64
  %319 = ptrtoint i8* %317 to i64
  %320 = sub i64 %318, %319
  store i64 %320, i64* %19, align 8
  %321 = load i64, i64* %18, align 8
  %322 = load i64, i64* %19, align 8
  %323 = icmp ule i64 %321, %322
  br i1 %323, label %324, label %349

324:                                              ; preds = %263
  %325 = load i64, i64* %18, align 8
  %326 = load i64, i64* %8, align 8
  %327 = icmp ugt i64 %325, %326
  br i1 %327, label %328, label %336

328:                                              ; preds = %324
  %329 = load i8*, i8** %6, align 8
  %330 = load i64, i64* %18, align 8
  %331 = load i64, i64* %8, align 8
  %332 = udiv i64 %330, %331
  %333 = load i64, i64* %8, align 8
  %334 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %335 = load i8*, i8** %10, align 8
  call void @qsort_arg(i8* %329, i64 %332, i64 %333, i32 (i8*, i8*, i8*)* %334, i8* %335)
  br label %336

336:                                              ; preds = %328, %324
  %337 = load i64, i64* %19, align 8
  %338 = load i64, i64* %8, align 8
  %339 = icmp ugt i64 %337, %338
  br i1 %339, label %340, label %348

340:                                              ; preds = %336
  %341 = load i8*, i8** %17, align 8
  %342 = load i64, i64* %19, align 8
  %343 = sub i64 0, %342
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  store i8* %344, i8** %6, align 8
  %345 = load i64, i64* %19, align 8
  %346 = load i64, i64* %8, align 8
  %347 = udiv i64 %345, %346
  store i64 %347, i64* %7, align 8
  br label %24

348:                                              ; preds = %336
  br label %373

349:                                              ; preds = %263
  %350 = load i64, i64* %19, align 8
  %351 = load i64, i64* %8, align 8
  %352 = icmp ugt i64 %350, %351
  br i1 %352, label %353, label %364

353:                                              ; preds = %349
  %354 = load i8*, i8** %17, align 8
  %355 = load i64, i64* %19, align 8
  %356 = sub i64 0, %355
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  %358 = load i64, i64* %19, align 8
  %359 = load i64, i64* %8, align 8
  %360 = udiv i64 %358, %359
  %361 = load i64, i64* %8, align 8
  %362 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %9, align 8
  %363 = load i8*, i8** %10, align 8
  call void @qsort_arg(i8* %357, i64 %360, i64 %361, i32 (i8*, i8*, i8*)* %362, i8* %363)
  br label %364

364:                                              ; preds = %353, %349
  %365 = load i64, i64* %18, align 8
  %366 = load i64, i64* %8, align 8
  %367 = icmp ugt i64 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = load i64, i64* %18, align 8
  %370 = load i64, i64* %8, align 8
  %371 = udiv i64 %369, %370
  store i64 %371, i64* %7, align 8
  br label %24

372:                                              ; preds = %364
  br label %373

373:                                              ; preds = %77, %109, %372, %348
  ret void
}

declare dso_local i32 @SWAPINIT(i8*, i64) #1

declare dso_local i32 @swap(i8*, i8*) #1

declare dso_local i8* @med3(i8*, i8*, i8*, i32 (i8*, i8*, i8*)*, i8*) #1

declare dso_local i64 @Min(i32, i32) #1

declare dso_local i32 @vecswap(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
