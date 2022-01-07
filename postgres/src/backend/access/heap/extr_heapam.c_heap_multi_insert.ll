; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_multi_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_multi_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_18__ = type { i32, i32*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@HEAP_INSERT_NO_LOGICAL = common dso_local global i32 0, align 4
@HEAP_INSERT_SKIP_WAL = common dso_local global i32 0, align 4
@HEAP_DEFAULT_FILLFACTOR = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@VISIBILITYMAP_VALID_BITS = common dso_local global i32 0, align 4
@XLOG_HEAP2_MULTI_INSERT = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@SizeOfHeapMultiInsert = common dso_local global i32 0, align 4
@XLH_INSERT_ALL_VISIBLE_CLEARED = common dso_local global i32 0, align 4
@SizeOfMultiInsertTuple = common dso_local global i32 0, align 4
@SizeofHeapTupleHeader = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@XLH_INSERT_CONTAINS_NEW_TUPLE = common dso_local global i32 0, align 4
@XLH_INSERT_LAST_IN_MULTI = common dso_local global i32 0, align 4
@XLOG_HEAP_INIT_PAGE = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_KEEP_DATA = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@XLOG_INCLUDE_ORIGIN = common dso_local global i32 0, align 4
@RM_HEAP2_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_multi_insert(i32 %0, %struct.TYPE_19__** %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_21__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_18__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.TYPE_21__*, align 8
  %38 = alloca %struct.TYPE_17__*, align 8
  %39 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_19__** %1, %struct.TYPE_19__*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %40 = call i32 (...) @GetCurrentTransactionId()
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @RelationIsLogicallyLogged(i32 %41)
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @RelationIsAccessibleInLogicalDecoding(i32 %43)
  store i32 %44, i32* %22, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @HEAP_INSERT_NO_LOGICAL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @AssertArg(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @HEAP_INSERT_SKIP_WAL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %6
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @RelationNeedsWAL(i32 %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %56, %6
  %61 = phi i1 [ false, %6 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @HEAP_DEFAULT_FILLFACTOR, align 4
  %65 = call i64 @RelationGetTargetPageFreeSpace(i32 %63, i32 %64)
  store i64 %65, i64* %20, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call %struct.TYPE_21__** @palloc(i32 %69)
  store %struct.TYPE_21__** %70, %struct.TYPE_21__*** %14, align 8
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %109, %60
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %71
  %76 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %76, i64 %78
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  %81 = call %struct.TYPE_21__* @ExecFetchSlotHeapTuple(%struct.TYPE_19__* %80, i32 1, i32* null)
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %23, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @RelationGetRelid(i32 %82)
  %84 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %84, i64 %86
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  store i32 %83, i32* %89, align 4
  %90 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %90, i64 %92
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call %struct.TYPE_21__* @heap_prepare_insert(i32 %99, %struct.TYPE_21__* %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %105, i64 %107
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %108, align 8
  br label %109

109:                                              ; preds = %75
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %71

112:                                              ; preds = %71
  %113 = load i32, i32* %7, align 4
  %114 = load i64, i64* @InvalidBuffer, align 8
  %115 = call i32 @CheckForSerializableConflictIn(i32 %113, i32* null, i64 %114)
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %430, %112
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %434

120:                                              ; preds = %116
  %121 = load i64, i64* @InvalidBuffer, align 8
  store i64 %121, i64* %25, align 8
  store i32 0, i32* %26, align 4
  %122 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %124, i64 %126
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* @InvalidBuffer, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i64 @RelationGetBufferForTuple(i32 %123, i32 %130, i64 %131, i32 %132, i32 %133, i64* %25, i32* null)
  store i64 %134, i64* %24, align 8
  %135 = load i64, i64* %24, align 8
  %136 = call i32 @BufferGetPage(i64 %135)
  store i32 %136, i32* %18, align 4
  %137 = call i32 (...) @START_CRIT_SECTION()
  %138 = load i32, i32* %7, align 4
  %139 = load i64, i64* %24, align 8
  %140 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %140, i64 %142
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %143, align 8
  %145 = call i32 @RelationPutHeapTuple(i32 %138, i64 %139, %struct.TYPE_21__* %144, i32 0)
  store i32 1, i32* %27, align 4
  br label %146

146:                                              ; preds = %185, %120
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %27, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %188

152:                                              ; preds = %146
  %153 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %27, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %153, i64 %157
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %158, align 8
  store %struct.TYPE_21__* %159, %struct.TYPE_21__** %28, align 8
  %160 = load i32, i32* %18, align 4
  %161 = call i64 @PageGetHeapFreeSpace(i32 %160)
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @MAXALIGN(i32 %164)
  %166 = load i64, i64* %20, align 8
  %167 = add nsw i64 %165, %166
  %168 = icmp slt i64 %161, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %152
  br label %188

170:                                              ; preds = %152
  %171 = load i32, i32* %7, align 4
  %172 = load i64, i64* %24, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %174 = call i32 @RelationPutHeapTuple(i32 %171, i64 %172, %struct.TYPE_21__* %173, i32 0)
  %175 = load i32, i32* %19, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %170
  %178 = load i32, i32* %22, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %183 = call i32 @log_heap_new_cid(i32 %181, %struct.TYPE_21__* %182)
  br label %184

184:                                              ; preds = %180, %177, %170
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %27, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %27, align 4
  br label %146

188:                                              ; preds = %169, %146
  %189 = load i32, i32* %18, align 4
  %190 = call i64 @PageIsAllVisible(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %188
  store i32 1, i32* %26, align 4
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @PageClearAllVisible(i32 %193)
  %195 = load i32, i32* %7, align 4
  %196 = load i64, i64* %24, align 8
  %197 = call i32 @BufferGetBlockNumber(i64 %196)
  %198 = load i64, i64* %25, align 8
  %199 = load i32, i32* @VISIBILITYMAP_VALID_BITS, align 4
  %200 = call i32 @visibilitymap_clear(i32 %195, i32 %197, i64 %198, i32 %199)
  br label %201

201:                                              ; preds = %192, %188
  %202 = load i64, i64* %24, align 8
  %203 = call i32 @MarkBufferDirty(i64 %202)
  %204 = load i32, i32* %19, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %420

206:                                              ; preds = %201
  %207 = load i32, i32* @XLOG_HEAP2_MULTI_INSERT, align 4
  store i32 %207, i32* %31, align 4
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** %34, align 8
  store i32 0, i32* %36, align 4
  %210 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %210, i64 %212
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 1
  %216 = call i32 @ItemPointerGetOffsetNumber(i32* %215)
  %217 = load i32, i32* @FirstOffsetNumber, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %206
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @PageGetMaxOffsetNumber(i32 %220)
  %222 = load i32, i32* @FirstOffsetNumber, align 4
  %223 = load i32, i32* %27, align 4
  %224 = add nsw i32 %222, %223
  %225 = sub nsw i32 %224, 1
  %226 = icmp eq i32 %221, %225
  br label %227

227:                                              ; preds = %219, %206
  %228 = phi i1 [ false, %206 ], [ %226, %219 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %35, align 4
  %230 = load i8*, i8** %34, align 8
  %231 = bitcast i8* %230 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %231, %struct.TYPE_18__** %30, align 8
  %232 = load i32, i32* @SizeOfHeapMultiInsert, align 4
  %233 = load i8*, i8** %34, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8* %235, i8** %34, align 8
  %236 = load i32, i32* %35, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %227
  %239 = load i32, i32* %27, align 4
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 4
  %242 = load i8*, i8** %34, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 %241
  store i8* %243, i8** %34, align 8
  br label %244

244:                                              ; preds = %238, %227
  %245 = load i8*, i8** %34, align 8
  store i8* %245, i8** %32, align 8
  %246 = load i32, i32* %26, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load i32, i32* @XLH_INSERT_ALL_VISIBLE_CLEARED, align 4
  br label %251

250:                                              ; preds = %244
  br label %251

251:                                              ; preds = %250, %248
  %252 = phi i32 [ %249, %248 ], [ 0, %250 ]
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 8
  %255 = load i32, i32* %27, align 4
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  store i32 0, i32* %15, align 4
  br label %258

258:                                              ; preds = %334, %251
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* %27, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %337

262:                                              ; preds = %258
  %263 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %263, i64 %267
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %268, align 8
  store %struct.TYPE_21__* %269, %struct.TYPE_21__** %37, align 8
  %270 = load i32, i32* %35, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %282, label %272

272:                                              ; preds = %262
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 1
  %275 = call i32 @ItemPointerGetOffsetNumber(i32* %274)
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32 %275, i32* %281, align 4
  br label %282

282:                                              ; preds = %272, %262
  %283 = load i8*, i8** %34, align 8
  %284 = call i64 @SHORTALIGN(i8* %283)
  %285 = inttoptr i64 %284 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %285, %struct.TYPE_17__** %38, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %287 = bitcast %struct.TYPE_17__* %286 to i8*
  %288 = load i32, i32* @SizeOfMultiInsertTuple, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  store i8* %290, i8** %34, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 3
  store i32 %295, i32* %297, align 4
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 4
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @SizeofHeapTupleHeader, align 4
  %316 = sub nsw i32 %314, %315
  store i32 %316, i32* %39, align 4
  %317 = load i8*, i8** %34, align 8
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 2
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %319, align 8
  %321 = bitcast %struct.TYPE_16__* %320 to i8*
  %322 = load i32, i32* @SizeofHeapTupleHeader, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = load i32, i32* %39, align 4
  %326 = call i32 @memcpy(i8* %317, i8* %324, i32 %325)
  %327 = load i32, i32* %39, align 4
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* %39, align 4
  %331 = load i8*, i8** %34, align 8
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i8, i8* %331, i64 %332
  store i8* %333, i8** %34, align 8
  br label %334

334:                                              ; preds = %282
  %335 = load i32, i32* %15, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %15, align 4
  br label %258

337:                                              ; preds = %258
  %338 = load i8*, i8** %34, align 8
  %339 = load i8*, i8** %32, align 8
  %340 = ptrtoint i8* %338 to i64
  %341 = ptrtoint i8* %339 to i64
  %342 = sub i64 %340, %341
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* %33, align 4
  %344 = load i8*, i8** %34, align 8
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = ptrtoint i8* %344 to i64
  %348 = ptrtoint i8* %346 to i64
  %349 = sub i64 %347, %348
  %350 = load i32, i32* @BLCKSZ, align 4
  %351 = sext i32 %350 to i64
  %352 = icmp slt i64 %349, %351
  %353 = zext i1 %352 to i32
  %354 = call i32 @Assert(i32 %353)
  %355 = load i32, i32* %21, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %337
  %358 = load i32, i32* @XLH_INSERT_CONTAINS_NEW_TUPLE, align 4
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  br label %363

363:                                              ; preds = %357, %337
  %364 = load i32, i32* %16, align 4
  %365 = load i32, i32* %27, align 4
  %366 = add nsw i32 %364, %365
  %367 = load i32, i32* %9, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %375

369:                                              ; preds = %363
  %370 = load i32, i32* @XLH_INSERT_LAST_IN_MULTI, align 4
  %371 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = or i32 %373, %370
  store i32 %374, i32* %372, align 8
  br label %375

375:                                              ; preds = %369, %363
  %376 = load i32, i32* %35, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %375
  %379 = load i32, i32* @XLOG_HEAP_INIT_PAGE, align 4
  %380 = load i32, i32* %31, align 4
  %381 = or i32 %380, %379
  store i32 %381, i32* %31, align 4
  %382 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %383 = load i32, i32* %36, align 4
  %384 = or i32 %383, %382
  store i32 %384, i32* %36, align 4
  br label %385

385:                                              ; preds = %378, %375
  %386 = load i32, i32* %21, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %385
  %389 = load i32, i32* @REGBUF_KEEP_DATA, align 4
  %390 = load i32, i32* %36, align 4
  %391 = or i32 %390, %389
  store i32 %391, i32* %36, align 4
  br label %392

392:                                              ; preds = %388, %385
  %393 = call i32 (...) @XLogBeginInsert()
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %395 = bitcast %struct.TYPE_18__* %394 to i8*
  %396 = load i8*, i8** %32, align 8
  %397 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %398 = load i8*, i8** %397, align 8
  %399 = ptrtoint i8* %396 to i64
  %400 = ptrtoint i8* %398 to i64
  %401 = sub i64 %399, %400
  %402 = trunc i64 %401 to i32
  %403 = call i32 @XLogRegisterData(i8* %395, i32 %402)
  %404 = load i64, i64* %24, align 8
  %405 = load i32, i32* @REGBUF_STANDARD, align 4
  %406 = load i32, i32* %36, align 4
  %407 = or i32 %405, %406
  %408 = call i32 @XLogRegisterBuffer(i32 0, i64 %404, i32 %407)
  %409 = load i8*, i8** %32, align 8
  %410 = load i32, i32* %33, align 4
  %411 = call i32 @XLogRegisterBufData(i32 0, i8* %409, i32 %410)
  %412 = load i32, i32* @XLOG_INCLUDE_ORIGIN, align 4
  %413 = call i32 @XLogSetRecordFlags(i32 %412)
  %414 = load i32, i32* @RM_HEAP2_ID, align 4
  %415 = load i32, i32* %31, align 4
  %416 = call i32 @XLogInsert(i32 %414, i32 %415)
  store i32 %416, i32* %29, align 4
  %417 = load i32, i32* %18, align 4
  %418 = load i32, i32* %29, align 4
  %419 = call i32 @PageSetLSN(i32 %417, i32 %418)
  br label %420

420:                                              ; preds = %392, %201
  %421 = call i32 (...) @END_CRIT_SECTION()
  %422 = load i64, i64* %24, align 8
  %423 = call i32 @UnlockReleaseBuffer(i64 %422)
  %424 = load i64, i64* %25, align 8
  %425 = load i64, i64* @InvalidBuffer, align 8
  %426 = icmp ne i64 %424, %425
  br i1 %426, label %427, label %430

427:                                              ; preds = %420
  %428 = load i64, i64* %25, align 8
  %429 = call i32 @ReleaseBuffer(i64 %428)
  br label %430

430:                                              ; preds = %427, %420
  %431 = load i32, i32* %27, align 4
  %432 = load i32, i32* %16, align 4
  %433 = add nsw i32 %432, %431
  store i32 %433, i32* %16, align 4
  br label %116

434:                                              ; preds = %116
  %435 = load i32, i32* %7, align 4
  %436 = load i64, i64* @InvalidBuffer, align 8
  %437 = call i32 @CheckForSerializableConflictIn(i32 %435, i32* null, i64 %436)
  %438 = load i32, i32* %7, align 4
  %439 = call i64 @IsCatalogRelation(i32 %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %458

441:                                              ; preds = %434
  store i32 0, i32* %15, align 4
  br label %442

442:                                              ; preds = %454, %441
  %443 = load i32, i32* %15, align 4
  %444 = load i32, i32* %9, align 4
  %445 = icmp slt i32 %443, %444
  br i1 %445, label %446, label %457

446:                                              ; preds = %442
  %447 = load i32, i32* %7, align 4
  %448 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %449 = load i32, i32* %15, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %448, i64 %450
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %451, align 8
  %453 = call i32 @CacheInvalidateHeapTuple(i32 %447, %struct.TYPE_21__* %452, i32* null)
  br label %454

454:                                              ; preds = %446
  %455 = load i32, i32* %15, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %15, align 4
  br label %442

457:                                              ; preds = %442
  br label %458

458:                                              ; preds = %457, %434
  store i32 0, i32* %15, align 4
  br label %459

459:                                              ; preds = %477, %458
  %460 = load i32, i32* %15, align 4
  %461 = load i32, i32* %9, align 4
  %462 = icmp slt i32 %460, %461
  br i1 %462, label %463, label %480

463:                                              ; preds = %459
  %464 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %465 = load i32, i32* %15, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %464, i64 %466
  %468 = load %struct.TYPE_21__*, %struct.TYPE_21__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %8, align 8
  %472 = load i32, i32* %15, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %471, i64 %473
  %475 = load %struct.TYPE_19__*, %struct.TYPE_19__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %475, i32 0, i32 0
  store i32 %470, i32* %476, align 4
  br label %477

477:                                              ; preds = %463
  %478 = load i32, i32* %15, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %15, align 4
  br label %459

480:                                              ; preds = %459
  %481 = load i32, i32* %7, align 4
  %482 = load i32, i32* %9, align 4
  %483 = call i32 @pgstat_count_heap_insert(i32 %481, i32 %482)
  ret void
}

declare dso_local i32 @GetCurrentTransactionId(...) #1

declare dso_local i32 @RelationIsLogicallyLogged(i32) #1

declare dso_local i32 @RelationIsAccessibleInLogicalDecoding(i32) #1

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i64 @RelationGetTargetPageFreeSpace(i32, i32) #1

declare dso_local %struct.TYPE_21__** @palloc(i32) #1

declare dso_local %struct.TYPE_21__* @ExecFetchSlotHeapTuple(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local %struct.TYPE_21__* @heap_prepare_insert(i32, %struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @CheckForSerializableConflictIn(i32, i32*, i64) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @RelationGetBufferForTuple(i32, i32, i64, i32, i32, i64*, i32*) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @RelationPutHeapTuple(i32, i64, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @PageGetHeapFreeSpace(i32) #1

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local i32 @log_heap_new_cid(i32, %struct.TYPE_21__*) #1

declare dso_local i64 @PageIsAllVisible(i32) #1

declare dso_local i32 @PageClearAllVisible(i32) #1

declare dso_local i32 @visibilitymap_clear(i32, i32, i64, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i64) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @SHORTALIGN(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogSetRecordFlags(i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

declare dso_local i64 @IsCatalogRelation(i32) #1

declare dso_local i32 @CacheInvalidateHeapTuple(i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @pgstat_count_heap_insert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
