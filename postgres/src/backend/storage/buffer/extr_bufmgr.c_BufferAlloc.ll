; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_BufferAlloc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_BufferAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }

@LW_SHARED = common dso_local global i32 0, align 4
@BUF_FLAG_MASK = common dso_local global i32 0, align 4
@BM_DIRTY = common dso_local global i32 0, align 4
@BackendWritebackContext = common dso_local global i32 0, align 4
@BM_TAG_VALID = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@BM_VALID = common dso_local global i32 0, align 4
@BM_JUST_DIRTIED = common dso_local global i32 0, align 4
@BM_CHECKPOINT_NEEDED = common dso_local global i32 0, align 4
@BM_IO_ERROR = common dso_local global i32 0, align 4
@BM_PERMANENT = common dso_local global i32 0, align 4
@BUF_USAGECOUNT_MASK = common dso_local global i32 0, align 4
@RELPERSISTENCE_PERMANENT = common dso_local global i8 0, align 1
@INIT_FORKNUM = common dso_local global i32 0, align 4
@BUF_USAGECOUNT_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_21__*, i8, i32, i32, i32*, i32*)* @BufferAlloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @BufferAlloc(%struct.TYPE_21__* %0, i8 signext %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_22__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca { i64, i32 }, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = bitcast { i64, i32 }* %25 to i8*
  %34 = bitcast %struct.TYPE_19__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %25, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @INIT_BUFFERTAG(i32 %27, i64 %36, i32 %38, i32 %31, i32 %32)
  %40 = call i32 @BufTableHashCode(i32* %14)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32* @BufMappingPartitionLock(i32 %41)
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* @LW_SHARED, align 4
  %45 = call i32 @LWLockAcquire(i32* %43, i32 %44)
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @BufTableLookup(i32* %14, i32 %46)
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %21, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %6
  %51 = load i32, i32* %21, align 4
  %52 = call %struct.TYPE_22__* @GetBufferDescriptor(i32 %51)
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %22, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @PinBuffer(%struct.TYPE_22__* %53, i32* %54)
  store i32 %55, i32* %23, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @LWLockRelease(i32* %56)
  %58 = load i32*, i32** %13, align 8
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %23, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %50
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %63 = call i64 @StartBufferIO(%struct.TYPE_22__* %62, i32 1)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32*, i32** %13, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %7, align 8
  br label %361

70:                                               ; preds = %6
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @LWLockRelease(i32* %71)
  br label %73

73:                                               ; preds = %285, %168, %116, %70
  %74 = call i32 (...) @ReservePrivateRefCountEntry()
  %75 = load i32*, i32** %12, align 8
  %76 = call %struct.TYPE_22__* @StrategyGetBuffer(i32* %75, i32* %24)
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %22, align 8
  %77 = load i32, i32* %24, align 4
  %78 = call i32 @BUF_STATE_GET_REFCOUNT(i32 %77)
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @Assert(i32 %80)
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* @BUF_FLAG_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %20, align 4
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %86 = call i32 @PinBuffer_Locked(%struct.TYPE_22__* %85)
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* @BM_DIRTY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %172

91:                                               ; preds = %73
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %93 = call i32* @BufferDescriptorGetContentLock(%struct.TYPE_22__* %92)
  %94 = load i32, i32* @LW_SHARED, align 4
  %95 = call i64 @LWLockConditionalAcquire(i32* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %168

97:                                               ; preds = %91
  %98 = load i32*, i32** %12, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %102 = call i32 @LockBufHdr(%struct.TYPE_22__* %101)
  store i32 %102, i32* %24, align 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %104 = call i32 @BufferGetLSN(%struct.TYPE_22__* %103)
  store i32 %104, i32* %26, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %106 = load i32, i32* %24, align 4
  %107 = call i32 @UnlockBufHdr(%struct.TYPE_22__* %105, i32 %106)
  %108 = load i32, i32* %26, align 4
  %109 = call i64 @XLogNeedsFlush(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %100
  %112 = load i32*, i32** %12, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %114 = call i64 @StrategyRejectBuffer(i32* %112, %struct.TYPE_22__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %118 = call i32* @BufferDescriptorGetContentLock(%struct.TYPE_22__* %117)
  %119 = call i32 @LWLockRelease(i32* %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %121 = call i32 @UnpinBuffer(%struct.TYPE_22__* %120, i32 1)
  br label %73

122:                                              ; preds = %111, %100
  br label %123

123:                                              ; preds = %122, %97
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @TRACE_POSTGRESQL_BUFFER_WRITE_DIRTY_START(i32 %124, i32 %125, i32 %130, i32 %135, i32 %140)
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %143 = call i32 @FlushBuffer(%struct.TYPE_22__* %142, i32* null)
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %145 = call i32* @BufferDescriptorGetContentLock(%struct.TYPE_22__* %144)
  %146 = call i32 @LWLockRelease(i32* %145)
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = call i32 @ScheduleBufferTagForWriteback(i32* @BackendWritebackContext, i32* %148)
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @TRACE_POSTGRESQL_BUFFER_WRITE_DIRTY_DONE(i32 %150, i32 %151, i32 %156, i32 %161, i32 %166)
  br label %171

168:                                              ; preds = %91
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %170 = call i32 @UnpinBuffer(%struct.TYPE_22__* %169, i32 1)
  br label %73

171:                                              ; preds = %123
  br label %172

172:                                              ; preds = %171, %73
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* @BM_TAG_VALID, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %211

177:                                              ; preds = %172
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %17, align 4
  %181 = call i32 @BufTableHashCode(i32* %17)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = call i32* @BufMappingPartitionLock(i32 %182)
  store i32* %183, i32** %19, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = load i32*, i32** %16, align 8
  %186 = icmp ult i32* %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %177
  %188 = load i32*, i32** %19, align 8
  %189 = load i32, i32* @LW_EXCLUSIVE, align 4
  %190 = call i32 @LWLockAcquire(i32* %188, i32 %189)
  %191 = load i32*, i32** %16, align 8
  %192 = load i32, i32* @LW_EXCLUSIVE, align 4
  %193 = call i32 @LWLockAcquire(i32* %191, i32 %192)
  br label %210

194:                                              ; preds = %177
  %195 = load i32*, i32** %19, align 8
  %196 = load i32*, i32** %16, align 8
  %197 = icmp ugt i32* %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i32*, i32** %16, align 8
  %200 = load i32, i32* @LW_EXCLUSIVE, align 4
  %201 = call i32 @LWLockAcquire(i32* %199, i32 %200)
  %202 = load i32*, i32** %19, align 8
  %203 = load i32, i32* @LW_EXCLUSIVE, align 4
  %204 = call i32 @LWLockAcquire(i32* %202, i32 %203)
  br label %209

205:                                              ; preds = %194
  %206 = load i32*, i32** %16, align 8
  %207 = load i32, i32* @LW_EXCLUSIVE, align 4
  %208 = call i32 @LWLockAcquire(i32* %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %198
  br label %210

210:                                              ; preds = %209, %187
  br label %215

211:                                              ; preds = %172
  %212 = load i32*, i32** %16, align 8
  %213 = load i32, i32* @LW_EXCLUSIVE, align 4
  %214 = call i32 @LWLockAcquire(i32* %212, i32 %213)
  store i32* null, i32** %19, align 8
  store i32 0, i32* %18, align 4
  br label %215

215:                                              ; preds = %211, %210
  %216 = load i32, i32* %15, align 4
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @BufTableInsert(i32* %14, i32 %216, i32 %219)
  store i32 %220, i32* %21, align 4
  %221 = load i32, i32* %21, align 4
  %222 = icmp sge i32 %221, 0
  br i1 %222, label %223, label %255

223:                                              ; preds = %215
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %225 = call i32 @UnpinBuffer(%struct.TYPE_22__* %224, i32 1)
  %226 = load i32*, i32** %19, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load i32*, i32** %19, align 8
  %230 = load i32*, i32** %16, align 8
  %231 = icmp ne i32* %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i32*, i32** %19, align 8
  %234 = call i32 @LWLockRelease(i32* %233)
  br label %235

235:                                              ; preds = %232, %228, %223
  %236 = load i32, i32* %21, align 4
  %237 = call %struct.TYPE_22__* @GetBufferDescriptor(i32 %236)
  store %struct.TYPE_22__* %237, %struct.TYPE_22__** %22, align 8
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %239 = load i32*, i32** %12, align 8
  %240 = call i32 @PinBuffer(%struct.TYPE_22__* %238, i32* %239)
  store i32 %240, i32* %23, align 4
  %241 = load i32*, i32** %16, align 8
  %242 = call i32 @LWLockRelease(i32* %241)
  %243 = load i32*, i32** %13, align 8
  store i32 1, i32* %243, align 4
  %244 = load i32, i32* %23, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %235
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %248 = call i64 @StartBufferIO(%struct.TYPE_22__* %247, i32 1)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = load i32*, i32** %13, align 8
  store i32 0, i32* %251, align 4
  br label %252

252:                                              ; preds = %250, %246
  br label %253

253:                                              ; preds = %252, %235
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %254, %struct.TYPE_22__** %7, align 8
  br label %361

255:                                              ; preds = %215
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %257 = call i32 @LockBufHdr(%struct.TYPE_22__* %256)
  store i32 %257, i32* %24, align 4
  %258 = load i32, i32* %24, align 4
  %259 = load i32, i32* @BUF_FLAG_MASK, align 4
  %260 = and i32 %258, %259
  store i32 %260, i32* %20, align 4
  %261 = load i32, i32* %24, align 4
  %262 = call i32 @BUF_STATE_GET_REFCOUNT(i32 %261)
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %270

264:                                              ; preds = %255
  %265 = load i32, i32* %20, align 4
  %266 = load i32, i32* @BM_DIRTY, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %264
  br label %290

270:                                              ; preds = %264, %255
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %272 = load i32, i32* %24, align 4
  %273 = call i32 @UnlockBufHdr(%struct.TYPE_22__* %271, i32 %272)
  %274 = load i32, i32* %15, align 4
  %275 = call i32 @BufTableDelete(i32* %14, i32 %274)
  %276 = load i32*, i32** %19, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %285

278:                                              ; preds = %270
  %279 = load i32*, i32** %19, align 8
  %280 = load i32*, i32** %16, align 8
  %281 = icmp ne i32* %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = load i32*, i32** %19, align 8
  %284 = call i32 @LWLockRelease(i32* %283)
  br label %285

285:                                              ; preds = %282, %278, %270
  %286 = load i32*, i32** %16, align 8
  %287 = call i32 @LWLockRelease(i32* %286)
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %289 = call i32 @UnpinBuffer(%struct.TYPE_22__* %288, i32 1)
  br label %73

290:                                              ; preds = %269
  %291 = load i32, i32* %14, align 4
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 4
  %294 = load i32, i32* @BM_VALID, align 4
  %295 = load i32, i32* @BM_DIRTY, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* @BM_JUST_DIRTIED, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @BM_CHECKPOINT_NEEDED, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* @BM_IO_ERROR, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @BM_PERMANENT, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @BUF_USAGECOUNT_MASK, align 4
  %306 = or i32 %304, %305
  %307 = xor i32 %306, -1
  %308 = load i32, i32* %24, align 4
  %309 = and i32 %308, %307
  store i32 %309, i32* %24, align 4
  %310 = load i8, i8* %9, align 1
  %311 = sext i8 %310 to i32
  %312 = load i8, i8* @RELPERSISTENCE_PERMANENT, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %311, %313
  br i1 %314, label %319, label %315

315:                                              ; preds = %290
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* @INIT_FORKNUM, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %327

319:                                              ; preds = %315, %290
  %320 = load i32, i32* @BM_TAG_VALID, align 4
  %321 = load i32, i32* @BM_PERMANENT, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* @BUF_USAGECOUNT_ONE, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* %24, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %24, align 4
  br label %333

327:                                              ; preds = %315
  %328 = load i32, i32* @BM_TAG_VALID, align 4
  %329 = load i32, i32* @BUF_USAGECOUNT_ONE, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* %24, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %24, align 4
  br label %333

333:                                              ; preds = %327, %319
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %335 = load i32, i32* %24, align 4
  %336 = call i32 @UnlockBufHdr(%struct.TYPE_22__* %334, i32 %335)
  %337 = load i32*, i32** %19, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %349

339:                                              ; preds = %333
  %340 = load i32, i32* %18, align 4
  %341 = call i32 @BufTableDelete(i32* %17, i32 %340)
  %342 = load i32*, i32** %19, align 8
  %343 = load i32*, i32** %16, align 8
  %344 = icmp ne i32* %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %339
  %346 = load i32*, i32** %19, align 8
  %347 = call i32 @LWLockRelease(i32* %346)
  br label %348

348:                                              ; preds = %345, %339
  br label %349

349:                                              ; preds = %348, %333
  %350 = load i32*, i32** %16, align 8
  %351 = call i32 @LWLockRelease(i32* %350)
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %353 = call i64 @StartBufferIO(%struct.TYPE_22__* %352, i32 1)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %349
  %356 = load i32*, i32** %13, align 8
  store i32 0, i32* %356, align 4
  br label %359

357:                                              ; preds = %349
  %358 = load i32*, i32** %13, align 8
  store i32 1, i32* %358, align 4
  br label %359

359:                                              ; preds = %357, %355
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %360, %struct.TYPE_22__** %7, align 8
  br label %361

361:                                              ; preds = %359, %253, %68
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  ret %struct.TYPE_22__* %362
}

declare dso_local i32 @INIT_BUFFERTAG(i32, i64, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BufTableHashCode(i32*) #1

declare dso_local i32* @BufMappingPartitionLock(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @BufTableLookup(i32*, i32) #1

declare dso_local %struct.TYPE_22__* @GetBufferDescriptor(i32) #1

declare dso_local i32 @PinBuffer(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i64 @StartBufferIO(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ReservePrivateRefCountEntry(...) #1

declare dso_local %struct.TYPE_22__* @StrategyGetBuffer(i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i32 @PinBuffer_Locked(%struct.TYPE_22__*) #1

declare dso_local i64 @LWLockConditionalAcquire(i32*, i32) #1

declare dso_local i32* @BufferDescriptorGetContentLock(%struct.TYPE_22__*) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_22__*) #1

declare dso_local i32 @BufferGetLSN(%struct.TYPE_22__*) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @XLogNeedsFlush(i32) #1

declare dso_local i64 @StrategyRejectBuffer(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @UnpinBuffer(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @TRACE_POSTGRESQL_BUFFER_WRITE_DIRTY_START(i32, i32, i32, i32, i32) #1

declare dso_local i32 @FlushBuffer(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ScheduleBufferTagForWriteback(i32*, i32*) #1

declare dso_local i32 @TRACE_POSTGRESQL_BUFFER_WRITE_DIRTY_DONE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BufTableInsert(i32*, i32, i32) #1

declare dso_local i32 @BufTableDelete(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
