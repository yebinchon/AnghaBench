; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_defragmentPage.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_defragmentPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i32, i32, i32, i32 (%struct.TYPE_6__*, i8*)*, i8, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @defragmentPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defragmentPage(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3PagerIswriteable(i32 %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %45 = icmp sle i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sqlite3_mutex_held(i32 %58)
  %60 = call i32 @assert(i32 %59)
  store i8* null, i8** %15, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %14, align 8
  store i8* %63, i8** %16, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = call i32 @get2byte(i8* %78)
  %80 = icmp eq i32 %73, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 2, %84
  %86 = add nsw i32 %83, %85
  store i32 %86, i32* %17, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i8*, i8** %14, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 7
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %312

101:                                              ; preds = %2
  %102 = load i8*, i8** %14, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = call i32 @get2byte(i8* %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %311

110:                                              ; preds = %101
  %111 = load i8*, i8** %14, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = call i32 @get2byte(i8* %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp sgt i32 %119, %120
  br label %122

122:                                              ; preds = %118, %110
  %123 = phi i1 [ true, %110 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load i32, i32* %19, align 4
  %127 = load i8*, i8** %14, align 8
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = call i32 @get2byte(i8* %131)
  %133 = add nsw i32 %126, %132
  %134 = load i32, i32* %10, align 4
  %135 = icmp sle i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i32, i32* %20, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %122
  %141 = load i32, i32* %20, align 4
  %142 = load i8*, i8** %14, align 8
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = call i32 @get2byte(i8* %146)
  %148 = add nsw i32 %141, %147
  %149 = load i32, i32* %10, align 4
  %150 = icmp sle i32 %148, %149
  br label %151

151:                                              ; preds = %140, %122
  %152 = phi i1 [ true, %122 ], [ %150, %140 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* %20, align 4
  %156 = icmp eq i32 0, %155
  br i1 %156, label %174, label %157

157:                                              ; preds = %151
  %158 = load i8*, i8** %14, align 8
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %310

165:                                              ; preds = %157
  %166 = load i8*, i8** %14, align 8
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %310

174:                                              ; preds = %165, %151
  %175 = load i8*, i8** %14, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %13, align 4
  %178 = mul nsw i32 %177, 2
  %179 = add nsw i32 %176, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %175, i64 %180
  store i8* %181, i8** %21, align 8
  store i32 0, i32* %23, align 4
  %182 = load i8*, i8** %14, align 8
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = call i32 @get2byte(i8* %186)
  store i32 %187, i32* %24, align 4
  %188 = load i8*, i8** %14, align 8
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 5
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = call i32 @get2byte(i8* %192)
  store i32 %193, i32* %25, align 4
  %194 = load i32, i32* %20, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %249

196:                                              ; preds = %174
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* %24, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %20, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %203, i32* %3, align 4
  br label %526

204:                                              ; preds = %196
  %205 = load i8*, i8** %14, align 8
  %206 = load i32, i32* %20, align 4
  %207 = add nsw i32 %206, 2
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  %210 = call i32 @get2byte(i8* %209)
  store i32 %210, i32* %23, align 4
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %24, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* %23, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* %20, align 4
  %217 = add nsw i32 %215, %216
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %24, align 4
  %220 = add nsw i32 %218, %219
  %221 = sub nsw i32 %217, %220
  %222 = load i32, i32* %10, align 4
  %223 = icmp sle i32 %221, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert(i32 %224)
  %226 = load i8*, i8** %14, align 8
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %24, align 4
  %229 = add nsw i32 %227, %228
  %230 = load i32, i32* %23, align 4
  %231 = add nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %226, i64 %232
  %234 = load i8*, i8** %14, align 8
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %24, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %234, i64 %238
  %240 = load i32, i32* %20, align 4
  %241 = load i32, i32* %19, align 4
  %242 = load i32, i32* %24, align 4
  %243 = add nsw i32 %241, %242
  %244 = sub nsw i32 %240, %243
  %245 = call i32 @memmove(i8* %233, i8* %239, i32 %244)
  %246 = load i32, i32* %23, align 4
  %247 = load i32, i32* %24, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %24, align 4
  br label %249

249:                                              ; preds = %204, %174
  %250 = load i32, i32* %25, align 4
  %251 = load i32, i32* %24, align 4
  %252 = add nsw i32 %250, %251
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* %25, align 4
  %256 = sub nsw i32 %254, %255
  %257 = add nsw i32 %253, %256
  %258 = load i32, i32* %10, align 4
  %259 = icmp sle i32 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load i8*, i8** %14, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load i8*, i8** %14, align 8
  %267 = load i32, i32* %25, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %25, align 4
  %272 = sub nsw i32 %270, %271
  %273 = call i32 @memmove(i8* %265, i8* %269, i32 %272)
  %274 = load i8*, i8** %14, align 8
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  store i8* %277, i8** %22, align 8
  br label %278

278:                                              ; preds = %306, %249
  %279 = load i8*, i8** %22, align 8
  %280 = load i8*, i8** %21, align 8
  %281 = icmp ult i8* %279, %280
  br i1 %281, label %282, label %309

282:                                              ; preds = %278
  %283 = load i8*, i8** %22, align 8
  %284 = call i32 @get2byte(i8* %283)
  store i32 %284, i32* %7, align 4
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %19, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %294

288:                                              ; preds = %282
  %289 = load i8*, i8** %22, align 8
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* %24, align 4
  %292 = add nsw i32 %290, %291
  %293 = call i32 @put2byte(i8* %289, i32 %292)
  br label %305

294:                                              ; preds = %282
  %295 = load i32, i32* %7, align 4
  %296 = load i32, i32* %20, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = load i8*, i8** %22, align 8
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* %23, align 4
  %302 = add nsw i32 %300, %301
  %303 = call i32 @put2byte(i8* %299, i32 %302)
  br label %304

304:                                              ; preds = %298, %294
  br label %305

305:                                              ; preds = %304, %288
  br label %306

306:                                              ; preds = %305
  %307 = load i8*, i8** %22, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 2
  store i8* %308, i8** %22, align 8
  br label %278

309:                                              ; preds = %278
  br label %470

310:                                              ; preds = %165, %157
  br label %311

311:                                              ; preds = %310, %101
  br label %312

312:                                              ; preds = %311, %2
  %313 = load i32, i32* %10, align 4
  store i32 %313, i32* %12, align 4
  %314 = load i32, i32* %10, align 4
  %315 = sub nsw i32 %314, 4
  store i32 %315, i32* %18, align 4
  store i32 0, i32* %6, align 4
  br label %316

316:                                              ; preds = %461, %312
  %317 = load i32, i32* %6, align 4
  %318 = load i32, i32* %13, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %464

320:                                              ; preds = %316
  %321 = load i8*, i8** %14, align 8
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* %6, align 4
  %324 = mul nsw i32 %323, 2
  %325 = add nsw i32 %322, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %321, i64 %326
  store i8* %327, i8** %26, align 8
  %328 = load i8*, i8** %26, align 8
  %329 = call i32 @get2byte(i8* %328)
  store i32 %329, i32* %7, align 4
  %330 = load i32, i32* %7, align 4
  %331 = load i32, i32* %17, align 4
  %332 = icmp eq i32 %330, %331
  %333 = zext i1 %332 to i32
  %334 = call i32 @testcase(i32 %333)
  %335 = load i32, i32* %7, align 4
  %336 = load i32, i32* %18, align 4
  %337 = icmp eq i32 %335, %336
  %338 = zext i1 %337 to i32
  %339 = call i32 @testcase(i32 %338)
  %340 = load i32, i32* %7, align 4
  %341 = load i32, i32* %17, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %347, label %343

343:                                              ; preds = %320
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* %18, align 4
  %346 = icmp sgt i32 %344, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %343, %320
  %348 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %348, i32* %3, align 4
  br label %526

349:                                              ; preds = %343
  %350 = load i32, i32* %7, align 4
  %351 = load i32, i32* %17, align 4
  %352 = icmp sge i32 %350, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %349
  %354 = load i32, i32* %7, align 4
  %355 = load i32, i32* %18, align 4
  %356 = icmp sle i32 %354, %355
  br label %357

357:                                              ; preds = %353, %349
  %358 = phi i1 [ false, %349 ], [ %356, %353 ]
  %359 = zext i1 %358 to i32
  %360 = call i32 @assert(i32 %359)
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 5
  %363 = load i32 (%struct.TYPE_6__*, i8*)*, i32 (%struct.TYPE_6__*, i8*)** %362, align 8
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %365 = load i8*, i8** %16, align 8
  %366 = load i32, i32* %7, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  %369 = call i32 %363(%struct.TYPE_6__* %364, i8* %368)
  store i32 %369, i32* %9, align 4
  %370 = load i32, i32* %9, align 4
  %371 = load i32, i32* %12, align 4
  %372 = sub nsw i32 %371, %370
  store i32 %372, i32* %12, align 4
  %373 = load i32, i32* %12, align 4
  %374 = load i32, i32* %17, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %382, label %376

376:                                              ; preds = %357
  %377 = load i32, i32* %7, align 4
  %378 = load i32, i32* %9, align 4
  %379 = add nsw i32 %377, %378
  %380 = load i32, i32* %10, align 4
  %381 = icmp sgt i32 %379, %380
  br i1 %381, label %382, label %384

382:                                              ; preds = %376, %357
  %383 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %383, i32* %3, align 4
  br label %526

384:                                              ; preds = %376
  %385 = load i32, i32* %12, align 4
  %386 = load i32, i32* %9, align 4
  %387 = add nsw i32 %385, %386
  %388 = load i32, i32* %10, align 4
  %389 = icmp sle i32 %387, %388
  br i1 %389, label %390, label %394

390:                                              ; preds = %384
  %391 = load i32, i32* %12, align 4
  %392 = load i32, i32* %17, align 4
  %393 = icmp sge i32 %391, %392
  br label %394

394:                                              ; preds = %390, %384
  %395 = phi i1 [ false, %384 ], [ %393, %390 ]
  %396 = zext i1 %395 to i32
  %397 = call i32 @assert(i32 %396)
  %398 = load i32, i32* %12, align 4
  %399 = load i32, i32* %9, align 4
  %400 = add nsw i32 %398, %399
  %401 = load i32, i32* %10, align 4
  %402 = icmp eq i32 %400, %401
  %403 = zext i1 %402 to i32
  %404 = call i32 @testcase(i32 %403)
  %405 = load i32, i32* %7, align 4
  %406 = load i32, i32* %9, align 4
  %407 = add nsw i32 %405, %406
  %408 = load i32, i32* %10, align 4
  %409 = icmp eq i32 %407, %408
  %410 = zext i1 %409 to i32
  %411 = call i32 @testcase(i32 %410)
  %412 = load i8*, i8** %26, align 8
  %413 = load i32, i32* %12, align 4
  %414 = call i32 @put2byte(i8* %412, i32 %413)
  %415 = load i8*, i8** %15, align 8
  %416 = icmp eq i8* %415, null
  br i1 %416, label %417, label %450

417:                                              ; preds = %394
  %418 = load i32, i32* %12, align 4
  %419 = load i32, i32* %7, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  br label %461

422:                                              ; preds = %417
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 8
  %425 = load %struct.TYPE_5__*, %struct.TYPE_5__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = call i8* @sqlite3PagerTempSpace(i32 %427)
  store i8* %428, i8** %15, align 8
  %429 = load i8*, i8** %14, align 8
  %430 = load i32, i32* %8, align 4
  %431 = add nsw i32 %430, 5
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, i8* %429, i64 %432
  %434 = call i32 @get2byte(i8* %433)
  store i32 %434, i32* %27, align 4
  %435 = load i8*, i8** %15, align 8
  %436 = load i32, i32* %27, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %435, i64 %437
  %439 = load i8*, i8** %14, align 8
  %440 = load i32, i32* %27, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8, i8* %439, i64 %441
  %443 = load i32, i32* %12, align 4
  %444 = load i32, i32* %9, align 4
  %445 = add nsw i32 %443, %444
  %446 = load i32, i32* %27, align 4
  %447 = sub nsw i32 %445, %446
  %448 = call i32 @memcpy(i8* %438, i8* %442, i32 %447)
  %449 = load i8*, i8** %15, align 8
  store i8* %449, i8** %16, align 8
  br label %450

450:                                              ; preds = %422, %394
  %451 = load i8*, i8** %14, align 8
  %452 = load i32, i32* %12, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, i8* %451, i64 %453
  %455 = load i8*, i8** %16, align 8
  %456 = load i32, i32* %7, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i8, i8* %455, i64 %457
  %459 = load i32, i32* %9, align 4
  %460 = call i32 @memcpy(i8* %454, i8* %458, i32 %459)
  br label %461

461:                                              ; preds = %450, %421
  %462 = load i32, i32* %6, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %6, align 4
  br label %316

464:                                              ; preds = %316
  %465 = load i8*, i8** %14, align 8
  %466 = load i32, i32* %8, align 4
  %467 = add nsw i32 %466, 7
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8, i8* %465, i64 %468
  store i8 0, i8* %469, align 1
  br label %470

470:                                              ; preds = %464, %309
  %471 = load i8*, i8** %14, align 8
  %472 = load i32, i32* %8, align 4
  %473 = add nsw i32 %472, 7
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, i8* %471, i64 %474
  %476 = load i8, i8* %475, align 1
  %477 = zext i8 %476 to i32
  %478 = load i32, i32* %12, align 4
  %479 = add nsw i32 %477, %478
  %480 = load i32, i32* %17, align 4
  %481 = sub nsw i32 %479, %480
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 6
  %484 = load i8, i8* %483, align 8
  %485 = zext i8 %484 to i32
  %486 = icmp ne i32 %481, %485
  br i1 %486, label %487, label %489

487:                                              ; preds = %470
  %488 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %488, i32* %3, align 4
  br label %526

489:                                              ; preds = %470
  %490 = load i32, i32* %12, align 4
  %491 = load i32, i32* %17, align 4
  %492 = icmp sge i32 %490, %491
  %493 = zext i1 %492 to i32
  %494 = call i32 @assert(i32 %493)
  %495 = load i8*, i8** %14, align 8
  %496 = load i32, i32* %8, align 4
  %497 = add nsw i32 %496, 5
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8, i8* %495, i64 %498
  %500 = load i32, i32* %12, align 4
  %501 = call i32 @put2byte(i8* %499, i32 %500)
  %502 = load i8*, i8** %14, align 8
  %503 = load i32, i32* %8, align 4
  %504 = add nsw i32 %503, 1
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %502, i64 %505
  store i8 0, i8* %506, align 1
  %507 = load i8*, i8** %14, align 8
  %508 = load i32, i32* %8, align 4
  %509 = add nsw i32 %508, 2
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8, i8* %507, i64 %510
  store i8 0, i8* %511, align 1
  %512 = load i8*, i8** %14, align 8
  %513 = load i32, i32* %17, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8, i8* %512, i64 %514
  %516 = load i32, i32* %12, align 4
  %517 = load i32, i32* %17, align 4
  %518 = sub nsw i32 %516, %517
  %519 = call i32 @memset(i8* %515, i32 0, i32 %518)
  %520 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %521 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %520, i32 0, i32 7
  %522 = load i32, i32* %521, align 4
  %523 = call i32 @sqlite3PagerIswriteable(i32 %522)
  %524 = call i32 @assert(i32 %523)
  %525 = load i32, i32* @SQLITE_OK, align 4
  store i32 %525, i32* %3, align 4
  br label %526

526:                                              ; preds = %489, %487, %382, %347, %202
  %527 = load i32, i32* %3, align 4
  ret i32 %527
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @get2byte(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @put2byte(i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i8* @sqlite3PagerTempSpace(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
