; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_RelationGetBufferForTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_hio.c_RelationGetBufferForTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@HEAP_INSERT_SKIP_FSM = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@MaxHeapTupleSize = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"row is too big: size %zu, maximum size %zu\00", align 1
@HEAP_DEFAULT_FILLFACTOR = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@P_NEW = common dso_local global i64 0, align 8
@RBM_ZERO_AND_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"page %u of relation \22%s\22 should be empty but is not\00", align 1
@PANIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"tuple is too big: size %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RelationGetBufferForTuple(i32 %0, i64 %1, i64 %2, i32 %3, %struct.TYPE_5__* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @HEAP_INSERT_SKIP_FSM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %16, align 4
  %31 = load i64, i64* @InvalidBuffer, align 8
  store i64 %31, i64* %17, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @MAXALIGN(i64 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @InvalidBuffer, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %7
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %7
  %42 = phi i1 [ true, %7 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @MaxHeapTupleSize, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %51 = call i32 @errcode(i32 %50)
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @MaxHeapTupleSize, align 8
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53)
  %55 = call i32 @ereport(i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %48, %41
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @HEAP_DEFAULT_FILLFACTOR, align 4
  %59 = call i64 @RelationGetTargetPageFreeSpace(i32 %57, i32 %58)
  store i64 %59, i64* %20, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @InvalidBuffer, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @BufferGetBlockNumber(i64 %64)
  store i64 %65, i64* %22, align 8
  br label %68

66:                                               ; preds = %56
  %67 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %67, i64* %22, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %20, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i64, i64* @MaxHeapTupleSize, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %75, i64* %21, align 8
  store i32 0, i32* %16, align 4
  br label %94

76:                                               ; preds = %68
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @InvalidBuffer, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @BufferGetBlockNumber(i64 %88)
  store i64 %89, i64* %21, align 8
  br label %93

90:                                               ; preds = %79, %76
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @RelationGetTargetBlock(i32 %91)
  store i64 %92, i64* %21, align 8
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* @InvalidBlockNumber, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %20, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i64 @GetPageWithFreeSpace(i32 %102, i64 %105)
  store i64 %106, i64* %21, align 8
  %107 = load i64, i64* %21, align 8
  %108 = load i64, i64* @InvalidBlockNumber, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %101
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @RelationGetNumberOfBlocks(i32 %111)
  store i64 %112, i64* %24, align 8
  %113 = load i64, i64* %24, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i64, i64* %24, align 8
  %117 = sub nsw i64 %116, 1
  store i64 %117, i64* %21, align 8
  br label %118

118:                                              ; preds = %115, %110
  br label %119

119:                                              ; preds = %118, %101
  br label %120

120:                                              ; preds = %119, %98, %94
  br label %121

121:                                              ; preds = %403, %331, %120
  br label %122

122:                                              ; preds = %291, %121
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* @InvalidBlockNumber, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %299

126:                                              ; preds = %122
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* @InvalidBuffer, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = load i64, i64* %21, align 8
  %133 = load i32, i32* @RBM_NORMAL, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %135 = call i64 @ReadBufferBI(i32 %131, i64 %132, i32 %133, %struct.TYPE_5__* %134)
  store i64 %135, i64* %17, align 8
  %136 = load i64, i64* %17, align 8
  %137 = call i32 @BufferGetPage(i64 %136)
  %138 = call i64 @PageIsAllVisible(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load i32, i32* %9, align 4
  %142 = load i64, i64* %21, align 8
  %143 = load i64*, i64** %14, align 8
  %144 = call i32 @visibilitymap_pin(i32 %141, i64 %142, i64* %143)
  br label %145

145:                                              ; preds = %140, %130
  %146 = load i64, i64* %17, align 8
  %147 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %148 = call i32 @LockBuffer(i64 %146, i32 %147)
  br label %214

149:                                              ; preds = %126
  %150 = load i64, i64* %22, align 8
  %151 = load i64, i64* %21, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %149
  %154 = load i64, i64* %11, align 8
  store i64 %154, i64* %17, align 8
  %155 = load i64, i64* %17, align 8
  %156 = call i32 @BufferGetPage(i64 %155)
  %157 = call i64 @PageIsAllVisible(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load i32, i32* %9, align 4
  %161 = load i64, i64* %21, align 8
  %162 = load i64*, i64** %14, align 8
  %163 = call i32 @visibilitymap_pin(i32 %160, i64 %161, i64* %162)
  br label %164

164:                                              ; preds = %159, %153
  %165 = load i64, i64* %17, align 8
  %166 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %167 = call i32 @LockBuffer(i64 %165, i32 %166)
  br label %213

168:                                              ; preds = %149
  %169 = load i64, i64* %22, align 8
  %170 = load i64, i64* %21, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %192

172:                                              ; preds = %168
  %173 = load i32, i32* %9, align 4
  %174 = load i64, i64* %21, align 8
  %175 = call i64 @ReadBuffer(i32 %173, i64 %174)
  store i64 %175, i64* %17, align 8
  %176 = load i64, i64* %17, align 8
  %177 = call i32 @BufferGetPage(i64 %176)
  %178 = call i64 @PageIsAllVisible(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %172
  %181 = load i32, i32* %9, align 4
  %182 = load i64, i64* %21, align 8
  %183 = load i64*, i64** %14, align 8
  %184 = call i32 @visibilitymap_pin(i32 %181, i64 %182, i64* %183)
  br label %185

185:                                              ; preds = %180, %172
  %186 = load i64, i64* %11, align 8
  %187 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %188 = call i32 @LockBuffer(i64 %186, i32 %187)
  %189 = load i64, i64* %17, align 8
  %190 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %191 = call i32 @LockBuffer(i64 %189, i32 %190)
  br label %212

192:                                              ; preds = %168
  %193 = load i32, i32* %9, align 4
  %194 = load i64, i64* %21, align 8
  %195 = call i64 @ReadBuffer(i32 %193, i64 %194)
  store i64 %195, i64* %17, align 8
  %196 = load i64, i64* %17, align 8
  %197 = call i32 @BufferGetPage(i64 %196)
  %198 = call i64 @PageIsAllVisible(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %192
  %201 = load i32, i32* %9, align 4
  %202 = load i64, i64* %21, align 8
  %203 = load i64*, i64** %14, align 8
  %204 = call i32 @visibilitymap_pin(i32 %201, i64 %202, i64* %203)
  br label %205

205:                                              ; preds = %200, %192
  %206 = load i64, i64* %17, align 8
  %207 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %208 = call i32 @LockBuffer(i64 %206, i32 %207)
  %209 = load i64, i64* %11, align 8
  %210 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %211 = call i32 @LockBuffer(i64 %209, i32 %210)
  br label %212

212:                                              ; preds = %205, %185
  br label %213

213:                                              ; preds = %212, %164
  br label %214

214:                                              ; preds = %213, %145
  %215 = load i64, i64* %11, align 8
  %216 = load i64, i64* @InvalidBuffer, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load i64, i64* %21, align 8
  %220 = load i64, i64* %22, align 8
  %221 = icmp sle i64 %219, %220
  br i1 %221, label %222, label %231

222:                                              ; preds = %218, %214
  %223 = load i32, i32* %9, align 4
  %224 = load i64, i64* %17, align 8
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* %21, align 8
  %227 = load i64, i64* %22, align 8
  %228 = load i64*, i64** %14, align 8
  %229 = load i64*, i64** %15, align 8
  %230 = call i32 @GetVisibilityMapPins(i32 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64* %228, i64* %229)
  br label %240

231:                                              ; preds = %218
  %232 = load i32, i32* %9, align 4
  %233 = load i64, i64* %11, align 8
  %234 = load i64, i64* %17, align 8
  %235 = load i64, i64* %22, align 8
  %236 = load i64, i64* %21, align 8
  %237 = load i64*, i64** %15, align 8
  %238 = load i64*, i64** %14, align 8
  %239 = call i32 @GetVisibilityMapPins(i32 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64* %237, i64* %238)
  br label %240

240:                                              ; preds = %231, %222
  %241 = load i64, i64* %17, align 8
  %242 = call i32 @BufferGetPage(i64 %241)
  store i32 %242, i32* %18, align 4
  %243 = load i32, i32* %18, align 4
  %244 = call i64 @PageIsNew(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = load i32, i32* %18, align 4
  %248 = load i64, i64* %17, align 8
  %249 = call i32 @BufferGetPageSize(i64 %248)
  %250 = call i32 @PageInit(i32 %247, i32 %249, i32 0)
  %251 = load i64, i64* %17, align 8
  %252 = call i32 @MarkBufferDirty(i64 %251)
  br label %253

253:                                              ; preds = %246, %240
  %254 = load i32, i32* %18, align 4
  %255 = call i64 @PageGetHeapFreeSpace(i32 %254)
  store i64 %255, i64* %19, align 8
  %256 = load i64, i64* %10, align 8
  %257 = load i64, i64* %20, align 8
  %258 = add nsw i64 %256, %257
  %259 = load i64, i64* %19, align 8
  %260 = icmp sle i64 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %253
  %262 = load i32, i32* %9, align 4
  %263 = load i64, i64* %21, align 8
  %264 = call i32 @RelationSetTargetBlock(i32 %262, i64 %263)
  %265 = load i64, i64* %17, align 8
  store i64 %265, i64* %8, align 8
  br label %426

266:                                              ; preds = %253
  %267 = load i64, i64* %17, align 8
  %268 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %269 = call i32 @LockBuffer(i64 %267, i32 %268)
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* @InvalidBuffer, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %266
  %274 = load i64, i64* %17, align 8
  %275 = call i32 @ReleaseBuffer(i64 %274)
  br label %287

276:                                              ; preds = %266
  %277 = load i64, i64* %22, align 8
  %278 = load i64, i64* %21, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = load i64, i64* %11, align 8
  %282 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %283 = call i32 @LockBuffer(i64 %281, i32 %282)
  %284 = load i64, i64* %17, align 8
  %285 = call i32 @ReleaseBuffer(i64 %284)
  br label %286

286:                                              ; preds = %280, %276
  br label %287

287:                                              ; preds = %286, %273
  %288 = load i32, i32* %16, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  br label %299

291:                                              ; preds = %287
  %292 = load i32, i32* %9, align 4
  %293 = load i64, i64* %21, align 8
  %294 = load i64, i64* %19, align 8
  %295 = load i64, i64* %10, align 8
  %296 = load i64, i64* %20, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i64 @RecordAndGetPageWithFreeSpace(i32 %292, i64 %293, i64 %294, i64 %297)
  store i64 %298, i64* %21, align 8
  br label %122

299:                                              ; preds = %290, %122
  %300 = load i32, i32* %9, align 4
  %301 = call i32 @RELATION_IS_LOCAL(i32 %300)
  %302 = icmp ne i32 %301, 0
  %303 = xor i1 %302, true
  %304 = zext i1 %303 to i32
  store i32 %304, i32* %23, align 4
  %305 = load i32, i32* %23, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %341

307:                                              ; preds = %299
  %308 = load i32, i32* %16, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* @ExclusiveLock, align 4
  %313 = call i32 @LockRelationForExtension(i32 %311, i32 %312)
  br label %340

314:                                              ; preds = %307
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @ExclusiveLock, align 4
  %317 = call i32 @ConditionalLockRelationForExtension(i32 %315, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %339, label %319

319:                                              ; preds = %314
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* @ExclusiveLock, align 4
  %322 = call i32 @LockRelationForExtension(i32 %320, i32 %321)
  %323 = load i32, i32* %9, align 4
  %324 = load i64, i64* %10, align 8
  %325 = load i64, i64* %20, align 8
  %326 = add nsw i64 %324, %325
  %327 = call i64 @GetPageWithFreeSpace(i32 %323, i64 %326)
  store i64 %327, i64* %21, align 8
  %328 = load i64, i64* %21, align 8
  %329 = load i64, i64* @InvalidBlockNumber, align 8
  %330 = icmp ne i64 %328, %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %319
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* @ExclusiveLock, align 4
  %334 = call i32 @UnlockRelationForExtension(i32 %332, i32 %333)
  br label %121

335:                                              ; preds = %319
  %336 = load i32, i32* %9, align 4
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %338 = call i32 @RelationAddExtraBlocks(i32 %336, %struct.TYPE_5__* %337)
  br label %339

339:                                              ; preds = %335, %314
  br label %340

340:                                              ; preds = %339, %310
  br label %341

341:                                              ; preds = %340, %299
  %342 = load i32, i32* %9, align 4
  %343 = load i64, i64* @P_NEW, align 8
  %344 = load i32, i32* @RBM_ZERO_AND_LOCK, align 4
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %346 = call i64 @ReadBufferBI(i32 %342, i64 %343, i32 %344, %struct.TYPE_5__* %345)
  store i64 %346, i64* %17, align 8
  %347 = load i64, i64* %17, align 8
  %348 = call i32 @BufferGetPage(i64 %347)
  store i32 %348, i32* %18, align 4
  %349 = load i32, i32* %18, align 4
  %350 = call i64 @PageIsNew(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %359, label %352

352:                                              ; preds = %341
  %353 = load i32, i32* @ERROR, align 4
  %354 = load i64, i64* %17, align 8
  %355 = call i64 @BufferGetBlockNumber(i64 %354)
  %356 = load i32, i32* %9, align 4
  %357 = call i32 @RelationGetRelationName(i32 %356)
  %358 = call i32 (i32, i8*, i64, ...) @elog(i32 %353, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %355, i32 %357)
  br label %359

359:                                              ; preds = %352, %341
  %360 = load i32, i32* %18, align 4
  %361 = load i64, i64* %17, align 8
  %362 = call i32 @BufferGetPageSize(i64 %361)
  %363 = call i32 @PageInit(i32 %360, i32 %362, i32 0)
  %364 = load i64, i64* %17, align 8
  %365 = call i32 @MarkBufferDirty(i64 %364)
  %366 = load i32, i32* %23, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %359
  %369 = load i32, i32* %9, align 4
  %370 = load i32, i32* @ExclusiveLock, align 4
  %371 = call i32 @UnlockRelationForExtension(i32 %369, i32 %370)
  br label %372

372:                                              ; preds = %368, %359
  %373 = load i64, i64* %11, align 8
  %374 = load i64, i64* @InvalidBuffer, align 8
  %375 = icmp ne i64 %373, %374
  br i1 %375, label %376, label %411

376:                                              ; preds = %372
  %377 = load i64, i64* %11, align 8
  %378 = load i64, i64* %17, align 8
  %379 = icmp ne i64 %377, %378
  %380 = zext i1 %379 to i32
  %381 = call i32 @Assert(i32 %380)
  %382 = load i64, i64* %11, align 8
  %383 = call i32 @ConditionalLockBuffer(i64 %382)
  %384 = icmp ne i32 %383, 0
  %385 = xor i1 %384, true
  %386 = zext i1 %385 to i32
  %387 = call i64 @unlikely(i32 %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %410

389:                                              ; preds = %376
  %390 = load i64, i64* %17, align 8
  %391 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %392 = call i32 @LockBuffer(i64 %390, i32 %391)
  %393 = load i64, i64* %11, align 8
  %394 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %395 = call i32 @LockBuffer(i64 %393, i32 %394)
  %396 = load i64, i64* %17, align 8
  %397 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %398 = call i32 @LockBuffer(i64 %396, i32 %397)
  %399 = load i64, i64* %10, align 8
  %400 = load i32, i32* %18, align 4
  %401 = call i64 @PageGetHeapFreeSpace(i32 %400)
  %402 = icmp sgt i64 %399, %401
  br i1 %402, label %403, label %409

403:                                              ; preds = %389
  %404 = load i64, i64* %11, align 8
  %405 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %406 = call i32 @LockBuffer(i64 %404, i32 %405)
  %407 = load i64, i64* %17, align 8
  %408 = call i32 @UnlockReleaseBuffer(i64 %407)
  br label %121

409:                                              ; preds = %389
  br label %410

410:                                              ; preds = %409, %376
  br label %411

411:                                              ; preds = %410, %372
  %412 = load i64, i64* %10, align 8
  %413 = load i32, i32* %18, align 4
  %414 = call i64 @PageGetHeapFreeSpace(i32 %413)
  %415 = icmp sgt i64 %412, %414
  br i1 %415, label %416, label %420

416:                                              ; preds = %411
  %417 = load i32, i32* @PANIC, align 4
  %418 = load i64, i64* %10, align 8
  %419 = call i32 (i32, i8*, i64, ...) @elog(i32 %417, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %418)
  br label %420

420:                                              ; preds = %416, %411
  %421 = load i32, i32* %9, align 4
  %422 = load i64, i64* %17, align 8
  %423 = call i64 @BufferGetBlockNumber(i64 %422)
  %424 = call i32 @RelationSetTargetBlock(i32 %421, i64 %423)
  %425 = load i64, i64* %17, align 8
  store i64 %425, i64* %8, align 8
  br label %426

426:                                              ; preds = %420, %261
  %427 = load i64, i64* %8, align 8
  ret i64 %427
}

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i64) #1

declare dso_local i64 @RelationGetTargetPageFreeSpace(i32, i32) #1

declare dso_local i64 @BufferGetBlockNumber(i64) #1

declare dso_local i64 @RelationGetTargetBlock(i32) #1

declare dso_local i64 @GetPageWithFreeSpace(i32, i64) #1

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i64 @ReadBufferBI(i32, i64, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @PageIsAllVisible(i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @visibilitymap_pin(i32, i64, i64*) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i64 @ReadBuffer(i32, i64) #1

declare dso_local i32 @GetVisibilityMapPins(i32, i64, i64, i64, i64, i64*, i64*) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i32 @PageInit(i32, i32, i32) #1

declare dso_local i32 @BufferGetPageSize(i64) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i64 @PageGetHeapFreeSpace(i32) #1

declare dso_local i32 @RelationSetTargetBlock(i32, i64) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

declare dso_local i64 @RecordAndGetPageWithFreeSpace(i32, i64, i64, i64) #1

declare dso_local i32 @RELATION_IS_LOCAL(i32) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i32 @ConditionalLockRelationForExtension(i32, i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

declare dso_local i32 @RelationAddExtraBlocks(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @elog(i32, i8*, i64, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ConditionalLockBuffer(i64) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
