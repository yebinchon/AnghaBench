; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_index_validate_scan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_index_validate_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32*, i32, i64, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i64, i64, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32* }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@MaxHeapTuplesPerPage = common dso_local global i32 0, align 4
@TTSOpsHeapTuple = common dso_local global i32 0, align 4
@PROGRESS_SCAN_BLOCKS_TOTAL = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@PROGRESS_SCAN_BLOCKS_DONE = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"failed to find parent tuple for heap-only tuple at (%u,%u) in table \22%s\22\00", align 1
@UNIQUE_CHECK_YES = common dso_local global i32 0, align 4
@UNIQUE_CHECK_NO = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_27__*, i32, %struct.TYPE_25__*)* @heapam_index_validate_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heapam_index_validate_scan(%struct.TYPE_26__* %0, %struct.TYPE_26__* %1, %struct.TYPE_27__* %2, i32 %3, %struct.TYPE_25__* %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_30__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %10, align 8
  %34 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %14, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %15, align 8
  %38 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %16, align 8
  %41 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %41, i64* %21, align 8
  %42 = load i32, i32* @MaxHeapTuplesPerPage, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %22, align 8
  %45 = load i32, i32* @MaxHeapTuplesPerPage, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %23, align 8
  %48 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %48, i64* %24, align 8
  store i32* null, i32** %25, align 8
  store i32 0, i32* %27, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @OidIsValid(i32 %53)
  %55 = call i32 @Assert(i32 %54)
  %56 = call i32* (...) @CreateExecutorState()
  store i32* %56, i32** %19, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = call %struct.TYPE_30__* @GetPerTupleExprContext(i32* %57)
  store %struct.TYPE_30__* %58, %struct.TYPE_30__** %20, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %60 = call i32 @RelationGetDescr(%struct.TYPE_26__* %59)
  %61 = call i32* @MakeSingleTupleTableSlot(i32 %60, i32* @TTSOpsHeapTuple)
  store i32* %61, i32** %18, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %19, align 8
  %69 = call i32* @ExecPrepareQual(i32 %67, i32* %68)
  store i32* %69, i32** %17, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @table_beginscan_strat(%struct.TYPE_26__* %70, i32 %71, i32 0, i32* null, i32 1, i32 0)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %11, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %74, %struct.TYPE_29__** %12, align 8
  %75 = load i32, i32* @PROGRESS_SCAN_BLOCKS_TOTAL, align 4
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @pgstat_progress_update_param(i32 %75, i64 %78)
  br label %80

80:                                               ; preds = %285, %260, %5
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* @ForwardScanDirection, align 4
  %83 = call %struct.TYPE_28__* @heap_getnext(i64 %81, i32 %82)
  store %struct.TYPE_28__* %83, %struct.TYPE_28__** %13, align 8
  %84 = icmp ne %struct.TYPE_28__* %83, null
  br i1 %84, label %85, label %286

85:                                               ; preds = %80
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 0
  store i32* %87, i32** %28, align 8
  %88 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i64, i64* %24, align 8
  %94 = load i64, i64* @InvalidBlockNumber, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %85
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %24, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96, %85
  %103 = load i32, i32* @PROGRESS_SCAN_BLOCKS_DONE, align 4
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @pgstat_progress_update_param(i32 %103, i64 %106)
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %24, align 8
  br label %111

111:                                              ; preds = %102, %96
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %21, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %111
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @BufferGetPage(i32 %120)
  store i32 %121, i32* %31, align 4
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %126 = call i32 @LockBuffer(i32 %124, i32 %125)
  %127 = load i32, i32* %31, align 4
  %128 = call i32 @heap_get_root_tuples(i32 %127, i32* %44)
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %133 = call i32 @LockBuffer(i32 %131, i32 %132)
  %134 = mul nuw i64 4, %46
  %135 = trunc i64 %134 to i32
  %136 = call i32 @memset(i32* %47, i32 0, i32 %135)
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %21, align 8
  br label %140

140:                                              ; preds = %117, %111
  %141 = load i32*, i32** %28, align 8
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %29, align 4
  %143 = load i32*, i32** %28, align 8
  %144 = call i32 @ItemPointerGetOffsetNumber(i32* %143)
  store i32 %144, i32* %30, align 4
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %146 = call i64 @HeapTupleIsHeapOnly(%struct.TYPE_28__* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %140
  %149 = load i32, i32* %30, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %44, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %30, align 4
  %154 = load i32, i32* %30, align 4
  %155 = call i32 @OffsetNumberIsValid(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %148
  %158 = load i32, i32* @ERROR, align 4
  %159 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %160 = call i32 @errcode(i32 %159)
  %161 = load i32*, i32** %28, align 8
  %162 = call i64 @ItemPointerGetBlockNumber(i32* %161)
  %163 = load i32*, i32** %28, align 8
  %164 = call i32 @ItemPointerGetOffsetNumber(i32* %163)
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %166 = call i32 @RelationGetRelationName(%struct.TYPE_26__* %165)
  %167 = call i32 @errmsg_internal(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %162, i32 %164, i32 %166)
  %168 = call i32 @ereport(i32 %158, i32 %167)
  br label %169

169:                                              ; preds = %157, %148
  %170 = load i32, i32* %30, align 4
  %171 = call i32 @ItemPointerSetOffsetNumber(i32* %29, i32 %170)
  br label %172

172:                                              ; preds = %169, %140
  br label %173

173:                                              ; preds = %230, %172
  %174 = load i32, i32* %27, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %173
  %177 = load i32*, i32** %25, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32*, i32** %25, align 8
  %181 = call i64 @ItemPointerCompare(i32* %180, i32* %29)
  %182 = icmp slt i64 %181, 0
  br label %183

183:                                              ; preds = %179, %176
  %184 = phi i1 [ true, %176 ], [ %182, %179 ]
  br label %185

185:                                              ; preds = %183, %173
  %186 = phi i1 [ false, %173 ], [ %184, %183 ]
  br i1 %186, label %187, label %231

187:                                              ; preds = %185
  %188 = load i32*, i32** %25, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %187
  %191 = load i32*, i32** %25, align 8
  %192 = call i64 @ItemPointerGetBlockNumber(i32* %191)
  %193 = load i64, i64* %21, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i32*, i32** %25, align 8
  %197 = call i32 @ItemPointerGetOffsetNumber(i32* %196)
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %47, i64 %199
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %195, %190
  br label %202

202:                                              ; preds = %201, %187
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @tuplesort_getdatum(i32 %205, i32 1, i32* %32, i32* %33, i32* null)
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  store i32 %209, i32* %27, align 4
  %210 = load i32, i32* %27, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %202
  %213 = load i32, i32* %33, align 4
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  br label %216

216:                                              ; preds = %212, %202
  %217 = phi i1 [ true, %202 ], [ %215, %212 ]
  %218 = zext i1 %217 to i32
  %219 = call i32 @Assert(i32 %218)
  %220 = load i32, i32* %27, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %216
  %223 = load i32, i32* %32, align 4
  %224 = call i32 @DatumGetInt64(i32 %223)
  %225 = call i32 @itemptr_decode(i32* %26, i32 %224)
  store i32* %26, i32** %25, align 8
  %226 = load i32, i32* %32, align 4
  %227 = call i32 @DatumGetPointer(i32 %226)
  %228 = call i32 @pfree(i32 %227)
  br label %230

229:                                              ; preds = %216
  store i32* null, i32** %25, align 8
  br label %230

230:                                              ; preds = %229, %222
  br label %173

231:                                              ; preds = %185
  %232 = load i32, i32* %27, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = load i32*, i32** %25, align 8
  %236 = call i64 @ItemPointerCompare(i32* %235, i32* %29)
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %285

238:                                              ; preds = %234, %231
  %239 = load i32, i32* %30, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %47, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %285, label %245

245:                                              ; preds = %238
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @MemoryContextReset(i32 %248)
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %251 = load i32*, i32** %18, align 8
  %252 = call i32 @ExecStoreHeapTuple(%struct.TYPE_28__* %250, i32* %251, i32 0)
  %253 = load i32*, i32** %17, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %262

255:                                              ; preds = %245
  %256 = load i32*, i32** %17, align 8
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %258 = call i32 @ExecQual(i32* %256, %struct.TYPE_30__* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %255
  br label %80

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %261, %245
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %264 = load i32*, i32** %18, align 8
  %265 = load i32*, i32** %19, align 8
  %266 = call i32 @FormIndexDatum(%struct.TYPE_27__* %263, i32* %264, i32* %265, i32* %37, i32* %40)
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %262
  %274 = load i32, i32* @UNIQUE_CHECK_YES, align 4
  br label %277

275:                                              ; preds = %262
  %276 = load i32, i32* @UNIQUE_CHECK_NO, align 4
  br label %277

277:                                              ; preds = %275, %273
  %278 = phi i32 [ %274, %273 ], [ %276, %275 ]
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %280 = call i32 @index_insert(%struct.TYPE_26__* %267, i32* %37, i32* %40, i32* %29, %struct.TYPE_26__* %268, i32 %278, %struct.TYPE_27__* %279)
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %277, %238, %234
  br label %80

286:                                              ; preds = %80
  %287 = load i64, i64* %11, align 8
  %288 = call i32 @table_endscan(i64 %287)
  %289 = load i32*, i32** %18, align 8
  %290 = call i32 @ExecDropSingleTupleTableSlot(i32* %289)
  %291 = load i32*, i32** %19, align 8
  %292 = call i32 @FreeExecutorState(i32* %291)
  %293 = load i32, i32* @NIL, align 4
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 8
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 0
  store i32* null, i32** %297, align 8
  %298 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %298)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32* @CreateExecutorState(...) #2

declare dso_local %struct.TYPE_30__* @GetPerTupleExprContext(i32*) #2

declare dso_local i32* @MakeSingleTupleTableSlot(i32, i32*) #2

declare dso_local i32 @RelationGetDescr(%struct.TYPE_26__*) #2

declare dso_local i32* @ExecPrepareQual(i32, i32*) #2

declare dso_local i64 @table_beginscan_strat(%struct.TYPE_26__*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @pgstat_progress_update_param(i32, i64) #2

declare dso_local %struct.TYPE_28__* @heap_getnext(i64, i32) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i32 @BufferGetPage(i32) #2

declare dso_local i32 @LockBuffer(i32, i32) #2

declare dso_local i32 @heap_get_root_tuples(i32, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #2

declare dso_local i64 @HeapTupleIsHeapOnly(%struct.TYPE_28__*) #2

declare dso_local i32 @OffsetNumberIsValid(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg_internal(i8*, i64, i32, i32) #2

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #2

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_26__*) #2

declare dso_local i32 @ItemPointerSetOffsetNumber(i32*, i32) #2

declare dso_local i64 @ItemPointerCompare(i32*, i32*) #2

declare dso_local i32 @tuplesort_getdatum(i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @itemptr_decode(i32*, i32) #2

declare dso_local i32 @DatumGetInt64(i32) #2

declare dso_local i32 @pfree(i32) #2

declare dso_local i32 @DatumGetPointer(i32) #2

declare dso_local i32 @MemoryContextReset(i32) #2

declare dso_local i32 @ExecStoreHeapTuple(%struct.TYPE_28__*, i32*, i32) #2

declare dso_local i32 @ExecQual(i32*, %struct.TYPE_30__*) #2

declare dso_local i32 @FormIndexDatum(%struct.TYPE_27__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @index_insert(%struct.TYPE_26__*, i32*, i32*, i32*, %struct.TYPE_26__*, i32, %struct.TYPE_27__*) #2

declare dso_local i32 @table_endscan(i64) #2

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #2

declare dso_local i32 @FreeExecutorState(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
