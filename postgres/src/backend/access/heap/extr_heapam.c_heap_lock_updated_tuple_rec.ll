; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_lock_updated_tuple_rec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_lock_updated_tuple_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@SnapshotAny = common dso_local global i32 0, align 4
@TM_Ok = common dso_local global i64 0, align 8
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@TM_SelfModified = common dso_local global i64 0, align 8
@XLTW_LockUpdated = common dso_local global i32 0, align 4
@MultiXactStatusForKeyShare = common dso_local global i32 0, align 4
@MultiXactStatusForShare = common dso_local global i32 0, align 4
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@MultiXactStatusForUpdate = common dso_local global i32 0, align 4
@MultiXactStatusForNoKeyUpdate = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid lock status in tuple\00", align 1
@MultiXactStatusUpdate = common dso_local global i32 0, align 4
@MultiXactStatusNoKeyUpdate = common dso_local global i32 0, align 4
@VISIBILITYMAP_ALL_FROZEN = common dso_local global i32 0, align 4
@HEAP_XMAX_BITS = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@XLH_LOCK_ALL_FROZEN_CLEARED = common dso_local global i32 0, align 4
@SizeOfHeapLockUpdated = common dso_local global i32 0, align 4
@RM_HEAP2_ID = common dso_local global i32 0, align 4
@XLOG_HEAP2_LOCK_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32)* @heap_lock_updated_tuple_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @heap_lock_updated_tuple_rec(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_15__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_14__, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %33 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %33, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %34 = load i64, i64* @InvalidBuffer, align 8
  store i64 %34, i64* %22, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ItemPointerCopy(i32* %35, i32* %10)
  br label %37

37:                                               ; preds = %397, %4
  store i32 0, i32* %13, align 4
  %38 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %38, i32* %18, align 4
  %39 = call i32 @ItemPointerGetBlockNumber(i32* %10)
  store i32 %39, i32* %23, align 4
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %41 = call i32 @ItemPointerCopy(i32* %10, i32* %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SnapshotAny, align 4
  %44 = call i32 @heap_fetch(i32 %42, i32 %43, %struct.TYPE_16__* %11, i64* %12)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load i64, i64* @TM_Ok, align 8
  store i64 %47, i64* %9, align 8
  br label %410

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %260, %168, %48
  %50 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @BufferGetPage(i64 %51)
  %53 = call i64 @PageIsAllVisible(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %23, align 4
  %58 = call i32 @visibilitymap_pin(i32 %56, i32 %57, i64* %22)
  store i32 1, i32* %21, align 4
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %21, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %63 = call i32 @LockBuffer(i64 %61, i32 %62)
  %64 = load i32, i32* %21, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %60
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @BufferGetPage(i64 %67)
  %69 = call i64 @PageIsAllVisible(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %74 = call i32 @LockBuffer(i64 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %23, align 4
  %77 = call i32 @visibilitymap_pin(i32 %75, i32 %76, i64* %22)
  %78 = load i64, i64* %12, align 8
  %79 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %80 = call i32 @LockBuffer(i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %71, %66, %60
  %82 = load i32, i32* %19, align 4
  %83 = call i64 @TransactionIdIsValid(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_17__* %87)
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @TransactionIdEquals(i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %85
  %93 = load i64, i64* @TM_Ok, align 8
  store i64 %93, i64* %9, align 8
  br label %407

94:                                               ; preds = %85, %81
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_17__* %96)
  %98 = call i64 @TransactionIdDidAbort(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i64, i64* @TM_Ok, align 8
  store i64 %101, i64* %9, align 8
  br label %407

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %15, align 4
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %16, align 4
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_17__* %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %276, label %118

118:                                              ; preds = %102
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_17__* %120)
  store i32 %121, i32* %24, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %202

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @HEAP_LOCKED_UPGRADED(i32 %130)
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @Assert(i32 %134)
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %137)
  %139 = call i32 @GetMultiXactIdMembers(i32 %136, %struct.TYPE_15__** %28, i32 0, i64 %138)
  store i32 %139, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %140

140:                                              ; preds = %192, %126
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %26, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %195

144:                                              ; preds = %140
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %146 = load i32, i32* %27, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %152 = load i32, i32* %27, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i64 @test_lockmode_for_conflict(i32 %150, i32 %156, i32 %157, %struct.TYPE_16__* %11, i32* %25)
  store i64 %158, i64* %9, align 8
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* @TM_SelfModified, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %144
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %164 = call i32 @pfree(%struct.TYPE_15__* %163)
  br label %370

165:                                              ; preds = %144
  %166 = load i32, i32* %25, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %165
  %169 = load i64, i64* %12, align 8
  %170 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %171 = call i32 @LockBuffer(i64 %169, i32 %170)
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %173 = load i32, i32* %27, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %5, align 4
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %180 = load i32, i32* @XLTW_LockUpdated, align 4
  %181 = call i32 @XactLockTableWait(i32 %177, i32 %178, i32* %179, i32 %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %183 = call i32 @pfree(%struct.TYPE_15__* %182)
  br label %49

184:                                              ; preds = %165
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* @TM_Ok, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %190 = call i32 @pfree(%struct.TYPE_15__* %189)
  br label %407

191:                                              ; preds = %184
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %27, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %27, align 4
  br label %140

195:                                              ; preds = %140
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %197 = icmp ne %struct.TYPE_15__* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %200 = call i32 @pfree(%struct.TYPE_15__* %199)
  br label %201

201:                                              ; preds = %198, %195
  br label %275

202:                                              ; preds = %118
  %203 = load i32, i32* %15, align 4
  %204 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %238

206:                                              ; preds = %202
  %207 = load i32, i32* %15, align 4
  %208 = call i64 @HEAP_XMAX_IS_KEYSHR_LOCKED(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @MultiXactStatusForKeyShare, align 4
  store i32 %211, i32* %29, align 4
  br label %237

212:                                              ; preds = %206
  %213 = load i32, i32* %15, align 4
  %214 = call i64 @HEAP_XMAX_IS_SHR_LOCKED(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i32, i32* @MultiXactStatusForShare, align 4
  store i32 %217, i32* %29, align 4
  br label %236

218:                                              ; preds = %212
  %219 = load i32, i32* %15, align 4
  %220 = call i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %218
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = load i32, i32* @MultiXactStatusForUpdate, align 4
  store i32 %228, i32* %29, align 4
  br label %231

229:                                              ; preds = %222
  %230 = load i32, i32* @MultiXactStatusForNoKeyUpdate, align 4
  store i32 %230, i32* %29, align 4
  br label %231

231:                                              ; preds = %229, %227
  br label %235

232:                                              ; preds = %218
  %233 = load i32, i32* @ERROR, align 4
  %234 = call i32 @elog(i32 %233, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %231
  br label %236

236:                                              ; preds = %235, %216
  br label %237

237:                                              ; preds = %236, %210
  br label %248

238:                                              ; preds = %202
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* @MultiXactStatusUpdate, align 4
  store i32 %244, i32* %29, align 4
  br label %247

245:                                              ; preds = %238
  %246 = load i32, i32* @MultiXactStatusNoKeyUpdate, align 4
  store i32 %246, i32* %29, align 4
  br label %247

247:                                              ; preds = %245, %243
  br label %248

248:                                              ; preds = %247, %237
  %249 = load i32, i32* %29, align 4
  %250 = load i32, i32* %24, align 4
  %251 = load i32, i32* %8, align 4
  %252 = call i64 @test_lockmode_for_conflict(i32 %249, i32 %250, i32 %251, %struct.TYPE_16__* %11, i32* %25)
  store i64 %252, i64* %9, align 8
  %253 = load i64, i64* %9, align 8
  %254 = load i64, i64* @TM_SelfModified, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %248
  br label %370

257:                                              ; preds = %248
  %258 = load i32, i32* %25, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %257
  %261 = load i64, i64* %12, align 8
  %262 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %263 = call i32 @LockBuffer(i64 %261, i32 %262)
  %264 = load i32, i32* %24, align 4
  %265 = load i32, i32* %5, align 4
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %267 = load i32, i32* @XLTW_LockUpdated, align 4
  %268 = call i32 @XactLockTableWait(i32 %264, i32 %265, i32* %266, i32 %267)
  br label %49

269:                                              ; preds = %257
  %270 = load i64, i64* %9, align 8
  %271 = load i64, i64* @TM_Ok, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  br label %407

274:                                              ; preds = %269
  br label %275

275:                                              ; preds = %274, %201
  br label %276

276:                                              ; preds = %275, %102
  %277 = load i32, i32* %17, align 4
  %278 = load i32, i32* %15, align 4
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* %8, align 4
  %285 = call i32 @compute_new_xmax_infomask(i32 %277, i32 %278, i32 %282, i32 %283, i32 %284, i32 0, i32* %18, i32* %13, i32* %14)
  %286 = load i64, i64* %12, align 8
  %287 = call i32 @BufferGetPage(i64 %286)
  %288 = call i64 @PageIsAllVisible(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %276
  %291 = load i32, i32* %5, align 4
  %292 = load i32, i32* %23, align 4
  %293 = load i64, i64* %22, align 8
  %294 = load i32, i32* @VISIBILITYMAP_ALL_FROZEN, align 4
  %295 = call i64 @visibilitymap_clear(i32 %291, i32 %292, i64 %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  store i32 1, i32* %20, align 4
  br label %298

298:                                              ; preds = %297, %290, %276
  %299 = call i32 (...) @START_CRIT_SECTION()
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %300, align 8
  %302 = load i32, i32* %18, align 4
  %303 = call i32 @HeapTupleHeaderSetXmax(%struct.TYPE_17__* %301, i32 %302)
  %304 = load i32, i32* @HEAP_XMAX_BITS, align 4
  %305 = xor i32 %304, -1
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, %305
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %312 = xor i32 %311, -1
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = and i32 %316, %312
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* %13, align 4
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %318
  store i32 %323, i32* %321, align 4
  %324 = load i32, i32* %14, align 4
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %324
  store i32 %329, i32* %327, align 4
  %330 = load i64, i64* %12, align 8
  %331 = call i32 @MarkBufferDirty(i64 %330)
  %332 = load i32, i32* %5, align 4
  %333 = call i64 @RelationNeedsWAL(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %368

335:                                              ; preds = %298
  %336 = load i64, i64* %12, align 8
  %337 = call i32 @BufferGetPage(i64 %336)
  store i32 %337, i32* %32, align 4
  %338 = call i32 (...) @XLogBeginInsert()
  %339 = load i64, i64* %12, align 8
  %340 = load i32, i32* @REGBUF_STANDARD, align 4
  %341 = call i32 @XLogRegisterBuffer(i32 0, i64 %339, i32 %340)
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %343 = call i32 @ItemPointerGetOffsetNumber(i32* %342)
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  store i32 %343, i32* %344, align 4
  %345 = load i32, i32* %18, align 4
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  store i32 %345, i32* %346, align 4
  %347 = load i32, i32* %13, align 4
  %348 = load i32, i32* %14, align 4
  %349 = call i32 @compute_infobits(i32 %347, i32 %348)
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  store i32 %349, i32* %350, align 4
  %351 = load i32, i32* %20, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %335
  %354 = load i32, i32* @XLH_LOCK_ALL_FROZEN_CLEARED, align 4
  br label %356

355:                                              ; preds = %335
  br label %356

356:                                              ; preds = %355, %353
  %357 = phi i32 [ %354, %353 ], [ 0, %355 ]
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i32 %357, i32* %358, align 4
  %359 = bitcast %struct.TYPE_14__* %30 to i8*
  %360 = load i32, i32* @SizeOfHeapLockUpdated, align 4
  %361 = call i32 @XLogRegisterData(i8* %359, i32 %360)
  %362 = load i32, i32* @RM_HEAP2_ID, align 4
  %363 = load i32, i32* @XLOG_HEAP2_LOCK_UPDATED, align 4
  %364 = call i32 @XLogInsert(i32 %362, i32 %363)
  store i32 %364, i32* %31, align 4
  %365 = load i32, i32* %32, align 4
  %366 = load i32, i32* %31, align 4
  %367 = call i32 @PageSetLSN(i32 %365, i32 %366)
  br label %368

368:                                              ; preds = %356, %298
  %369 = call i32 (...) @END_CRIT_SECTION()
  br label %370

370:                                              ; preds = %368, %256, %162
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %395, label %378

378:                                              ; preds = %370
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %379, align 8
  %381 = call i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_17__* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %395, label %383

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 2
  %388 = call i64 @ItemPointerEquals(i32* %384, i32* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %395, label %390

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %391, align 8
  %393 = call i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_17__* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %390, %383, %378, %370
  %396 = load i64, i64* @TM_Ok, align 8
  store i64 %396, i64* %9, align 8
  br label %407

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %398, align 8
  %400 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_17__* %399)
  store i32 %400, i32* %19, align 4
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %402 = load %struct.TYPE_17__*, %struct.TYPE_17__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %402, i32 0, i32 2
  %404 = call i32 @ItemPointerCopy(i32* %403, i32* %10)
  %405 = load i64, i64* %12, align 8
  %406 = call i32 @UnlockReleaseBuffer(i64 %405)
  br label %37

407:                                              ; preds = %395, %273, %188, %100, %92
  %408 = load i64, i64* %12, align 8
  %409 = call i32 @UnlockReleaseBuffer(i64 %408)
  br label %410

410:                                              ; preds = %407, %46
  %411 = load i64, i64* %22, align 8
  %412 = load i64, i64* @InvalidBuffer, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %417

414:                                              ; preds = %410
  %415 = load i64, i64* %22, align 8
  %416 = call i32 @ReleaseBuffer(i64 %415)
  br label %417

417:                                              ; preds = %414, %410
  %418 = load i64, i64* %9, align 8
  ret i64 %418
}

declare dso_local i32 @ItemPointerCopy(i32*, i32*) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @heap_fetch(i32, i32, %struct.TYPE_16__*, i64*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @PageIsAllVisible(i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @visibilitymap_pin(i32, i32, i64*) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_17__*) #1

declare dso_local i64 @TransactionIdDidAbort(i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_17__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @HEAP_LOCKED_UPGRADED(i32) #1

declare dso_local i32 @GetMultiXactIdMembers(i32, %struct.TYPE_15__**, i32, i64) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i64 @test_lockmode_for_conflict(i32, i32, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_15__*) #1

declare dso_local i32 @XactLockTableWait(i32, i32, i32*, i32) #1

declare dso_local i64 @HEAP_XMAX_IS_KEYSHR_LOCKED(i32) #1

declare dso_local i64 @HEAP_XMAX_IS_SHR_LOCKED(i32) #1

declare dso_local i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @compute_new_xmax_infomask(i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @visibilitymap_clear(i32, i32, i64, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @HeapTupleHeaderSetXmax(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @compute_infobits(i32, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_17__*) #1

declare dso_local i64 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_17__*) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_17__*) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
