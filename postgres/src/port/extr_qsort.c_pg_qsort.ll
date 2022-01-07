; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_qsort.c_pg_qsort.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_qsort.c_pg_qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_qsort(i8* %0, i64 %1, i64 %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  br label %22

22:                                               ; preds = %356, %329, %4
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @SWAPINIT(i8* %23, i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %26, 7
  br i1 %27, label %28, label %75

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %14, align 8
  br label %32

32:                                               ; preds = %70, %28
  %33 = load i8*, i8** %14, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = mul i64 %35, %36
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = icmp ult i8* %33, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %32
  %41 = load i8*, i8** %14, align 8
  store i8* %41, i8** %13, align 8
  br label %42

42:                                               ; preds = %64, %40
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ugt i8* %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 %47(i8* %51, i8* %52)
  %54 = icmp sgt i32 %53, 0
  br label %55

55:                                               ; preds = %46, %42
  %56 = phi i1 [ false, %42 ], [ %54, %46 ]
  br i1 %56, label %57, label %69

57:                                               ; preds = %55
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = call i32 @swap(i8* %58, i8* %62)
  br label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %7, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = sub i64 0, %65
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %13, align 8
  br label %42

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %14, align 8
  br label %32

74:                                               ; preds = %32
  br label %361

75:                                               ; preds = %22
  store i32 1, i32* %20, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %14, align 8
  br label %79

79:                                               ; preds = %98, %75
  %80 = load i8*, i8** %14, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = mul i64 %82, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = icmp ult i8* %80, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %79
  %88 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = load i64, i64* %7, align 8
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 %88(i8* %92, i8* %93)
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i32 0, i32* %20, align 4
  br label %102

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %7, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 %99
  store i8* %101, i8** %14, align 8
  br label %79

102:                                              ; preds = %96, %79
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %361

106:                                              ; preds = %102
  %107 = load i8*, i8** %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = udiv i64 %108, 2
  %110 = load i64, i64* %7, align 8
  %111 = mul i64 %109, %110
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  store i8* %112, i8** %14, align 8
  %113 = load i64, i64* %6, align 8
  %114 = icmp ugt i64 %113, 7
  br i1 %114, label %115, label %168

115:                                              ; preds = %106
  %116 = load i8*, i8** %5, align 8
  store i8* %116, i8** %13, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = sub i64 %118, 1
  %120 = load i64, i64* %7, align 8
  %121 = mul i64 %119, %120
  %122 = getelementptr inbounds i8, i8* %117, i64 %121
  store i8* %122, i8** %15, align 8
  %123 = load i64, i64* %6, align 8
  %124 = icmp ugt i64 %123, 40
  br i1 %124, label %125, label %162

125:                                              ; preds = %115
  %126 = load i64, i64* %6, align 8
  %127 = udiv i64 %126, 8
  %128 = load i64, i64* %7, align 8
  %129 = mul i64 %127, %128
  store i64 %129, i64* %21, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = load i64, i64* %21, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8*, i8** %13, align 8
  %135 = load i64, i64* %21, align 8
  %136 = mul i64 2, %135
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %139 = call i8* @med3(i8* %130, i8* %133, i8* %137, i32 (i8*, i8*)* %138)
  store i8* %139, i8** %13, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = load i64, i64* %21, align 8
  %142 = sub i64 0, %141
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8*, i8** %14, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = load i64, i64* %21, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %149 = call i8* @med3(i8* %143, i8* %144, i8* %147, i32 (i8*, i8*)* %148)
  store i8* %149, i8** %14, align 8
  %150 = load i8*, i8** %15, align 8
  %151 = load i64, i64* %21, align 8
  %152 = mul i64 2, %151
  %153 = sub i64 0, %152
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i8*, i8** %15, align 8
  %156 = load i64, i64* %21, align 8
  %157 = sub i64 0, %156
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8*, i8** %15, align 8
  %160 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %161 = call i8* @med3(i8* %154, i8* %158, i8* %159, i32 (i8*, i8*)* %160)
  store i8* %161, i8** %15, align 8
  br label %162

162:                                              ; preds = %125, %115
  %163 = load i8*, i8** %13, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = load i8*, i8** %15, align 8
  %166 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %167 = call i8* @med3(i8* %163, i8* %164, i8* %165, i32 (i8*, i8*)* %166)
  store i8* %167, i8** %14, align 8
  br label %168

168:                                              ; preds = %162, %106
  %169 = load i8*, i8** %5, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = call i32 @swap(i8* %169, i8* %170)
  %172 = load i8*, i8** %5, align 8
  %173 = load i64, i64* %7, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %10, align 8
  store i8* %174, i8** %9, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = load i64, i64* %6, align 8
  %177 = sub i64 %176, 1
  %178 = load i64, i64* %7, align 8
  %179 = mul i64 %177, %178
  %180 = getelementptr inbounds i8, i8* %175, i64 %179
  store i8* %180, i8** %12, align 8
  store i8* %180, i8** %11, align 8
  br label %181

181:                                              ; preds = %242, %168
  br label %182

182:                                              ; preds = %204, %181
  %183 = load i8*, i8** %10, align 8
  %184 = load i8*, i8** %11, align 8
  %185 = icmp ule i8* %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 %187(i8* %188, i8* %189)
  store i32 %190, i32* %18, align 4
  %191 = icmp sle i32 %190, 0
  br label %192

192:                                              ; preds = %186, %182
  %193 = phi i1 [ false, %182 ], [ %191, %186 ]
  br i1 %193, label %194, label %208

194:                                              ; preds = %192
  %195 = load i32, i32* %18, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load i8*, i8** %9, align 8
  %199 = load i8*, i8** %10, align 8
  %200 = call i32 @swap(i8* %198, i8* %199)
  %201 = load i64, i64* %7, align 8
  %202 = load i8*, i8** %9, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 %201
  store i8* %203, i8** %9, align 8
  br label %204

204:                                              ; preds = %197, %194
  %205 = load i64, i64* %7, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 %205
  store i8* %207, i8** %10, align 8
  br label %182

208:                                              ; preds = %192
  br label %209

209:                                              ; preds = %232, %208
  %210 = load i8*, i8** %10, align 8
  %211 = load i8*, i8** %11, align 8
  %212 = icmp ule i8* %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %215 = load i8*, i8** %11, align 8
  %216 = load i8*, i8** %5, align 8
  %217 = call i32 %214(i8* %215, i8* %216)
  store i32 %217, i32* %18, align 4
  %218 = icmp sge i32 %217, 0
  br label %219

219:                                              ; preds = %213, %209
  %220 = phi i1 [ false, %209 ], [ %218, %213 ]
  br i1 %220, label %221, label %237

221:                                              ; preds = %219
  %222 = load i32, i32* %18, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %221
  %225 = load i8*, i8** %11, align 8
  %226 = load i8*, i8** %12, align 8
  %227 = call i32 @swap(i8* %225, i8* %226)
  %228 = load i64, i64* %7, align 8
  %229 = load i8*, i8** %12, align 8
  %230 = sub i64 0, %228
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8* %231, i8** %12, align 8
  br label %232

232:                                              ; preds = %224, %221
  %233 = load i64, i64* %7, align 8
  %234 = load i8*, i8** %11, align 8
  %235 = sub i64 0, %233
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %11, align 8
  br label %209

237:                                              ; preds = %219
  %238 = load i8*, i8** %10, align 8
  %239 = load i8*, i8** %11, align 8
  %240 = icmp ugt i8* %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %253

242:                                              ; preds = %237
  %243 = load i8*, i8** %10, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = call i32 @swap(i8* %243, i8* %244)
  %246 = load i64, i64* %7, align 8
  %247 = load i8*, i8** %10, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 %246
  store i8* %248, i8** %10, align 8
  %249 = load i64, i64* %7, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = sub i64 0, %249
  %252 = getelementptr inbounds i8, i8* %250, i64 %251
  store i8* %252, i8** %11, align 8
  br label %181

253:                                              ; preds = %241
  %254 = load i8*, i8** %5, align 8
  %255 = load i64, i64* %6, align 8
  %256 = load i64, i64* %7, align 8
  %257 = mul i64 %255, %256
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  store i8* %258, i8** %15, align 8
  %259 = load i8*, i8** %9, align 8
  %260 = load i8*, i8** %5, align 8
  %261 = ptrtoint i8* %259 to i64
  %262 = ptrtoint i8* %260 to i64
  %263 = sub i64 %261, %262
  %264 = trunc i64 %263 to i32
  %265 = load i8*, i8** %10, align 8
  %266 = load i8*, i8** %9, align 8
  %267 = ptrtoint i8* %265 to i64
  %268 = ptrtoint i8* %266 to i64
  %269 = sub i64 %267, %268
  %270 = trunc i64 %269 to i32
  %271 = call i64 @Min(i32 %264, i32 %270)
  store i64 %271, i64* %16, align 8
  %272 = load i8*, i8** %5, align 8
  %273 = load i8*, i8** %10, align 8
  %274 = load i64, i64* %16, align 8
  %275 = sub i64 0, %274
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i64, i64* %16, align 8
  %278 = call i32 @vecswap(i8* %272, i8* %276, i64 %277)
  %279 = load i8*, i8** %12, align 8
  %280 = load i8*, i8** %11, align 8
  %281 = ptrtoint i8* %279 to i64
  %282 = ptrtoint i8* %280 to i64
  %283 = sub i64 %281, %282
  %284 = trunc i64 %283 to i32
  %285 = load i8*, i8** %15, align 8
  %286 = load i8*, i8** %12, align 8
  %287 = ptrtoint i8* %285 to i64
  %288 = ptrtoint i8* %286 to i64
  %289 = sub i64 %287, %288
  %290 = load i64, i64* %7, align 8
  %291 = sub i64 %289, %290
  %292 = trunc i64 %291 to i32
  %293 = call i64 @Min(i32 %284, i32 %292)
  store i64 %293, i64* %16, align 8
  %294 = load i8*, i8** %10, align 8
  %295 = load i8*, i8** %15, align 8
  %296 = load i64, i64* %16, align 8
  %297 = sub i64 0, %296
  %298 = getelementptr inbounds i8, i8* %295, i64 %297
  %299 = load i64, i64* %16, align 8
  %300 = call i32 @vecswap(i8* %294, i8* %298, i64 %299)
  %301 = load i8*, i8** %10, align 8
  %302 = load i8*, i8** %9, align 8
  %303 = ptrtoint i8* %301 to i64
  %304 = ptrtoint i8* %302 to i64
  %305 = sub i64 %303, %304
  store i64 %305, i64* %16, align 8
  %306 = load i8*, i8** %12, align 8
  %307 = load i8*, i8** %11, align 8
  %308 = ptrtoint i8* %306 to i64
  %309 = ptrtoint i8* %307 to i64
  %310 = sub i64 %308, %309
  store i64 %310, i64* %17, align 8
  %311 = load i64, i64* %16, align 8
  %312 = load i64, i64* %17, align 8
  %313 = icmp ule i64 %311, %312
  br i1 %313, label %314, label %338

314:                                              ; preds = %253
  %315 = load i64, i64* %16, align 8
  %316 = load i64, i64* %7, align 8
  %317 = icmp ugt i64 %315, %316
  br i1 %317, label %318, label %325

318:                                              ; preds = %314
  %319 = load i8*, i8** %5, align 8
  %320 = load i64, i64* %16, align 8
  %321 = load i64, i64* %7, align 8
  %322 = udiv i64 %320, %321
  %323 = load i64, i64* %7, align 8
  %324 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  call void @pg_qsort(i8* %319, i64 %322, i64 %323, i32 (i8*, i8*)* %324)
  br label %325

325:                                              ; preds = %318, %314
  %326 = load i64, i64* %17, align 8
  %327 = load i64, i64* %7, align 8
  %328 = icmp ugt i64 %326, %327
  br i1 %328, label %329, label %337

329:                                              ; preds = %325
  %330 = load i8*, i8** %15, align 8
  %331 = load i64, i64* %17, align 8
  %332 = sub i64 0, %331
  %333 = getelementptr inbounds i8, i8* %330, i64 %332
  store i8* %333, i8** %5, align 8
  %334 = load i64, i64* %17, align 8
  %335 = load i64, i64* %7, align 8
  %336 = udiv i64 %334, %335
  store i64 %336, i64* %6, align 8
  br label %22

337:                                              ; preds = %325
  br label %361

338:                                              ; preds = %253
  %339 = load i64, i64* %17, align 8
  %340 = load i64, i64* %7, align 8
  %341 = icmp ugt i64 %339, %340
  br i1 %341, label %342, label %352

342:                                              ; preds = %338
  %343 = load i8*, i8** %15, align 8
  %344 = load i64, i64* %17, align 8
  %345 = sub i64 0, %344
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  %347 = load i64, i64* %17, align 8
  %348 = load i64, i64* %7, align 8
  %349 = udiv i64 %347, %348
  %350 = load i64, i64* %7, align 8
  %351 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  call void @pg_qsort(i8* %346, i64 %349, i64 %350, i32 (i8*, i8*)* %351)
  br label %352

352:                                              ; preds = %342, %338
  %353 = load i64, i64* %16, align 8
  %354 = load i64, i64* %7, align 8
  %355 = icmp ugt i64 %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %352
  %357 = load i64, i64* %16, align 8
  %358 = load i64, i64* %7, align 8
  %359 = udiv i64 %357, %358
  store i64 %359, i64* %6, align 8
  br label %22

360:                                              ; preds = %352
  br label %361

361:                                              ; preds = %74, %105, %360, %337
  ret void
}

declare dso_local i32 @SWAPINIT(i8*, i64) #1

declare dso_local i32 @swap(i8*, i8*) #1

declare dso_local i8* @med3(i8*, i8*, i8*, i32 (i8*, i8*)*) #1

declare dso_local i64 @Min(i32, i32) #1

declare dso_local i32 @vecswap(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
