; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_defragmentPage.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_defragmentPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32, i32, i32, i32 (%struct.TYPE_7__*, i8*)*, i8, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @defragmentPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defragmentPage(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
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
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3PagerIswriteable(i32 %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %45 = icmp sle i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sqlite3_mutex_held(i32 %58)
  %60 = call i32 @assert(i32 %59)
  store i8* null, i8** %15, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %14, align 8
  store i8* %63, i8** %16, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
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
  br i1 %80, label %84, label %81

81:                                               ; preds = %2
  %82 = load i64, i64* @CORRUPT_DB, align 8
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %81, %2
  %85 = phi i1 [ true, %2 ], [ %83, %81 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %13, align 4
  %90 = mul nsw i32 2, %89
  %91 = add nsw i32 %88, %90
  store i32 %91, i32* %17, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %10, align 4
  %97 = load i8*, i8** %14, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 7
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = load i32, i32* %5, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %306

106:                                              ; preds = %84
  %107 = load i8*, i8** %14, align 8
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = call i32 @get2byte(i8* %111)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, 4
  %116 = icmp sgt i32 %113, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %118)
  store i32 %119, i32* %3, align 4
  br label %530

120:                                              ; preds = %106
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %305

123:                                              ; preds = %120
  %124 = load i8*, i8** %14, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = call i32 @get2byte(i8* %127)
  store i32 %128, i32* %20, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %130, 4
  %132 = icmp sgt i32 %129, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %134)
  store i32 %135, i32* %3, align 4
  br label %530

136:                                              ; preds = %123
  %137 = load i32, i32* %20, align 4
  %138 = icmp eq i32 0, %137
  br i1 %138, label %156, label %139

139:                                              ; preds = %136
  %140 = load i8*, i8** %14, align 8
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %304

147:                                              ; preds = %139
  %148 = load i8*, i8** %14, align 8
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %304

156:                                              ; preds = %147, %136
  %157 = load i8*, i8** %14, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %13, align 4
  %160 = mul nsw i32 %159, 2
  %161 = add nsw i32 %158, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %157, i64 %162
  store i8* %163, i8** %21, align 8
  store i32 0, i32* %23, align 4
  %164 = load i8*, i8** %14, align 8
  %165 = load i32, i32* %19, align 4
  %166 = add nsw i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = call i32 @get2byte(i8* %168)
  store i32 %169, i32* %24, align 4
  %170 = load i8*, i8** %14, align 8
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 5
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = call i32 @get2byte(i8* %174)
  store i32 %175, i32* %25, align 4
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %19, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %156
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %181 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %180)
  store i32 %181, i32* %3, align 4
  br label %530

182:                                              ; preds = %156
  %183 = load i32, i32* %20, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %233

185:                                              ; preds = %182
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %24, align 4
  %188 = add nsw i32 %186, %187
  %189 = load i32, i32* %20, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %193 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %192)
  store i32 %193, i32* %3, align 4
  br label %530

194:                                              ; preds = %185
  %195 = load i8*, i8** %14, align 8
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, 2
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  %200 = call i32 @get2byte(i8* %199)
  store i32 %200, i32* %23, align 4
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* %23, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %10, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %194
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %208 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %207)
  store i32 %208, i32* %3, align 4
  br label %530

209:                                              ; preds = %194
  %210 = load i8*, i8** %14, align 8
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %24, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* %23, align 4
  %215 = add nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %210, i64 %216
  %218 = load i8*, i8** %14, align 8
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %24, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %218, i64 %222
  %224 = load i32, i32* %20, align 4
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* %24, align 4
  %227 = add nsw i32 %225, %226
  %228 = sub nsw i32 %224, %227
  %229 = call i32 @memmove(i8* %217, i8* %223, i32 %228)
  %230 = load i32, i32* %23, align 4
  %231 = load i32, i32* %24, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %24, align 4
  br label %243

233:                                              ; preds = %182
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %24, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* %10, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %241 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %240)
  store i32 %241, i32* %3, align 4
  br label %530

242:                                              ; preds = %233
  br label %243

243:                                              ; preds = %242, %209
  %244 = load i32, i32* %25, align 4
  %245 = load i32, i32* %24, align 4
  %246 = add nsw i32 %244, %245
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %19, align 4
  %249 = load i32, i32* %25, align 4
  %250 = sub nsw i32 %248, %249
  %251 = add nsw i32 %247, %250
  %252 = load i32, i32* %10, align 4
  %253 = icmp sle i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  %256 = load i8*, i8** %14, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = load i8*, i8** %14, align 8
  %261 = load i32, i32* %25, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %25, align 4
  %266 = sub nsw i32 %264, %265
  %267 = call i32 @memmove(i8* %259, i8* %263, i32 %266)
  %268 = load i8*, i8** %14, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  store i8* %271, i8** %22, align 8
  br label %272

272:                                              ; preds = %300, %243
  %273 = load i8*, i8** %22, align 8
  %274 = load i8*, i8** %21, align 8
  %275 = icmp ult i8* %273, %274
  br i1 %275, label %276, label %303

276:                                              ; preds = %272
  %277 = load i8*, i8** %22, align 8
  %278 = call i32 @get2byte(i8* %277)
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %19, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %288

282:                                              ; preds = %276
  %283 = load i8*, i8** %22, align 8
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* %24, align 4
  %286 = add nsw i32 %284, %285
  %287 = call i32 @put2byte(i8* %283, i32 %286)
  br label %299

288:                                              ; preds = %276
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* %20, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288
  %293 = load i8*, i8** %22, align 8
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* %23, align 4
  %296 = add nsw i32 %294, %295
  %297 = call i32 @put2byte(i8* %293, i32 %296)
  br label %298

298:                                              ; preds = %292, %288
  br label %299

299:                                              ; preds = %298, %282
  br label %300

300:                                              ; preds = %299
  %301 = load i8*, i8** %22, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 2
  store i8* %302, i8** %22, align 8
  br label %272

303:                                              ; preds = %272
  br label %466

304:                                              ; preds = %147, %139
  br label %305

305:                                              ; preds = %304, %120
  br label %306

306:                                              ; preds = %305, %84
  %307 = load i32, i32* %10, align 4
  store i32 %307, i32* %12, align 4
  %308 = load i32, i32* %10, align 4
  %309 = sub nsw i32 %308, 4
  store i32 %309, i32* %18, align 4
  store i32 0, i32* %6, align 4
  br label %310

310:                                              ; preds = %457, %306
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* %13, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %460

314:                                              ; preds = %310
  %315 = load i8*, i8** %14, align 8
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* %6, align 4
  %318 = mul nsw i32 %317, 2
  %319 = add nsw i32 %316, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %315, i64 %320
  store i8* %321, i8** %26, align 8
  %322 = load i8*, i8** %26, align 8
  %323 = call i32 @get2byte(i8* %322)
  store i32 %323, i32* %7, align 4
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %17, align 4
  %326 = icmp eq i32 %324, %325
  %327 = zext i1 %326 to i32
  %328 = call i32 @testcase(i32 %327)
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* %18, align 4
  %331 = icmp eq i32 %329, %330
  %332 = zext i1 %331 to i32
  %333 = call i32 @testcase(i32 %332)
  %334 = load i32, i32* %7, align 4
  %335 = load i32, i32* %17, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %341, label %337

337:                                              ; preds = %314
  %338 = load i32, i32* %7, align 4
  %339 = load i32, i32* %18, align 4
  %340 = icmp sgt i32 %338, %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %337, %314
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %343 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %342)
  store i32 %343, i32* %3, align 4
  br label %530

344:                                              ; preds = %337
  %345 = load i32, i32* %7, align 4
  %346 = load i32, i32* %17, align 4
  %347 = icmp sge i32 %345, %346
  br i1 %347, label %348, label %352

348:                                              ; preds = %344
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* %18, align 4
  %351 = icmp sle i32 %349, %350
  br label %352

352:                                              ; preds = %348, %344
  %353 = phi i1 [ false, %344 ], [ %351, %348 ]
  %354 = zext i1 %353 to i32
  %355 = call i32 @assert(i32 %354)
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 5
  %358 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %357, align 8
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %360 = load i8*, i8** %16, align 8
  %361 = load i32, i32* %7, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %360, i64 %362
  %364 = call i32 %358(%struct.TYPE_7__* %359, i8* %363)
  store i32 %364, i32* %9, align 4
  %365 = load i32, i32* %9, align 4
  %366 = load i32, i32* %12, align 4
  %367 = sub nsw i32 %366, %365
  store i32 %367, i32* %12, align 4
  %368 = load i32, i32* %12, align 4
  %369 = load i32, i32* %17, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %377, label %371

371:                                              ; preds = %352
  %372 = load i32, i32* %7, align 4
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %372, %373
  %375 = load i32, i32* %10, align 4
  %376 = icmp sgt i32 %374, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %371, %352
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %379 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %378)
  store i32 %379, i32* %3, align 4
  br label %530

380:                                              ; preds = %371
  %381 = load i32, i32* %12, align 4
  %382 = load i32, i32* %9, align 4
  %383 = add nsw i32 %381, %382
  %384 = load i32, i32* %10, align 4
  %385 = icmp sle i32 %383, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %380
  %387 = load i32, i32* %12, align 4
  %388 = load i32, i32* %17, align 4
  %389 = icmp sge i32 %387, %388
  br label %390

390:                                              ; preds = %386, %380
  %391 = phi i1 [ false, %380 ], [ %389, %386 ]
  %392 = zext i1 %391 to i32
  %393 = call i32 @assert(i32 %392)
  %394 = load i32, i32* %12, align 4
  %395 = load i32, i32* %9, align 4
  %396 = add nsw i32 %394, %395
  %397 = load i32, i32* %10, align 4
  %398 = icmp eq i32 %396, %397
  %399 = zext i1 %398 to i32
  %400 = call i32 @testcase(i32 %399)
  %401 = load i32, i32* %7, align 4
  %402 = load i32, i32* %9, align 4
  %403 = add nsw i32 %401, %402
  %404 = load i32, i32* %10, align 4
  %405 = icmp eq i32 %403, %404
  %406 = zext i1 %405 to i32
  %407 = call i32 @testcase(i32 %406)
  %408 = load i8*, i8** %26, align 8
  %409 = load i32, i32* %12, align 4
  %410 = call i32 @put2byte(i8* %408, i32 %409)
  %411 = load i8*, i8** %15, align 8
  %412 = icmp eq i8* %411, null
  br i1 %412, label %413, label %446

413:                                              ; preds = %390
  %414 = load i32, i32* %12, align 4
  %415 = load i32, i32* %7, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %413
  br label %457

418:                                              ; preds = %413
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 8
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = call i8* @sqlite3PagerTempSpace(i32 %423)
  store i8* %424, i8** %15, align 8
  %425 = load i8*, i8** %14, align 8
  %426 = load i32, i32* %8, align 4
  %427 = add nsw i32 %426, 5
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8, i8* %425, i64 %428
  %430 = call i32 @get2byte(i8* %429)
  store i32 %430, i32* %27, align 4
  %431 = load i8*, i8** %15, align 8
  %432 = load i32, i32* %27, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8, i8* %431, i64 %433
  %435 = load i8*, i8** %14, align 8
  %436 = load i32, i32* %27, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %435, i64 %437
  %439 = load i32, i32* %12, align 4
  %440 = load i32, i32* %9, align 4
  %441 = add nsw i32 %439, %440
  %442 = load i32, i32* %27, align 4
  %443 = sub nsw i32 %441, %442
  %444 = call i32 @memcpy(i8* %434, i8* %438, i32 %443)
  %445 = load i8*, i8** %15, align 8
  store i8* %445, i8** %16, align 8
  br label %446

446:                                              ; preds = %418, %390
  %447 = load i8*, i8** %14, align 8
  %448 = load i32, i32* %12, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %447, i64 %449
  %451 = load i8*, i8** %16, align 8
  %452 = load i32, i32* %7, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, i8* %451, i64 %453
  %455 = load i32, i32* %9, align 4
  %456 = call i32 @memcpy(i8* %450, i8* %454, i32 %455)
  br label %457

457:                                              ; preds = %446, %417
  %458 = load i32, i32* %6, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %6, align 4
  br label %310

460:                                              ; preds = %310
  %461 = load i8*, i8** %14, align 8
  %462 = load i32, i32* %8, align 4
  %463 = add nsw i32 %462, 7
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i8, i8* %461, i64 %464
  store i8 0, i8* %465, align 1
  br label %466

466:                                              ; preds = %460, %303
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 6
  %469 = load i8, i8* %468, align 8
  %470 = zext i8 %469 to i32
  %471 = icmp sge i32 %470, 0
  %472 = zext i1 %471 to i32
  %473 = call i32 @assert(i32 %472)
  %474 = load i8*, i8** %14, align 8
  %475 = load i32, i32* %8, align 4
  %476 = add nsw i32 %475, 7
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8, i8* %474, i64 %477
  %479 = load i8, i8* %478, align 1
  %480 = zext i8 %479 to i32
  %481 = load i32, i32* %12, align 4
  %482 = add nsw i32 %480, %481
  %483 = load i32, i32* %17, align 4
  %484 = sub nsw i32 %482, %483
  %485 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %485, i32 0, i32 6
  %487 = load i8, i8* %486, align 8
  %488 = zext i8 %487 to i32
  %489 = icmp ne i32 %484, %488
  br i1 %489, label %490, label %493

490:                                              ; preds = %466
  %491 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %492 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %491)
  store i32 %492, i32* %3, align 4
  br label %530

493:                                              ; preds = %466
  %494 = load i32, i32* %12, align 4
  %495 = load i32, i32* %17, align 4
  %496 = icmp sge i32 %494, %495
  %497 = zext i1 %496 to i32
  %498 = call i32 @assert(i32 %497)
  %499 = load i8*, i8** %14, align 8
  %500 = load i32, i32* %8, align 4
  %501 = add nsw i32 %500, 5
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i8, i8* %499, i64 %502
  %504 = load i32, i32* %12, align 4
  %505 = call i32 @put2byte(i8* %503, i32 %504)
  %506 = load i8*, i8** %14, align 8
  %507 = load i32, i32* %8, align 4
  %508 = add nsw i32 %507, 1
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i8, i8* %506, i64 %509
  store i8 0, i8* %510, align 1
  %511 = load i8*, i8** %14, align 8
  %512 = load i32, i32* %8, align 4
  %513 = add nsw i32 %512, 2
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8, i8* %511, i64 %514
  store i8 0, i8* %515, align 1
  %516 = load i8*, i8** %14, align 8
  %517 = load i32, i32* %17, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8, i8* %516, i64 %518
  %520 = load i32, i32* %12, align 4
  %521 = load i32, i32* %17, align 4
  %522 = sub nsw i32 %520, %521
  %523 = call i32 @memset(i8* %519, i32 0, i32 %522)
  %524 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %525 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %524, i32 0, i32 7
  %526 = load i32, i32* %525, align 4
  %527 = call i32 @sqlite3PagerIswriteable(i32 %526)
  %528 = call i32 @assert(i32 %527)
  %529 = load i32, i32* @SQLITE_OK, align 4
  store i32 %529, i32* %3, align 4
  br label %530

530:                                              ; preds = %493, %490, %377, %341, %239, %206, %191, %179, %133, %117
  %531 = load i32, i32* %3, align 4
  ret i32 %531
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @get2byte(i8*) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__*) #1

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
