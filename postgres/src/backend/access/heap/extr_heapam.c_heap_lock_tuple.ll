; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_lock_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_lock_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i64, i32 }

@InvalidBuffer = common dso_local global i64 0, align 8
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@TM_Invisible = common dso_local global i64 0, align 8
@TM_BeingModified = common dso_local global i64 0, align 8
@TM_Updated = common dso_local global i64 0, align 8
@TM_Deleted = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@TM_Ok = common dso_local global i64 0, align 8
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@TM_WouldBlock = common dso_local global i64 0, align 8
@MultiXactStatusNoKeyUpdate = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid lock mode in heap_lock_tuple\00", align 1
@XLTW_Lock = common dso_local global i32 0, align 4
@ERRCODE_LOCK_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"could not obtain lock on row in relation \22%s\22\00", align 1
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@TM_SelfModified = common dso_local global i64 0, align 8
@InvalidCommandId = common dso_local global i32 0, align 4
@HEAP_XMAX_BITS = common dso_local global i32 0, align 4
@VISIBILITYMAP_ALL_FROZEN = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@XLH_LOCK_ALL_FROZEN_CLEARED = common dso_local global i32 0, align 4
@SizeOfHeapLock = common dso_local global i32 0, align 4
@RM_HEAP_ID = common dso_local global i32 0, align 4
@XLOG_HEAP_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @heap_lock_tuple(i32 %0, %struct.TYPE_24__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64* %6, %struct.TYPE_21__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_22__*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca %struct.TYPE_20__, align 8
  %45 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store %struct.TYPE_21__* %7, %struct.TYPE_21__** %16, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  store i32* %47, i32** %18, align 8
  %48 = load i64, i64* @InvalidBuffer, align 8
  store i64 %48, i64* %21, align 8
  store i32 1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %18, align 8
  %51 = call i32 @ItemPointerGetBlockNumber(i32* %50)
  %52 = call i64 @ReadBuffer(i32 %49, i32 %51)
  %53 = load i64*, i64** %15, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = call i32 @ItemPointerGetBlockNumber(i32* %54)
  store i32 %55, i32* %22, align 4
  %56 = load i64*, i64** %15, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @BufferGetPage(i64 %57)
  %59 = call i64 @PageIsAllVisible(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %22, align 4
  %64 = call i32 @visibilitymap_pin(i32 %62, i32 %63, i64* %21)
  br label %65

65:                                               ; preds = %61, %8
  %66 = load i64*, i64** %15, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %69 = call i32 @LockBuffer(i64 %67, i32 %68)
  %70 = load i64*, i64** %15, align 8
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @BufferGetPage(i64 %71)
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32*, i32** %18, align 8
  %75 = call i32 @ItemPointerGetOffsetNumber(i32* %74)
  %76 = call i32 @PageGetItemId(i32 %73, i32 %75)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @ItemIdIsNormal(i32 %77)
  %79 = call i32 @Assert(i32 %78)
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %19, align 4
  %82 = call i64 @PageGetItem(i32 %80, i32 %81)
  %83 = inttoptr i64 %82 to %struct.TYPE_23__*
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  store %struct.TYPE_23__* %83, %struct.TYPE_23__** %85, align 8
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @ItemIdGetLength(i32 %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @RelationGetRelid(i32 %90)
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %782, %627, %446, %407, %379, %340, %306, %65
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i64*, i64** %15, align 8
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @HeapTupleSatisfiesUpdate(%struct.TYPE_24__* %95, i32 %96, i64 %98)
  store i64 %99, i64* %17, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* @TM_Invisible, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i64, i64* @TM_Invisible, align 8
  store i64 %104, i64* %17, align 8
  br label %929

105:                                              ; preds = %94
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* @TM_BeingModified, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* @TM_Updated, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* @TM_Deleted, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %692

117:                                              ; preds = %113, %109, %105
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %119, align 8
  %121 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_23__* %120)
  store i64 %121, i64* %32, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %33, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %34, align 4
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  %136 = call i32 @ItemPointerCopy(i32* %135, i32* %36)
  %137 = load i64*, i64** %15, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %140 = call i32 @LockBuffer(i64 %138, i32 %139)
  %141 = load i32, i32* %28, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %249

143:                                              ; preds = %117
  store i32 0, i32* %28, align 4
  %144 = load i32, i32* %33, align 4
  %145 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %193

148:                                              ; preds = %143
  %149 = load i64, i64* %32, align 8
  %150 = load i32, i32* %33, align 4
  %151 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %150)
  %152 = call i32 @GetMultiXactIdMembers(i64 %149, %struct.TYPE_22__** %39, i32 0, i32 %151)
  store i32 %152, i32* %38, align 4
  store i32 0, i32* %37, align 4
  br label %153

153:                                              ; preds = %183, %148
  %154 = load i32, i32* %37, align 4
  %155 = load i32, i32* %38, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %186

157:                                              ; preds = %153
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %159 = load i32, i32* %37, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @TransactionIdIsCurrentTransactionId(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %157
  br label %183

167:                                              ; preds = %157
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %169 = load i32, i32* %37, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @TUPLOCK_from_mxstatus(i32 %173)
  %175 = load i32, i32* %12, align 4
  %176 = icmp sge i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %167
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %179 = call i32 @pfree(%struct.TYPE_22__* %178)
  %180 = load i64, i64* @TM_Ok, align 8
  store i64 %180, i64* %17, align 8
  br label %934

181:                                              ; preds = %167
  store i32 1, i32* %29, align 4
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182, %166
  %184 = load i32, i32* %37, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %37, align 4
  br label %153

186:                                              ; preds = %153
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %188 = icmp ne %struct.TYPE_22__* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %191 = call i32 @pfree(%struct.TYPE_22__* %190)
  br label %192

192:                                              ; preds = %189, %186
  br label %248

193:                                              ; preds = %143
  %194 = load i64, i64* %32, align 8
  %195 = call i64 @TransactionIdIsCurrentTransactionId(i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %247

197:                                              ; preds = %193
  %198 = load i32, i32* %12, align 4
  switch i32 %198, label %246 [
    i32 133, label %199
    i32 131, label %216
    i32 132, label %227
    i32 134, label %234
  ]

199:                                              ; preds = %197
  %200 = load i32, i32* %33, align 4
  %201 = call i64 @HEAP_XMAX_IS_KEYSHR_LOCKED(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = load i32, i32* %33, align 4
  %205 = call i32 @HEAP_XMAX_IS_SHR_LOCKED(i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %33, align 4
  %209 = call i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32 %208)
  %210 = icmp ne i64 %209, 0
  br label %211

211:                                              ; preds = %207, %203, %199
  %212 = phi i1 [ true, %203 ], [ true, %199 ], [ %210, %207 ]
  %213 = zext i1 %212 to i32
  %214 = call i32 @Assert(i32 %213)
  %215 = load i64, i64* @TM_Ok, align 8
  store i64 %215, i64* %17, align 8
  br label %934

216:                                              ; preds = %197
  %217 = load i32, i32* %33, align 4
  %218 = call i32 @HEAP_XMAX_IS_SHR_LOCKED(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %33, align 4
  %222 = call i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %220, %216
  %225 = load i64, i64* @TM_Ok, align 8
  store i64 %225, i64* %17, align 8
  br label %934

226:                                              ; preds = %220
  br label %246

227:                                              ; preds = %197
  %228 = load i32, i32* %33, align 4
  %229 = call i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = load i64, i64* @TM_Ok, align 8
  store i64 %232, i64* %17, align 8
  br label %934

233:                                              ; preds = %227
  br label %246

234:                                              ; preds = %197
  %235 = load i32, i32* %33, align 4
  %236 = call i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %234
  %239 = load i32, i32* %34, align 4
  %240 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i64, i64* @TM_Ok, align 8
  store i64 %244, i64* %17, align 8
  br label %934

245:                                              ; preds = %238, %234
  br label %246

246:                                              ; preds = %197, %245, %233, %226
  br label %247

247:                                              ; preds = %246, %193
  br label %248

248:                                              ; preds = %247, %192
  br label %249

249:                                              ; preds = %248, %117
  store i32 1, i32* %35, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp eq i32 %250, 133
  br i1 %251, label %252, label %309

252:                                              ; preds = %249
  %253 = load i32, i32* %34, align 4
  %254 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %308, label %257

257:                                              ; preds = %252
  %258 = load i32, i32* %33, align 4
  %259 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %258)
  %260 = icmp ne i32 %259, 0
  %261 = xor i1 %260, true
  %262 = zext i1 %261 to i32
  store i32 %262, i32* %40, align 4
  %263 = load i32, i32* %14, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %257
  %266 = load i32, i32* %40, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %284

268:                                              ; preds = %265
  %269 = load i32, i32* %9, align 4
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %271 = call i32 (...) @GetCurrentTransactionId()
  %272 = load i32, i32* %12, align 4
  %273 = call i64 @heap_lock_updated_tuple(i32 %269, %struct.TYPE_24__* %270, i32* %36, i32 %271, i32 %272)
  store i64 %273, i64* %41, align 8
  %274 = load i64, i64* %41, align 8
  %275 = load i64, i64* @TM_Ok, align 8
  %276 = icmp ne i64 %274, %275
  br i1 %276, label %277, label %283

277:                                              ; preds = %268
  %278 = load i64, i64* %41, align 8
  store i64 %278, i64* %17, align 8
  %279 = load i64*, i64** %15, align 8
  %280 = load i64, i64* %279, align 8
  %281 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %282 = call i32 @LockBuffer(i64 %280, i32 %281)
  br label %694

283:                                              ; preds = %268
  br label %284

284:                                              ; preds = %283, %265, %257
  %285 = load i64*, i64** %15, align 8
  %286 = load i64, i64* %285, align 8
  %287 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %288 = call i32 @LockBuffer(i64 %286, i32 %287)
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %290, align 8
  %292 = call i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_23__* %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %307, label %294

294:                                              ; preds = %284
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %294
  %304 = load i32, i32* %40, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %303, %294
  br label %94

307:                                              ; preds = %303, %284
  store i32 0, i32* %35, align 4
  br label %308

308:                                              ; preds = %307, %252
  br label %413

309:                                              ; preds = %249
  %310 = load i32, i32* %12, align 4
  %311 = icmp eq i32 %310, 131
  br i1 %311, label %312, label %343

312:                                              ; preds = %309
  %313 = load i32, i32* %33, align 4
  %314 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %342

316:                                              ; preds = %312
  %317 = load i32, i32* %33, align 4
  %318 = call i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %342, label %320

320:                                              ; preds = %316
  %321 = load i64*, i64** %15, align 8
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %324 = call i32 @LockBuffer(i64 %322, i32 %323)
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %320
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %332, %320
  br label %94

341:                                              ; preds = %332
  store i32 0, i32* %35, align 4
  br label %342

342:                                              ; preds = %341, %316, %312
  br label %412

343:                                              ; preds = %309
  %344 = load i32, i32* %12, align 4
  %345 = icmp eq i32 %344, 132
  br i1 %345, label %346, label %411

346:                                              ; preds = %343
  %347 = load i32, i32* %33, align 4
  %348 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %382

351:                                              ; preds = %346
  %352 = load i64, i64* %32, align 8
  %353 = trunc i64 %352 to i32
  %354 = load i32, i32* %33, align 4
  %355 = load i32, i32* %12, align 4
  %356 = call i32 @DoesMultiXactIdConflict(i32 %353, i32 %354, i32 %355, i32* null)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %381, label %358

358:                                              ; preds = %351
  %359 = load i64*, i64** %15, align 8
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %362 = call i32 @LockBuffer(i64 %360, i32 %361)
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %33, align 4
  %369 = call i64 @xmax_infomask_changed(i32 %367, i32 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %379, label %371

371:                                              ; preds = %358
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %373, align 8
  %375 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_23__* %374)
  %376 = load i64, i64* %32, align 8
  %377 = call i32 @TransactionIdEquals(i64 %375, i64 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %371, %358
  br label %94

380:                                              ; preds = %371
  store i32 0, i32* %35, align 4
  br label %381

381:                                              ; preds = %380, %351
  br label %410

382:                                              ; preds = %346
  %383 = load i32, i32* %33, align 4
  %384 = call i64 @HEAP_XMAX_IS_KEYSHR_LOCKED(i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %409

386:                                              ; preds = %382
  %387 = load i64*, i64** %15, align 8
  %388 = load i64, i64* %387, align 8
  %389 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %390 = call i32 @LockBuffer(i64 %388, i32 %389)
  %391 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %392 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %33, align 4
  %397 = call i64 @xmax_infomask_changed(i32 %395, i32 %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %407, label %399

399:                                              ; preds = %386
  %400 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_23__*, %struct.TYPE_23__** %401, align 8
  %403 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_23__* %402)
  %404 = load i64, i64* %32, align 8
  %405 = call i32 @TransactionIdEquals(i64 %403, i64 %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %399, %386
  br label %94

408:                                              ; preds = %399
  store i32 0, i32* %35, align 4
  br label %409

409:                                              ; preds = %408, %382
  br label %410

410:                                              ; preds = %409, %381
  br label %411

411:                                              ; preds = %410, %343
  br label %412

412:                                              ; preds = %411, %342
  br label %413

413:                                              ; preds = %412, %308
  %414 = load i32, i32* %35, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %455

416:                                              ; preds = %413
  %417 = load i32, i32* %33, align 4
  %418 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %455, label %421

421:                                              ; preds = %416
  %422 = load i64, i64* %32, align 8
  %423 = call i64 @TransactionIdIsCurrentTransactionId(i64 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %455

425:                                              ; preds = %421
  %426 = load i64*, i64** %15, align 8
  %427 = load i64, i64* %426, align 8
  %428 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %429 = call i32 @LockBuffer(i64 %427, i32 %428)
  %430 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_23__*, %struct.TYPE_23__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* %33, align 4
  %436 = call i64 @xmax_infomask_changed(i32 %434, i32 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %446, label %438

438:                                              ; preds = %425
  %439 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %440 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %439, i32 0, i32 0
  %441 = load %struct.TYPE_23__*, %struct.TYPE_23__** %440, align 8
  %442 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_23__* %441)
  %443 = load i64, i64* %32, align 8
  %444 = call i32 @TransactionIdEquals(i64 %442, i64 %443)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %447, label %446

446:                                              ; preds = %438, %425
  br label %94

447:                                              ; preds = %438
  %448 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %449 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %448, i32 0, i32 0
  %450 = load %struct.TYPE_23__*, %struct.TYPE_23__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %452)
  %454 = call i32 @Assert(i32 %453)
  store i32 0, i32* %35, align 4
  br label %455

455:                                              ; preds = %447, %421, %416, %413
  %456 = load i32, i32* %35, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %471

458:                                              ; preds = %455
  %459 = load i64, i64* %17, align 8
  %460 = load i64, i64* @TM_Updated, align 8
  %461 = icmp eq i64 %459, %460
  br i1 %461, label %466, label %462

462:                                              ; preds = %458
  %463 = load i64, i64* %17, align 8
  %464 = load i64, i64* @TM_Deleted, align 8
  %465 = icmp eq i64 %463, %464
  br i1 %465, label %466, label %471

466:                                              ; preds = %462, %458
  %467 = load i64*, i64** %15, align 8
  %468 = load i64, i64* %467, align 8
  %469 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %470 = call i32 @LockBuffer(i64 %468, i32 %469)
  br label %694

471:                                              ; preds = %462, %455
  %472 = load i32, i32* %35, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %642

474:                                              ; preds = %471
  %475 = load i32, i32* %29, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %490, label %477

477:                                              ; preds = %474
  %478 = load i32, i32* %9, align 4
  %479 = load i32*, i32** %18, align 8
  %480 = load i32, i32* %12, align 4
  %481 = load i32, i32* %13, align 4
  %482 = call i32 @heap_acquire_tuplock(i32 %478, i32* %479, i32 %480, i32 %481, i32* %30)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %490, label %484

484:                                              ; preds = %477
  %485 = load i64, i64* @TM_WouldBlock, align 8
  store i64 %485, i64* %17, align 8
  %486 = load i64*, i64** %15, align 8
  %487 = load i64, i64* %486, align 8
  %488 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %489 = call i32 @LockBuffer(i64 %487, i32 %488)
  br label %694

490:                                              ; preds = %477, %474
  %491 = load i32, i32* %33, align 4
  %492 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %493 = and i32 %491, %492
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %549

495:                                              ; preds = %490
  %496 = load i32, i32* %12, align 4
  %497 = call i64 @get_mxact_status_for_lock(i32 %496, i32 0)
  store i64 %497, i64* %42, align 8
  %498 = load i64, i64* %42, align 8
  %499 = load i64, i64* @MultiXactStatusNoKeyUpdate, align 8
  %500 = icmp sge i64 %498, %499
  br i1 %500, label %501, label %504

501:                                              ; preds = %495
  %502 = load i32, i32* @ERROR, align 4
  %503 = call i32 @elog(i32 %502, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %504

504:                                              ; preds = %501, %495
  %505 = load i32, i32* %13, align 4
  switch i32 %505, label %548 [
    i32 130, label %506
    i32 128, label %516
    i32 129, label %531
  ]

506:                                              ; preds = %504
  %507 = load i64, i64* %32, align 8
  %508 = trunc i64 %507 to i32
  %509 = load i64, i64* %42, align 8
  %510 = load i32, i32* %33, align 4
  %511 = load i32, i32* %9, align 4
  %512 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %513 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %512, i32 0, i32 1
  %514 = load i32, i32* @XLTW_Lock, align 4
  %515 = call i32 @MultiXactIdWait(i32 %508, i64 %509, i32 %510, i32 %511, i32* %513, i32 %514, i32* null)
  br label %548

516:                                              ; preds = %504
  %517 = load i64, i64* %32, align 8
  %518 = trunc i64 %517 to i32
  %519 = load i64, i64* %42, align 8
  %520 = load i32, i32* %33, align 4
  %521 = load i32, i32* %9, align 4
  %522 = call i32 @ConditionalMultiXactIdWait(i32 %518, i64 %519, i32 %520, i32 %521, i32* null)
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %530, label %524

524:                                              ; preds = %516
  %525 = load i64, i64* @TM_WouldBlock, align 8
  store i64 %525, i64* %17, align 8
  %526 = load i64*, i64** %15, align 8
  %527 = load i64, i64* %526, align 8
  %528 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %529 = call i32 @LockBuffer(i64 %527, i32 %528)
  br label %694

530:                                              ; preds = %516
  br label %548

531:                                              ; preds = %504
  %532 = load i64, i64* %32, align 8
  %533 = trunc i64 %532 to i32
  %534 = load i64, i64* %42, align 8
  %535 = load i32, i32* %33, align 4
  %536 = load i32, i32* %9, align 4
  %537 = call i32 @ConditionalMultiXactIdWait(i32 %533, i64 %534, i32 %535, i32 %536, i32* null)
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %547, label %539

539:                                              ; preds = %531
  %540 = load i32, i32* @ERROR, align 4
  %541 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %542 = call i32 @errcode(i32 %541)
  %543 = load i32, i32* %9, align 4
  %544 = call i32 @RelationGetRelationName(i32 %543)
  %545 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %544)
  %546 = call i32 @ereport(i32 %540, i32 %545)
  br label %547

547:                                              ; preds = %539, %531
  br label %548

548:                                              ; preds = %504, %547, %530, %506
  br label %583

549:                                              ; preds = %490
  %550 = load i32, i32* %13, align 4
  switch i32 %550, label %582 [
    i32 130, label %551
    i32 128, label %558
    i32 129, label %569
  ]

551:                                              ; preds = %549
  %552 = load i64, i64* %32, align 8
  %553 = load i32, i32* %9, align 4
  %554 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %555 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %554, i32 0, i32 1
  %556 = load i32, i32* @XLTW_Lock, align 4
  %557 = call i32 @XactLockTableWait(i64 %552, i32 %553, i32* %555, i32 %556)
  br label %582

558:                                              ; preds = %549
  %559 = load i64, i64* %32, align 8
  %560 = call i32 @ConditionalXactLockTableWait(i64 %559)
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %568, label %562

562:                                              ; preds = %558
  %563 = load i64, i64* @TM_WouldBlock, align 8
  store i64 %563, i64* %17, align 8
  %564 = load i64*, i64** %15, align 8
  %565 = load i64, i64* %564, align 8
  %566 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %567 = call i32 @LockBuffer(i64 %565, i32 %566)
  br label %694

568:                                              ; preds = %558
  br label %582

569:                                              ; preds = %549
  %570 = load i64, i64* %32, align 8
  %571 = call i32 @ConditionalXactLockTableWait(i64 %570)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %581, label %573

573:                                              ; preds = %569
  %574 = load i32, i32* @ERROR, align 4
  %575 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %576 = call i32 @errcode(i32 %575)
  %577 = load i32, i32* %9, align 4
  %578 = call i32 @RelationGetRelationName(i32 %577)
  %579 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %578)
  %580 = call i32 @ereport(i32 %574, i32 %579)
  br label %581

581:                                              ; preds = %573, %569
  br label %582

582:                                              ; preds = %549, %581, %568, %551
  br label %583

583:                                              ; preds = %582, %548
  %584 = load i32, i32* %14, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %606

586:                                              ; preds = %583
  %587 = load i32, i32* %33, align 4
  %588 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %587)
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %606, label %590

590:                                              ; preds = %586
  %591 = load i32, i32* %9, align 4
  %592 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %593 = call i32 (...) @GetCurrentTransactionId()
  %594 = load i32, i32* %12, align 4
  %595 = call i64 @heap_lock_updated_tuple(i32 %591, %struct.TYPE_24__* %592, i32* %36, i32 %593, i32 %594)
  store i64 %595, i64* %43, align 8
  %596 = load i64, i64* %43, align 8
  %597 = load i64, i64* @TM_Ok, align 8
  %598 = icmp ne i64 %596, %597
  br i1 %598, label %599, label %605

599:                                              ; preds = %590
  %600 = load i64, i64* %43, align 8
  store i64 %600, i64* %17, align 8
  %601 = load i64*, i64** %15, align 8
  %602 = load i64, i64* %601, align 8
  %603 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %604 = call i32 @LockBuffer(i64 %602, i32 %603)
  br label %694

605:                                              ; preds = %590
  br label %606

606:                                              ; preds = %605, %586, %583
  %607 = load i64*, i64** %15, align 8
  %608 = load i64, i64* %607, align 8
  %609 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %610 = call i32 @LockBuffer(i64 %608, i32 %609)
  %611 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %612 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %611, i32 0, i32 0
  %613 = load %struct.TYPE_23__*, %struct.TYPE_23__** %612, align 8
  %614 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* %33, align 4
  %617 = call i64 @xmax_infomask_changed(i32 %615, i32 %616)
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %627, label %619

619:                                              ; preds = %606
  %620 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %621 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %620, i32 0, i32 0
  %622 = load %struct.TYPE_23__*, %struct.TYPE_23__** %621, align 8
  %623 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_23__* %622)
  %624 = load i64, i64* %32, align 8
  %625 = call i32 @TransactionIdEquals(i64 %623, i64 %624)
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %628, label %627

627:                                              ; preds = %619, %606
  br label %94

628:                                              ; preds = %619
  %629 = load i32, i32* %33, align 4
  %630 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %631 = and i32 %629, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %641, label %633

633:                                              ; preds = %628
  %634 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %635 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %634, i32 0, i32 0
  %636 = load %struct.TYPE_23__*, %struct.TYPE_23__** %635, align 8
  %637 = load i64*, i64** %15, align 8
  %638 = load i64, i64* %637, align 8
  %639 = load i64, i64* %32, align 8
  %640 = call i32 @UpdateXmaxHintBits(%struct.TYPE_23__* %636, i64 %638, i64 %639)
  br label %641

641:                                              ; preds = %633, %628
  br label %642

642:                                              ; preds = %641, %471
  br label %643

643:                                              ; preds = %642
  %644 = load i32, i32* %35, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %669

646:                                              ; preds = %643
  %647 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %648 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %647, i32 0, i32 0
  %649 = load %struct.TYPE_23__*, %struct.TYPE_23__** %648, align 8
  %650 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 4
  %652 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %653 = and i32 %651, %652
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %669, label %655

655:                                              ; preds = %646
  %656 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %657 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %656, i32 0, i32 0
  %658 = load %struct.TYPE_23__*, %struct.TYPE_23__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 4
  %661 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %660)
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %669, label %663

663:                                              ; preds = %655
  %664 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %665 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %664, i32 0, i32 0
  %666 = load %struct.TYPE_23__*, %struct.TYPE_23__** %665, align 8
  %667 = call i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_23__* %666)
  %668 = icmp ne i64 %667, 0
  br i1 %668, label %669, label %671

669:                                              ; preds = %663, %655, %646, %643
  %670 = load i64, i64* @TM_Ok, align 8
  store i64 %670, i64* %17, align 8
  br label %691

671:                                              ; preds = %663
  %672 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %673 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %672, i32 0, i32 1
  %674 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %675 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %674, i32 0, i32 0
  %676 = load %struct.TYPE_23__*, %struct.TYPE_23__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %676, i32 0, i32 2
  %678 = call i32 @ItemPointerEquals(i32* %673, i32* %677)
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %686

680:                                              ; preds = %671
  %681 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %682 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %681, i32 0, i32 0
  %683 = load %struct.TYPE_23__*, %struct.TYPE_23__** %682, align 8
  %684 = call i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_23__* %683)
  %685 = icmp ne i64 %684, 0
  br i1 %685, label %686, label %688

686:                                              ; preds = %680, %671
  %687 = load i64, i64* @TM_Updated, align 8
  store i64 %687, i64* %17, align 8
  br label %690

688:                                              ; preds = %680
  %689 = load i64, i64* @TM_Deleted, align 8
  store i64 %689, i64* %17, align 8
  br label %690

690:                                              ; preds = %688, %686
  br label %691

691:                                              ; preds = %690, %669
  br label %692

692:                                              ; preds = %691, %113
  br label %693

693:                                              ; preds = %692
  br label %694

694:                                              ; preds = %693, %599, %562, %524, %484, %466, %277
  %695 = load i64, i64* %17, align 8
  %696 = load i64, i64* @TM_Ok, align 8
  %697 = icmp ne i64 %695, %696
  br i1 %697, label %698, label %774

698:                                              ; preds = %694
  %699 = load i64, i64* %17, align 8
  %700 = load i64, i64* @TM_SelfModified, align 8
  %701 = icmp eq i64 %699, %700
  br i1 %701, label %714, label %702

702:                                              ; preds = %698
  %703 = load i64, i64* %17, align 8
  %704 = load i64, i64* @TM_Updated, align 8
  %705 = icmp eq i64 %703, %704
  br i1 %705, label %714, label %706

706:                                              ; preds = %702
  %707 = load i64, i64* %17, align 8
  %708 = load i64, i64* @TM_Deleted, align 8
  %709 = icmp eq i64 %707, %708
  br i1 %709, label %714, label %710

710:                                              ; preds = %706
  %711 = load i64, i64* %17, align 8
  %712 = load i64, i64* @TM_WouldBlock, align 8
  %713 = icmp eq i64 %711, %712
  br label %714

714:                                              ; preds = %710, %706, %702, %698
  %715 = phi i1 [ true, %706 ], [ true, %702 ], [ true, %698 ], [ %713, %710 ]
  %716 = zext i1 %715 to i32
  %717 = call i32 @Assert(i32 %716)
  %718 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %719 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %718, i32 0, i32 0
  %720 = load %struct.TYPE_23__*, %struct.TYPE_23__** %719, align 8
  %721 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %720, i32 0, i32 0
  %722 = load i32, i32* %721, align 4
  %723 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %724 = and i32 %722, %723
  %725 = icmp ne i32 %724, 0
  %726 = xor i1 %725, true
  %727 = zext i1 %726 to i32
  %728 = call i32 @Assert(i32 %727)
  %729 = load i64, i64* %17, align 8
  %730 = load i64, i64* @TM_Updated, align 8
  %731 = icmp ne i64 %729, %730
  br i1 %731, label %742, label %732

732:                                              ; preds = %714
  %733 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %734 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %733, i32 0, i32 1
  %735 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %736 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %735, i32 0, i32 0
  %737 = load %struct.TYPE_23__*, %struct.TYPE_23__** %736, align 8
  %738 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %737, i32 0, i32 2
  %739 = call i32 @ItemPointerEquals(i32* %734, i32* %738)
  %740 = icmp ne i32 %739, 0
  %741 = xor i1 %740, true
  br label %742

742:                                              ; preds = %732, %714
  %743 = phi i1 [ true, %714 ], [ %741, %732 ]
  %744 = zext i1 %743 to i32
  %745 = call i32 @Assert(i32 %744)
  %746 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %747 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %746, i32 0, i32 0
  %748 = load %struct.TYPE_23__*, %struct.TYPE_23__** %747, align 8
  %749 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %748, i32 0, i32 2
  %750 = load i32, i32* %749, align 4
  %751 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %752 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %751, i32 0, i32 2
  store i32 %750, i32* %752, align 4
  %753 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %754 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %753, i32 0, i32 0
  %755 = load %struct.TYPE_23__*, %struct.TYPE_23__** %754, align 8
  %756 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_23__* %755)
  %757 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %758 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %757, i32 0, i32 1
  store i32 %756, i32* %758, align 4
  %759 = load i64, i64* %17, align 8
  %760 = load i64, i64* @TM_SelfModified, align 8
  %761 = icmp eq i64 %759, %760
  br i1 %761, label %762, label %769

762:                                              ; preds = %742
  %763 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %764 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %763, i32 0, i32 0
  %765 = load %struct.TYPE_23__*, %struct.TYPE_23__** %764, align 8
  %766 = call i32 @HeapTupleHeaderGetCmax(%struct.TYPE_23__* %765)
  %767 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %768 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %767, i32 0, i32 0
  store i32 %766, i32* %768, align 4
  br label %773

769:                                              ; preds = %742
  %770 = load i32, i32* @InvalidCommandId, align 4
  %771 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %772 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %771, i32 0, i32 0
  store i32 %770, i32* %772, align 4
  br label %773

773:                                              ; preds = %769, %762
  br label %929

774:                                              ; preds = %694
  %775 = load i64, i64* %21, align 8
  %776 = load i64, i64* @InvalidBuffer, align 8
  %777 = icmp eq i64 %775, %776
  br i1 %777, label %778, label %794

778:                                              ; preds = %774
  %779 = load i32, i32* %20, align 4
  %780 = call i64 @PageIsAllVisible(i32 %779)
  %781 = icmp ne i64 %780, 0
  br i1 %781, label %782, label %794

782:                                              ; preds = %778
  %783 = load i64*, i64** %15, align 8
  %784 = load i64, i64* %783, align 8
  %785 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %786 = call i32 @LockBuffer(i64 %784, i32 %785)
  %787 = load i32, i32* %9, align 4
  %788 = load i32, i32* %22, align 4
  %789 = call i32 @visibilitymap_pin(i32 %787, i32 %788, i64* %21)
  %790 = load i64*, i64** %15, align 8
  %791 = load i64, i64* %790, align 8
  %792 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %793 = call i32 @LockBuffer(i64 %791, i32 %792)
  br label %94

794:                                              ; preds = %778, %774
  %795 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %796 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %795, i32 0, i32 0
  %797 = load %struct.TYPE_23__*, %struct.TYPE_23__** %796, align 8
  %798 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_23__* %797)
  store i64 %798, i64* %24, align 8
  %799 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %800 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %799, i32 0, i32 0
  %801 = load %struct.TYPE_23__*, %struct.TYPE_23__** %800, align 8
  %802 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %801, i32 0, i32 0
  %803 = load i32, i32* %802, align 4
  store i32 %803, i32* %25, align 4
  %804 = call i32 (...) @MultiXactIdSetOldestMember()
  %805 = load i64, i64* %24, align 8
  %806 = load i32, i32* %25, align 4
  %807 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %808 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %807, i32 0, i32 0
  %809 = load %struct.TYPE_23__*, %struct.TYPE_23__** %808, align 8
  %810 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %809, i32 0, i32 1
  %811 = load i32, i32* %810, align 4
  %812 = call i32 (...) @GetCurrentTransactionId()
  %813 = load i32, i32* %12, align 4
  %814 = call i32 @compute_new_xmax_infomask(i64 %805, i32 %806, i32 %811, i32 %812, i32 %813, i32 0, i64* %23, i32* %26, i32* %27)
  %815 = call i32 (...) @START_CRIT_SECTION()
  %816 = load i32, i32* @HEAP_XMAX_BITS, align 4
  %817 = xor i32 %816, -1
  %818 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %819 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %818, i32 0, i32 0
  %820 = load %struct.TYPE_23__*, %struct.TYPE_23__** %819, align 8
  %821 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %820, i32 0, i32 0
  %822 = load i32, i32* %821, align 4
  %823 = and i32 %822, %817
  store i32 %823, i32* %821, align 4
  %824 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %825 = xor i32 %824, -1
  %826 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %827 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %826, i32 0, i32 0
  %828 = load %struct.TYPE_23__*, %struct.TYPE_23__** %827, align 8
  %829 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %828, i32 0, i32 1
  %830 = load i32, i32* %829, align 4
  %831 = and i32 %830, %825
  store i32 %831, i32* %829, align 4
  %832 = load i32, i32* %26, align 4
  %833 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %834 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %833, i32 0, i32 0
  %835 = load %struct.TYPE_23__*, %struct.TYPE_23__** %834, align 8
  %836 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %835, i32 0, i32 0
  %837 = load i32, i32* %836, align 4
  %838 = or i32 %837, %832
  store i32 %838, i32* %836, align 4
  %839 = load i32, i32* %27, align 4
  %840 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %841 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %840, i32 0, i32 0
  %842 = load %struct.TYPE_23__*, %struct.TYPE_23__** %841, align 8
  %843 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %842, i32 0, i32 1
  %844 = load i32, i32* %843, align 4
  %845 = or i32 %844, %839
  store i32 %845, i32* %843, align 4
  %846 = load i32, i32* %26, align 4
  %847 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %846)
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %849, label %854

849:                                              ; preds = %794
  %850 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %851 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %850, i32 0, i32 0
  %852 = load %struct.TYPE_23__*, %struct.TYPE_23__** %851, align 8
  %853 = call i32 @HeapTupleHeaderClearHotUpdated(%struct.TYPE_23__* %852)
  br label %854

854:                                              ; preds = %849, %794
  %855 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %856 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %855, i32 0, i32 0
  %857 = load %struct.TYPE_23__*, %struct.TYPE_23__** %856, align 8
  %858 = load i64, i64* %23, align 8
  %859 = call i32 @HeapTupleHeaderSetXmax(%struct.TYPE_23__* %857, i64 %858)
  %860 = load i32, i32* %26, align 4
  %861 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %860)
  %862 = icmp ne i32 %861, 0
  br i1 %862, label %863, label %870

863:                                              ; preds = %854
  %864 = load i32*, i32** %18, align 8
  %865 = load i32, i32* %864, align 4
  %866 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %867 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %866, i32 0, i32 0
  %868 = load %struct.TYPE_23__*, %struct.TYPE_23__** %867, align 8
  %869 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %868, i32 0, i32 2
  store i32 %865, i32* %869, align 4
  br label %870

870:                                              ; preds = %863, %854
  %871 = load i32, i32* %20, align 4
  %872 = call i64 @PageIsAllVisible(i32 %871)
  %873 = icmp ne i64 %872, 0
  br i1 %873, label %874, label %882

874:                                              ; preds = %870
  %875 = load i32, i32* %9, align 4
  %876 = load i32, i32* %22, align 4
  %877 = load i64, i64* %21, align 8
  %878 = load i32, i32* @VISIBILITYMAP_ALL_FROZEN, align 4
  %879 = call i64 @visibilitymap_clear(i32 %875, i32 %876, i64 %877, i32 %878)
  %880 = icmp ne i64 %879, 0
  br i1 %880, label %881, label %882

881:                                              ; preds = %874
  store i32 1, i32* %31, align 4
  br label %882

882:                                              ; preds = %881, %874, %870
  %883 = load i64*, i64** %15, align 8
  %884 = load i64, i64* %883, align 8
  %885 = call i32 @MarkBufferDirty(i64 %884)
  %886 = load i32, i32* %9, align 4
  %887 = call i64 @RelationNeedsWAL(i32 %886)
  %888 = icmp ne i64 %887, 0
  br i1 %888, label %889, label %926

889:                                              ; preds = %882
  %890 = call i32 (...) @XLogBeginInsert()
  %891 = load i64*, i64** %15, align 8
  %892 = load i64, i64* %891, align 8
  %893 = load i32, i32* @REGBUF_STANDARD, align 4
  %894 = call i32 @XLogRegisterBuffer(i32 0, i64 %892, i32 %893)
  %895 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %896 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %895, i32 0, i32 1
  %897 = call i32 @ItemPointerGetOffsetNumber(i32* %896)
  %898 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 3
  store i32 %897, i32* %898, align 8
  %899 = load i64, i64* %23, align 8
  %900 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  store i64 %899, i64* %900, align 8
  %901 = load i32, i32* %26, align 4
  %902 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %903 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %902, i32 0, i32 0
  %904 = load %struct.TYPE_23__*, %struct.TYPE_23__** %903, align 8
  %905 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %904, i32 0, i32 1
  %906 = load i32, i32* %905, align 4
  %907 = call i32 @compute_infobits(i32 %901, i32 %906)
  %908 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  store i32 %907, i32* %908, align 4
  %909 = load i32, i32* %31, align 4
  %910 = icmp ne i32 %909, 0
  br i1 %910, label %911, label %913

911:                                              ; preds = %889
  %912 = load i32, i32* @XLH_LOCK_ALL_FROZEN_CLEARED, align 4
  br label %914

913:                                              ; preds = %889
  br label %914

914:                                              ; preds = %913, %911
  %915 = phi i32 [ %912, %911 ], [ 0, %913 ]
  %916 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  store i32 %915, i32* %916, align 8
  %917 = bitcast %struct.TYPE_20__* %44 to i8*
  %918 = load i32, i32* @SizeOfHeapLock, align 4
  %919 = call i32 @XLogRegisterData(i8* %917, i32 %918)
  %920 = load i32, i32* @RM_HEAP_ID, align 4
  %921 = load i32, i32* @XLOG_HEAP_LOCK, align 4
  %922 = call i32 @XLogInsert(i32 %920, i32 %921)
  store i32 %922, i32* %45, align 4
  %923 = load i32, i32* %20, align 4
  %924 = load i32, i32* %45, align 4
  %925 = call i32 @PageSetLSN(i32 %923, i32 %924)
  br label %926

926:                                              ; preds = %914, %882
  %927 = call i32 (...) @END_CRIT_SECTION()
  %928 = load i64, i64* @TM_Ok, align 8
  store i64 %928, i64* %17, align 8
  br label %929

929:                                              ; preds = %926, %773, %103
  %930 = load i64*, i64** %15, align 8
  %931 = load i64, i64* %930, align 8
  %932 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %933 = call i32 @LockBuffer(i64 %931, i32 %932)
  br label %934

934:                                              ; preds = %929, %243, %231, %224, %211, %177
  %935 = load i64, i64* %21, align 8
  %936 = call i64 @BufferIsValid(i64 %935)
  %937 = icmp ne i64 %936, 0
  br i1 %937, label %938, label %941

938:                                              ; preds = %934
  %939 = load i64, i64* %21, align 8
  %940 = call i32 @ReleaseBuffer(i64 %939)
  br label %941

941:                                              ; preds = %938, %934
  %942 = load i32, i32* %30, align 4
  %943 = icmp ne i32 %942, 0
  br i1 %943, label %944, label %949

944:                                              ; preds = %941
  %945 = load i32, i32* %9, align 4
  %946 = load i32*, i32** %18, align 8
  %947 = load i32, i32* %12, align 4
  %948 = call i32 @UnlockTupleTuplock(i32 %945, i32* %946, i32 %947)
  br label %949

949:                                              ; preds = %944, %941
  %950 = load i64, i64* %17, align 8
  ret i64 %950
}

declare dso_local i64 @ReadBuffer(i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @PageIsAllVisible(i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @visibilitymap_pin(i32, i32, i64*) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i64 @HeapTupleSatisfiesUpdate(%struct.TYPE_24__*, i32, i64) #1

declare dso_local i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_23__*) #1

declare dso_local i32 @ItemPointerCopy(i32*, i32*) #1

declare dso_local i32 @GetMultiXactIdMembers(i64, %struct.TYPE_22__**, i32, i32) #1

declare dso_local i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i64) #1

declare dso_local i32 @TUPLOCK_from_mxstatus(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_22__*) #1

declare dso_local i64 @HEAP_XMAX_IS_KEYSHR_LOCKED(i32) #1

declare dso_local i32 @HEAP_XMAX_IS_SHR_LOCKED(i32) #1

declare dso_local i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32) #1

declare dso_local i64 @heap_lock_updated_tuple(i32, %struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @GetCurrentTransactionId(...) #1

declare dso_local i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_23__*) #1

declare dso_local i32 @DoesMultiXactIdConflict(i32, i32, i32, i32*) #1

declare dso_local i64 @xmax_infomask_changed(i32, i32) #1

declare dso_local i32 @TransactionIdEquals(i64, i64) #1

declare dso_local i32 @heap_acquire_tuplock(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @get_mxact_status_for_lock(i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @MultiXactIdWait(i32, i64, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ConditionalMultiXactIdWait(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @XactLockTableWait(i64, i32, i32*, i32) #1

declare dso_local i32 @ConditionalXactLockTableWait(i64) #1

declare dso_local i32 @UpdateXmaxHintBits(%struct.TYPE_23__*, i64, i64) #1

declare dso_local i32 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_23__*) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_23__*) #1

declare dso_local i32 @HeapTupleHeaderGetCmax(%struct.TYPE_23__*) #1

declare dso_local i32 @MultiXactIdSetOldestMember(...) #1

declare dso_local i32 @compute_new_xmax_infomask(i64, i32, i32, i32, i32, i32, i64*, i32*, i32*) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @HeapTupleHeaderClearHotUpdated(%struct.TYPE_23__*) #1

declare dso_local i32 @HeapTupleHeaderSetXmax(%struct.TYPE_23__*, i64) #1

declare dso_local i64 @visibilitymap_clear(i32, i32, i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @compute_infobits(i32, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i64 @BufferIsValid(i64) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

declare dso_local i32 @UnlockTupleTuplock(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
