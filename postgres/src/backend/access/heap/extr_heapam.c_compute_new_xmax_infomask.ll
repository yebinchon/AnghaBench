; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_compute_new_xmax_infomask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_compute_new_xmax_infomask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@HEAP_XMAX_LOCK_ONLY = common dso_local global i32 0, align 4
@HEAP_XMAX_KEYSHR_LOCK = common dso_local global i32 0, align 4
@HEAP_XMAX_SHR_LOCK = common dso_local global i32 0, align 4
@HEAP_XMAX_EXCL_LOCK = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid lock mode\00", align 1
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@MultiXactStatusUpdate = common dso_local global i32 0, align 4
@MultiXactStatusNoKeyUpdate = common dso_local global i32 0, align 4
@MultiXactStatusForKeyShare = common dso_local global i32 0, align 4
@MultiXactStatusForShare = common dso_local global i32 0, align 4
@MultiXactStatusForUpdate = common dso_local global i32 0, align 4
@MultiXactStatusForNoKeyUpdate = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"LOCK_ONLY found for Xid in progress %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i64, i32, i32, i64*, i32*, i32*)* @compute_new_xmax_infomask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_new_xmax_infomask(i64 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, i64* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @TransactionIdIsCurrentTransactionId(i64 %30)
  %32 = call i32 @Assert(i32 %31)
  br label %33

33:                                               ; preds = %285, %242, %203, %124, %100, %9
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %33
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i64, i64* %13, align 8
  store i64 %42, i64* %19, align 8
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 131
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %47 = load i32, i32* %21, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %21, align 4
  br label %49

49:                                               ; preds = %45, %41
  br label %83

50:                                               ; preds = %38
  %51 = load i32, i32* @HEAP_XMAX_LOCK_ONLY, align 4
  %52 = load i32, i32* %20, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %14, align 4
  switch i32 %54, label %78 [
    i32 130, label %55
    i32 128, label %60
    i32 129, label %65
    i32 131, label %70
  ]

55:                                               ; preds = %50
  %56 = load i64, i64* %13, align 8
  store i64 %56, i64* %19, align 8
  %57 = load i32, i32* @HEAP_XMAX_KEYSHR_LOCK, align 4
  %58 = load i32, i32* %20, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %20, align 4
  br label %82

60:                                               ; preds = %50
  %61 = load i64, i64* %13, align 8
  store i64 %61, i64* %19, align 8
  %62 = load i32, i32* @HEAP_XMAX_SHR_LOCK, align 4
  %63 = load i32, i32* %20, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %20, align 4
  br label %82

65:                                               ; preds = %50
  %66 = load i64, i64* %13, align 8
  store i64 %66, i64* %19, align 8
  %67 = load i32, i32* @HEAP_XMAX_EXCL_LOCK, align 4
  %68 = load i32, i32* %20, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %20, align 4
  br label %82

70:                                               ; preds = %50
  %71 = load i64, i64* %13, align 8
  store i64 %71, i64* %19, align 8
  %72 = load i32, i32* @HEAP_XMAX_EXCL_LOCK, align 4
  %73 = load i32, i32* %20, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %76 = load i32, i32* %21, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %21, align 4
  br label %82

78:                                               ; preds = %50
  %79 = load i64, i64* @InvalidTransactionId, align 8
  store i64 %79, i64* %19, align 8
  %80 = load i32, i32* @ERROR, align 4
  %81 = call i32 (i32, i8*, ...) @elog(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %70, %65, %60, %55
  br label %83

83:                                               ; preds = %82, %49
  br label %293

84:                                               ; preds = %33
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %144

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @Assert(i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @HEAP_LOCKED_UPGRADED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %89
  %101 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %33

108:                                              ; preds = %89
  %109 = load i64, i64* %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %110)
  %112 = call i32 @MultiXactIdIsRunning(i64 %109, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %133, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @MultiXactIdGetUpdateXid(i64 %119, i32 %120)
  %122 = call i64 @TransactionIdDidCommit(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %118, %114
  %125 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %33

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132, %108
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @get_mxact_status_for_lock(i32 %134, i32 %135)
  store i32 %136, i32* %22, align 4
  %137 = load i64, i64* %10, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i64, i64* %13, align 8
  %140 = load i32, i32* %22, align 4
  %141 = call i64 @MultiXactIdExpand(i32 %138, i64 %139, i32 %140)
  store i64 %141, i64* %19, align 8
  %142 = load i64, i64* %19, align 8
  %143 = call i32 @GetMultiXactIdHintBits(i64 %142, i32* %20, i32* %21)
  br label %292

144:                                              ; preds = %84
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %144
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* @MultiXactStatusUpdate, align 4
  store i32 %155, i32* %23, align 4
  br label %158

156:                                              ; preds = %149
  %157 = load i32, i32* @MultiXactStatusNoKeyUpdate, align 4
  store i32 %157, i32* %23, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @get_mxact_status_for_lock(i32 %159, i32 %160)
  store i32 %161, i32* %24, align 4
  %162 = load i64, i64* %10, align 8
  %163 = load i32, i32* %23, align 4
  %164 = load i64, i64* %13, align 8
  %165 = load i32, i32* %24, align 4
  %166 = call i64 @MultiXactIdCreate(i64 %162, i32 %163, i64 %164, i32 %165)
  store i64 %166, i64* %19, align 8
  %167 = load i64, i64* %19, align 8
  %168 = call i32 @GetMultiXactIdHintBits(i64 %167, i32* %20, i32* %21)
  br label %291

169:                                              ; preds = %144
  %170 = load i64, i64* %10, align 8
  %171 = call i64 @TransactionIdIsInProgress(i64 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %257

173:                                              ; preds = %169
  %174 = load i32, i32* %11, align 4
  %175 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %217

177:                                              ; preds = %173
  %178 = load i32, i32* %11, align 4
  %179 = call i64 @HEAP_XMAX_IS_KEYSHR_LOCKED(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* @MultiXactStatusForKeyShare, align 4
  store i32 %182, i32* %26, align 4
  br label %216

183:                                              ; preds = %177
  %184 = load i32, i32* %11, align 4
  %185 = call i64 @HEAP_XMAX_IS_SHR_LOCKED(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = load i32, i32* @MultiXactStatusForShare, align 4
  store i32 %188, i32* %26, align 4
  br label %215

189:                                              ; preds = %183
  %190 = load i32, i32* %11, align 4
  %191 = call i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32, i32* @MultiXactStatusForUpdate, align 4
  store i32 %199, i32* %26, align 4
  br label %202

200:                                              ; preds = %193
  %201 = load i32, i32* @MultiXactStatusForNoKeyUpdate, align 4
  store i32 %201, i32* %26, align 4
  br label %202

202:                                              ; preds = %200, %198
  br label %214

203:                                              ; preds = %189
  %204 = load i32, i32* @WARNING, align 4
  %205 = load i64, i64* %10, align 8
  %206 = call i32 (i32, i8*, ...) @elog(i32 %204, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %205)
  %207 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %208 = load i32, i32* %11, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* @HEAP_XMAX_LOCK_ONLY, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %11, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %11, align 4
  br label %33

214:                                              ; preds = %202
  br label %215

215:                                              ; preds = %214, %187
  br label %216

216:                                              ; preds = %215, %181
  br label %227

217:                                              ; preds = %173
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i32, i32* @MultiXactStatusUpdate, align 4
  store i32 %223, i32* %26, align 4
  br label %226

224:                                              ; preds = %217
  %225 = load i32, i32* @MultiXactStatusNoKeyUpdate, align 4
  store i32 %225, i32* %26, align 4
  br label %226

226:                                              ; preds = %224, %222
  br label %227

227:                                              ; preds = %226, %216
  %228 = load i32, i32* %26, align 4
  %229 = call i32 @TUPLOCK_from_mxstatus(i32 %228)
  store i32 %229, i32* %27, align 4
  %230 = load i64, i64* %10, align 8
  %231 = load i64, i64* %13, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %246

233:                                              ; preds = %227
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %234)
  %236 = call i32 @Assert(i32 %235)
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %27, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = load i32, i32* %27, align 4
  store i32 %241, i32* %14, align 4
  br label %242

242:                                              ; preds = %240, %233
  %243 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %244 = load i32, i32* %11, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %11, align 4
  br label %33

246:                                              ; preds = %227
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %15, align 4
  %249 = call i32 @get_mxact_status_for_lock(i32 %247, i32 %248)
  store i32 %249, i32* %25, align 4
  %250 = load i64, i64* %10, align 8
  %251 = load i32, i32* %26, align 4
  %252 = load i64, i64* %13, align 8
  %253 = load i32, i32* %25, align 4
  %254 = call i64 @MultiXactIdCreate(i64 %250, i32 %251, i64 %252, i32 %253)
  store i64 %254, i64* %19, align 8
  %255 = load i64, i64* %19, align 8
  %256 = call i32 @GetMultiXactIdHintBits(i64 %255, i32* %20, i32* %21)
  br label %290

257:                                              ; preds = %169
  %258 = load i32, i32* %11, align 4
  %259 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %285, label %261

261:                                              ; preds = %257
  %262 = load i64, i64* %10, align 8
  %263 = call i64 @TransactionIdDidCommit(i64 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %285

265:                                              ; preds = %261
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* @MultiXactStatusUpdate, align 4
  store i32 %271, i32* %28, align 4
  br label %274

272:                                              ; preds = %265
  %273 = load i32, i32* @MultiXactStatusNoKeyUpdate, align 4
  store i32 %273, i32* %28, align 4
  br label %274

274:                                              ; preds = %272, %270
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @get_mxact_status_for_lock(i32 %275, i32 %276)
  store i32 %277, i32* %29, align 4
  %278 = load i64, i64* %10, align 8
  %279 = load i32, i32* %28, align 4
  %280 = load i64, i64* %13, align 8
  %281 = load i32, i32* %29, align 4
  %282 = call i64 @MultiXactIdCreate(i64 %278, i32 %279, i64 %280, i32 %281)
  store i64 %282, i64* %19, align 8
  %283 = load i64, i64* %19, align 8
  %284 = call i32 @GetMultiXactIdHintBits(i64 %283, i32* %20, i32* %21)
  br label %289

285:                                              ; preds = %261, %257
  %286 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %287 = load i32, i32* %11, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %11, align 4
  br label %33

289:                                              ; preds = %274
  br label %290

290:                                              ; preds = %289, %246
  br label %291

291:                                              ; preds = %290, %158
  br label %292

292:                                              ; preds = %291, %133
  br label %293

293:                                              ; preds = %292, %83
  %294 = load i32, i32* %20, align 4
  %295 = load i32*, i32** %17, align 8
  store i32 %294, i32* %295, align 4
  %296 = load i32, i32* %21, align 4
  %297 = load i32*, i32** %18, align 8
  store i32 %296, i32* %297, align 4
  %298 = load i64, i64* %19, align 8
  %299 = load i64*, i64** %16, align 8
  store i64 %298, i64* %299, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsCurrentTransactionId(i64) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @HEAP_LOCKED_UPGRADED(i32) #1

declare dso_local i32 @MultiXactIdIsRunning(i64, i32) #1

declare dso_local i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i64 @TransactionIdDidCommit(i64) #1

declare dso_local i64 @MultiXactIdGetUpdateXid(i64, i32) #1

declare dso_local i32 @get_mxact_status_for_lock(i32, i32) #1

declare dso_local i64 @MultiXactIdExpand(i32, i64, i32) #1

declare dso_local i32 @GetMultiXactIdHintBits(i64, i32*, i32*) #1

declare dso_local i64 @MultiXactIdCreate(i64, i32, i64, i32) #1

declare dso_local i64 @TransactionIdIsInProgress(i64) #1

declare dso_local i64 @HEAP_XMAX_IS_KEYSHR_LOCKED(i32) #1

declare dso_local i64 @HEAP_XMAX_IS_SHR_LOCKED(i32) #1

declare dso_local i64 @HEAP_XMAX_IS_EXCL_LOCKED(i32) #1

declare dso_local i32 @TUPLOCK_from_mxstatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
