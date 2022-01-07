; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_fillInCell.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_fillInCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32, i32, i32, i32, i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_16__*)*, %struct.TYPE_18__*, i32*, i64 }
%struct.TYPE_16__ = type { i8*, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW2 = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, %struct.TYPE_17__*, i32*)* @fillInCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fillInCell(%struct.TYPE_15__* %0, i8* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %17, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %20, align 8
  store i64 0, i64* %21, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32* @sqlite3_mutex_held(i32 %33)
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ult i8* %37, %40
  br i1 %41, label %58, label %42

42:                                               ; preds = %4
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = icmp uge i8* %43, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @sqlite3PagerIswriteable(i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %52, %42, %4
  %59 = phi i1 [ true, %42 ], [ true, %4 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %22, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %58
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %10, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %11, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = ptrtoint i32* %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %22, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @putVarint32(i8* %91, i32 %92)
  %94 = load i32, i32* %22, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %22, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @putVarint(i8* %101, i32 %104)
  %106 = load i32, i32* %22, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %22, align 4
  br label %140

110:                                              ; preds = %58
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp sle i32 %113, 2147483647
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br label %120

120:                                              ; preds = %115, %110
  %121 = phi i1 [ false, %110 ], [ %119, %115 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %10, align 4
  store i32 %126, i32* %12, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %11, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* %22, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i32, i32* %10, align 4
  %135 = call i64 @putVarint32(i8* %133, i32 %134)
  %136 = load i32, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %22, align 4
  br label %140

140:                                              ; preds = %120, %69
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = icmp sle i32 %141, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %140
  %147 = load i32, i32* %22, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %150, 3
  %152 = zext i1 %151 to i32
  %153 = call i32 @testcase(i32 %152)
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 4
  %156 = zext i1 %155 to i32
  %157 = call i32 @testcase(i32 %156)
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  store i32 4, i32* %13, align 4
  br label %161

161:                                              ; preds = %160, %146
  %162 = load i32, i32* %13, align 4
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %15, align 4
  %165 = load i8*, i8** %7, align 8
  store i8* %165, i8** %18, align 8
  br label %217

166:                                              ; preds = %140
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %23, align 4
  %170 = load i32, i32* %23, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %23, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 6
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 4
  %180 = srem i32 %173, %179
  %181 = add nsw i32 %170, %180
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %182, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @testcase(i32 %187)
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  %194 = icmp eq i32 %189, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @testcase(i32 %195)
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %197, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %166
  %203 = load i32, i32* %23, align 4
  store i32 %203, i32* %13, align 4
  br label %204

204:                                              ; preds = %202, %166
  %205 = load i32, i32* %13, align 4
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %22, align 4
  %208 = add nsw i32 %206, %207
  %209 = add nsw i32 %208, 4
  %210 = load i32*, i32** %9, align 8
  store i32 %209, i32* %210, align 4
  %211 = load i8*, i8** %7, align 8
  %212 = load i32, i32* %22, align 4
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %211, i64 %215
  store i8* %216, i8** %18, align 8
  br label %217

217:                                              ; preds = %204, %161
  %218 = load i8*, i8** %7, align 8
  %219 = load i32, i32* %22, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  store i8* %221, i8** %19, align 8
  br label %222

222:                                              ; preds = %412, %217
  %223 = load i32, i32* %10, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %430

225:                                              ; preds = %222
  %226 = load i32, i32* %15, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %347

228:                                              ; preds = %225
  %229 = load i64, i64* %21, align 8
  store i64 %229, i64* %24, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %228
  br label %235

235:                                              ; preds = %248, %234
  %236 = load i64, i64* %21, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %21, align 8
  br label %238

238:                                              ; preds = %235
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %240 = load i64, i64* %21, align 8
  %241 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_18__* %239, i64 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %238
  %244 = load i64, i64* %21, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %246 = call i64 @PENDING_BYTE_PAGE(%struct.TYPE_18__* %245)
  %247 = icmp eq i64 %244, %246
  br label %248

248:                                              ; preds = %243, %238
  %249 = phi i1 [ true, %238 ], [ %247, %243 ]
  br i1 %249, label %235, label %250

250:                                              ; preds = %248
  br label %251

251:                                              ; preds = %250, %228
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %253 = load i64, i64* %21, align 8
  %254 = call i32 @allocateBtreePage(%struct.TYPE_18__* %252, %struct.TYPE_15__** %16, i64* %21, i64 %253, i32 0)
  store i32 %254, i32* %14, align 4
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %283

259:                                              ; preds = %251
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* @SQLITE_OK, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %283

263:                                              ; preds = %259
  %264 = load i64, i64* %24, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = load i32, i32* @PTRMAP_OVERFLOW2, align 4
  br label %270

268:                                              ; preds = %263
  %269 = load i32, i32* @PTRMAP_OVERFLOW1, align 4
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  store i32 %271, i32* %25, align 4
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %273 = load i64, i64* %21, align 8
  %274 = load i32, i32* %25, align 4
  %275 = load i64, i64* %24, align 8
  %276 = call i32 @ptrmapPut(%struct.TYPE_18__* %272, i64 %273, i32 %274, i64 %275, i32* %14)
  %277 = load i32, i32* %14, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %270
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %281 = call i32 @releasePage(%struct.TYPE_15__* %280)
  br label %282

282:                                              ; preds = %279, %270
  br label %283

283:                                              ; preds = %282, %259, %251
  %284 = load i32, i32* %14, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %288 = call i32 @releasePage(%struct.TYPE_15__* %287)
  %289 = load i32, i32* %14, align 4
  store i32 %289, i32* %5, align 4
  br label %434

290:                                              ; preds = %283
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %292 = icmp eq %struct.TYPE_15__* %291, null
  br i1 %292, label %299, label %293

293:                                              ; preds = %290
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = call i64 @sqlite3PagerIswriteable(i32 %296)
  %298 = icmp ne i64 %297, 0
  br label %299

299:                                              ; preds = %293, %290
  %300 = phi i1 [ true, %290 ], [ %298, %293 ]
  %301 = zext i1 %300 to i32
  %302 = call i32 @assert(i32 %301)
  %303 = load i8*, i8** %18, align 8
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ult i8* %303, %306
  br i1 %307, label %324, label %308

308:                                              ; preds = %299
  %309 = load i8*, i8** %18, align 8
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 0
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds i8, i8* %312, i64 %315
  %317 = icmp uge i8* %309, %316
  br i1 %317, label %324, label %318

318:                                              ; preds = %308
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 4
  %322 = call i64 @sqlite3PagerIswriteable(i32 %321)
  %323 = icmp ne i64 %322, 0
  br label %324

324:                                              ; preds = %318, %308, %299
  %325 = phi i1 [ true, %308 ], [ true, %299 ], [ %323, %318 ]
  %326 = zext i1 %325 to i32
  %327 = call i32 @assert(i32 %326)
  %328 = load i8*, i8** %18, align 8
  %329 = load i64, i64* %21, align 8
  %330 = call i32 @put4byte(i8* %328, i64 %329)
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %332 = call i32 @releasePage(%struct.TYPE_15__* %331)
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %333, %struct.TYPE_15__** %17, align 8
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  store i8* %336, i8** %18, align 8
  %337 = load i8*, i8** %18, align 8
  %338 = call i32 @put4byte(i8* %337, i64 0)
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 4
  store i8* %342, i8** %19, align 8
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = sub nsw i32 %345, 4
  store i32 %346, i32* %15, align 4
  br label %347

347:                                              ; preds = %324, %225
  %348 = load i32, i32* %10, align 4
  store i32 %348, i32* %13, align 4
  %349 = load i32, i32* %13, align 4
  %350 = load i32, i32* %15, align 4
  %351 = icmp sgt i32 %349, %350
  br i1 %351, label %352, label %354

352:                                              ; preds = %347
  %353 = load i32, i32* %15, align 4
  store i32 %353, i32* %13, align 4
  br label %354

354:                                              ; preds = %352, %347
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %356 = icmp eq %struct.TYPE_15__* %355, null
  br i1 %356, label %363, label %357

357:                                              ; preds = %354
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 4
  %361 = call i64 @sqlite3PagerIswriteable(i32 %360)
  %362 = icmp ne i64 %361, 0
  br label %363

363:                                              ; preds = %357, %354
  %364 = phi i1 [ true, %354 ], [ %362, %357 ]
  %365 = zext i1 %364 to i32
  %366 = call i32 @assert(i32 %365)
  %367 = load i8*, i8** %19, align 8
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  %370 = load i8*, i8** %369, align 8
  %371 = icmp ult i8* %367, %370
  br i1 %371, label %388, label %372

372:                                              ; preds = %363
  %373 = load i8*, i8** %19, align 8
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 0
  %376 = load i8*, i8** %375, align 8
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds i8, i8* %376, i64 %379
  %381 = icmp uge i8* %373, %380
  br i1 %381, label %388, label %382

382:                                              ; preds = %372
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 4
  %386 = call i64 @sqlite3PagerIswriteable(i32 %385)
  %387 = icmp ne i64 %386, 0
  br label %388

388:                                              ; preds = %382, %372, %363
  %389 = phi i1 [ true, %372 ], [ true, %363 ], [ %387, %382 ]
  %390 = zext i1 %389 to i32
  %391 = call i32 @assert(i32 %390)
  %392 = load i32, i32* %12, align 4
  %393 = icmp sgt i32 %392, 0
  br i1 %393, label %394, label %408

394:                                              ; preds = %388
  %395 = load i32, i32* %13, align 4
  %396 = load i32, i32* %12, align 4
  %397 = icmp sgt i32 %395, %396
  br i1 %397, label %398, label %400

398:                                              ; preds = %394
  %399 = load i32, i32* %12, align 4
  store i32 %399, i32* %13, align 4
  br label %400

400:                                              ; preds = %398, %394
  %401 = load i32*, i32** %11, align 8
  %402 = ptrtoint i32* %401 to i32
  %403 = call i32 @assert(i32 %402)
  %404 = load i8*, i8** %19, align 8
  %405 = load i32*, i32** %11, align 8
  %406 = load i32, i32* %13, align 4
  %407 = call i32 @memcpy(i8* %404, i32* %405, i32 %406)
  br label %412

408:                                              ; preds = %388
  %409 = load i8*, i8** %19, align 8
  %410 = load i32, i32* %13, align 4
  %411 = call i32 @memset(i8* %409, i32 0, i32 %410)
  br label %412

412:                                              ; preds = %408, %400
  %413 = load i32, i32* %13, align 4
  %414 = load i32, i32* %10, align 4
  %415 = sub nsw i32 %414, %413
  store i32 %415, i32* %10, align 4
  %416 = load i32, i32* %13, align 4
  %417 = load i8*, i8** %19, align 8
  %418 = sext i32 %416 to i64
  %419 = getelementptr inbounds i8, i8* %417, i64 %418
  store i8* %419, i8** %19, align 8
  %420 = load i32, i32* %13, align 4
  %421 = load i32*, i32** %11, align 8
  %422 = sext i32 %420 to i64
  %423 = getelementptr inbounds i32, i32* %421, i64 %422
  store i32* %423, i32** %11, align 8
  %424 = load i32, i32* %13, align 4
  %425 = load i32, i32* %12, align 4
  %426 = sub nsw i32 %425, %424
  store i32 %426, i32* %12, align 4
  %427 = load i32, i32* %13, align 4
  %428 = load i32, i32* %15, align 4
  %429 = sub nsw i32 %428, %427
  store i32 %429, i32* %15, align 4
  br label %222

430:                                              ; preds = %222
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %432 = call i32 @releasePage(%struct.TYPE_15__* %431)
  %433 = load i32, i32* @SQLITE_OK, align 4
  store i32 %433, i32* %5, align 4
  br label %434

434:                                              ; preds = %430, %286
  %435 = load i32, i32* %5, align 4
  ret i32 %435
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3_mutex_held(i32) #1

declare dso_local i64 @sqlite3PagerIswriteable(i32) #1

declare dso_local i64 @putVarint32(i8*, i32) #1

declare dso_local i64 @putVarint(i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @PTRMAP_ISPAGE(%struct.TYPE_18__*, i64) #1

declare dso_local i64 @PENDING_BYTE_PAGE(%struct.TYPE_18__*) #1

declare dso_local i32 @allocateBtreePage(%struct.TYPE_18__*, %struct.TYPE_15__**, i64*, i64, i32) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_18__*, i64, i32, i64, i32*) #1

declare dso_local i32 @releasePage(%struct.TYPE_15__*) #1

declare dso_local i32 @put4byte(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
