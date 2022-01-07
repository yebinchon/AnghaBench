; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_prune_chain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_pruneheap.c_heap_prune_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i8*, %struct.TYPE_17__*, i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@MaxHeapTuplesPerPage = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"unexpected HeapTupleSatisfiesVacuum result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32, %struct.TYPE_16__*)* @heap_prune_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heap_prune_chain(i32 %0, i32 %1, i64 %2, i32 %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_18__, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %11, align 8
  store i32 0, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @BufferGetPage(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %32, i64* %17, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @PageGetMaxOffsetNumber(i32 %33)
  store i64 %34, i64* %18, align 8
  %35 = load i32, i32* @MaxHeapTuplesPerPage, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %20, align 8
  %38 = alloca i64, i64 %36, align 16
  store i64 %36, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @RelationGetRelid(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @PageGetItemId(i32 %42, i64 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @ItemIdIsNormal(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %5
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i64 @PageGetItem(i32 %49, i32 %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %16, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %54, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i8* @ItemIdGetLength(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @BufferGetBlockNumber(i32 %59)
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @ItemPointerSet(i32* %58, i64 %60, i64 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %64 = call i64 @HeapTupleHeaderIsHeapOnly(%struct.TYPE_17__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %48
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_18__* %24, i32 %67, i32 %68)
  %70 = icmp eq i32 %69, 132
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %73 = call i32 @HeapTupleHeaderIsHotUpdated(%struct.TYPE_17__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @heap_prune_record_unused(%struct.TYPE_16__* %76, i64 %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = call i32 @HeapTupleHeaderAdvanceLatestRemovedXid(%struct.TYPE_17__* %79, i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %75, %71, %66
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %297

87:                                               ; preds = %48
  br label %88

88:                                               ; preds = %87, %5
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %19, align 8
  br label %90

90:                                               ; preds = %208, %124, %88
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* @FirstOffsetNumber, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %18, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %90
  br label %228

99:                                               ; preds = %94
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* %19, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %228

108:                                              ; preds = %99
  %109 = load i32, i32* %13, align 4
  %110 = load i64, i64* %19, align 8
  %111 = call i32 @PageGetItemId(i32 %109, i64 %110)
  store i32 %111, i32* %26, align 4
  %112 = load i32, i32* %26, align 4
  %113 = call i32 @ItemIdIsUsed(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  br label %228

116:                                              ; preds = %108
  %117 = load i32, i32* %26, align 4
  %118 = call i64 @ItemIdIsRedirected(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i32, i32* %22, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %228

124:                                              ; preds = %120
  %125 = load i64, i64* %19, align 8
  %126 = load i32, i32* %22, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %22, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i64, i64* %38, i64 %128
  store i64 %125, i64* %129, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i64 @ItemIdGetRedirect(i32 %130)
  store i64 %131, i64* %19, align 8
  br label %90

132:                                              ; preds = %116
  %133 = load i32, i32* %26, align 4
  %134 = call i64 @ItemIdIsDead(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %228

137:                                              ; preds = %132
  %138 = load i32, i32* %26, align 4
  %139 = call i32 @ItemIdIsNormal(i32 %138)
  %140 = call i32 @Assert(i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %26, align 4
  %143 = call i64 @PageGetItem(i32 %141, i32 %142)
  %144 = inttoptr i64 %143 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %144, %struct.TYPE_17__** %16, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  store %struct.TYPE_17__* %145, %struct.TYPE_17__** %146, align 8
  %147 = load i32, i32* %26, align 4
  %148 = call i8* @ItemIdGetLength(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  store i8* %148, i8** %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %151 = load i32, i32* %8, align 4
  %152 = call i64 @BufferGetBlockNumber(i32 %151)
  %153 = load i64, i64* %19, align 8
  %154 = call i32 @ItemPointerSet(i32* %150, i64 %152, i64 %153)
  %155 = load i32, i32* %14, align 4
  %156 = call i64 @TransactionIdIsValid(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %137
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %160 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_17__* %159)
  %161 = load i32, i32* %14, align 4
  %162 = call i32 @TransactionIdEquals(i32 %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  br label %228

165:                                              ; preds = %158, %137
  %166 = load i64, i64* %19, align 8
  %167 = load i32, i32* %22, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %22, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i64, i64* %38, i64 %169
  store i64 %166, i64* %170, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_18__* %24, i32 %171, i32 %172)
  switch i32 %173, label %186 [
    i32 132, label %174
    i32 128, label %175
    i32 131, label %180
    i32 129, label %185
    i32 130, label %185
  ]

174:                                              ; preds = %165
  store i32 1, i32* %27, align 4
  br label %189

175:                                              ; preds = %165
  store i32 1, i32* %28, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %178 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_17__* %177)
  %179 = call i32 @heap_prune_record_prunable(%struct.TYPE_16__* %176, i32 %178)
  br label %189

180:                                              ; preds = %165
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %183 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_17__* %182)
  %184 = call i32 @heap_prune_record_prunable(%struct.TYPE_16__* %181, i32 %183)
  br label %189

185:                                              ; preds = %165, %165
  br label %189

186:                                              ; preds = %165
  %187 = load i32, i32* @ERROR, align 4
  %188 = call i32 @elog(i32 %187, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %185, %180, %175, %174
  %190 = load i32, i32* %27, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i64, i64* %19, align 8
  store i64 %193, i64* %17, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = call i32 @HeapTupleHeaderAdvanceLatestRemovedXid(%struct.TYPE_17__* %194, i32* %196)
  br label %203

198:                                              ; preds = %189
  %199 = load i32, i32* %28, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  br label %228

202:                                              ; preds = %198
  br label %203

203:                                              ; preds = %202, %192
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %205 = call i32 @HeapTupleHeaderIsHotUpdated(%struct.TYPE_17__* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203
  br label %228

208:                                              ; preds = %203
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %210 = call i32 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_17__* %209)
  %211 = icmp ne i32 %210, 0
  %212 = xor i1 %211, true
  %213 = zext i1 %212 to i32
  %214 = call i32 @Assert(i32 %213)
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = call i64 @ItemPointerGetBlockNumber(i32* %216)
  %218 = load i32, i32* %8, align 4
  %219 = call i64 @BufferGetBlockNumber(i32 %218)
  %220 = icmp eq i64 %217, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @Assert(i32 %221)
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = call i64 @ItemPointerGetOffsetNumber(i32* %224)
  store i64 %225, i64* %19, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %227 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_17__* %226)
  store i32 %227, i32* %14, align 4
  br label %90

228:                                              ; preds = %207, %201, %164, %136, %123, %115, %107, %98
  %229 = load i64, i64* %17, align 8
  %230 = call i64 @OffsetNumberIsValid(i64 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %283

232:                                              ; preds = %228
  store i32 1, i32* %23, align 4
  br label %233

233:                                              ; preds = %256, %232
  %234 = load i32, i32* %23, align 4
  %235 = load i32, i32* %22, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %233
  %238 = load i32, i32* %23, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %38, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %17, align 8
  %244 = icmp ne i64 %242, %243
  br label %245

245:                                              ; preds = %237, %233
  %246 = phi i1 [ false, %233 ], [ %244, %237 ]
  br i1 %246, label %247, label %259

247:                                              ; preds = %245
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %249 = load i32, i32* %23, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %38, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @heap_prune_record_unused(%struct.TYPE_16__* %248, i64 %252)
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %12, align 4
  br label %256

256:                                              ; preds = %247
  %257 = load i32, i32* %23, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %23, align 4
  br label %233

259:                                              ; preds = %245
  %260 = load i32, i32* %15, align 4
  %261 = call i32 @ItemIdIsNormal(i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  br label %266

266:                                              ; preds = %263, %259
  %267 = load i32, i32* %23, align 4
  %268 = load i32, i32* %22, align 4
  %269 = icmp sge i32 %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %272 = load i64, i64* %9, align 8
  %273 = call i32 @heap_prune_record_dead(%struct.TYPE_16__* %271, i64 %272)
  br label %282

274:                                              ; preds = %266
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %276 = load i64, i64* %9, align 8
  %277 = load i32, i32* %23, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %38, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @heap_prune_record_redirect(%struct.TYPE_16__* %275, i64 %276, i64 %280)
  br label %282

282:                                              ; preds = %274, %270
  br label %295

283:                                              ; preds = %228
  %284 = load i32, i32* %22, align 4
  %285 = icmp slt i32 %284, 2
  br i1 %285, label %286, label %294

286:                                              ; preds = %283
  %287 = load i32, i32* %15, align 4
  %288 = call i64 @ItemIdIsRedirected(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %286
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %292 = load i64, i64* %9, align 8
  %293 = call i32 @heap_prune_record_dead(%struct.TYPE_16__* %291, i64 %292)
  br label %294

294:                                              ; preds = %290, %286, %283
  br label %295

295:                                              ; preds = %294, %282
  %296 = load i32, i32* %12, align 4
  store i32 %296, i32* %6, align 4
  store i32 1, i32* %25, align 4
  br label %297

297:                                              ; preds = %295, %85
  %298 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %298)
  %299 = load i32, i32* %6, align 4
  ret i32 %299
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i8* @ItemIdGetLength(i32) #1

declare dso_local i32 @ItemPointerSet(i32*, i64, i64) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i64 @HeapTupleHeaderIsHeapOnly(%struct.TYPE_17__*) #1

declare dso_local i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @HeapTupleHeaderIsHotUpdated(%struct.TYPE_17__*) #1

declare dso_local i32 @heap_prune_record_unused(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @HeapTupleHeaderAdvanceLatestRemovedXid(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ItemIdIsUsed(i32) #1

declare dso_local i64 @ItemIdIsRedirected(i32) #1

declare dso_local i64 @ItemIdGetRedirect(i32) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_17__*) #1

declare dso_local i32 @heap_prune_record_prunable(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_17__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_17__*) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i64 @OffsetNumberIsValid(i64) #1

declare dso_local i32 @heap_prune_record_dead(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @heap_prune_record_redirect(%struct.TYPE_16__*, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
