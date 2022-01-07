; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_splitbucket.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_splitbucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@INDEX_MOVED_BY_SPLIT_MASK = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@HASH_READ = common dso_local global i32 0, align 4
@LH_OVERFLOW_PAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@LH_BUCKET_BEING_SPLIT = common dso_local global i32 0, align 4
@LH_BUCKET_BEING_POPULATED = common dso_local global i32 0, align 4
@LH_BUCKET_NEEDS_SPLIT_CLEANUP = common dso_local global i32 0, align 4
@SizeOfHashSplitComplete = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HASH_ID = common dso_local global i32 0, align 4
@XLOG_HASH_SPLIT_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i64, i32*, i32, i32, i32)* @_hash_splitbucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_hash_splitbucket(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca %struct.TYPE_11__*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca %struct.TYPE_11__*, align 8
  %41 = alloca i32, align 4
  %42 = alloca %struct.TYPE_10__, align 4
  store i32 %0, i32* %11, align 4
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %43 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %27, align 8
  %46 = alloca i64, i64 %44, align 16
  store i64 %44, i64* %28, align 8
  %47 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca %struct.TYPE_11__*, i64 %48, align 16
  store i64 %48, i64* %29, align 8
  store i64 0, i64* %30, align 8
  store i32 0, i32* %32, align 4
  %50 = load i64, i64* %15, align 8
  store i64 %50, i64* %21, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @BufferGetPage(i64 %51)
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = call i64 @PageGetSpecialPointer(i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %25, align 8
  %56 = load i64, i64* %16, align 8
  store i64 %56, i64* %22, align 8
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @BufferGetPage(i64 %57)
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %24, align 4
  %60 = call i64 @PageGetSpecialPointer(i32 %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %26, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i64, i64* %21, align 8
  %64 = call i32 @BufferGetBlockNumber(i64 %63)
  %65 = load i64, i64* %22, align 8
  %66 = call i32 @BufferGetBlockNumber(i64 %65)
  %67 = call i32 @PredicateLockPageSplit(i32 %62, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %251, %10
  %69 = load i32, i32* %23, align 4
  %70 = call i64 @PageGetMaxOffsetNumber(i32 %69)
  store i64 %70, i64* %35, align 8
  %71 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %71, i64* %34, align 8
  br label %72

72:                                               ; preds = %191, %68
  %73 = load i64, i64* %34, align 8
  %74 = load i64, i64* %35, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %194

76:                                               ; preds = %72
  store i32 0, i32* %39, align 4
  %77 = load i32, i32* %23, align 4
  %78 = load i64, i64* %34, align 8
  %79 = call i32 @PageGetItemId(i32 %77, i64 %78)
  %80 = call i64 @ItemIdIsDead(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %191

83:                                               ; preds = %76
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %23, align 4
  %86 = load i64, i64* %34, align 8
  %87 = call i32 @PageGetItemId(i32 %85, i64 %86)
  %88 = call i64 @PageGetItem(i32 %84, i32 %87)
  %89 = inttoptr i64 %88 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %36, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load i32*, i32** %17, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* @HASH_FIND, align 4
  %97 = call i32 @hash_search(i32* %93, i32* %95, i32 %96, i32* %39)
  br label %98

98:                                               ; preds = %92, %83
  %99 = load i32, i32* %39, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %191

102:                                              ; preds = %98
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %104 = call i32 @_hash_get_indextuple_hashkey(%struct.TYPE_11__* %103)
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %20, align 4
  %108 = call i64 @_hash_hashkey2bucket(i32 %104, i32 %105, i32 %106, i32 %107)
  store i64 %108, i64* %38, align 8
  %109 = load i64, i64* %38, align 8
  %110 = load i64, i64* %14, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %184

112:                                              ; preds = %102
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %114 = call %struct.TYPE_11__* @CopyIndexTuple(%struct.TYPE_11__* %113)
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %40, align 8
  %115 = load i32, i32* @INDEX_MOVED_BY_SPLIT_MASK, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %121 = call i64 @IndexTupleSize(%struct.TYPE_11__* %120)
  store i64 %121, i64* %37, align 8
  %122 = load i64, i64* %37, align 8
  %123 = call i64 @MAXALIGN(i64 %122)
  store i64 %123, i64* %37, align 8
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %32, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i64 @PageGetFreeSpaceForMultipleTuples(i32 %124, i32 %126)
  %128 = load i64, i64* %30, align 8
  %129 = load i64, i64* %37, align 8
  %130 = add nsw i64 %128, %129
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %175

132:                                              ; preds = %112
  %133 = call i32 (...) @START_CRIT_SECTION()
  %134 = load i32, i32* %11, align 4
  %135 = load i64, i64* %16, align 8
  %136 = load i32, i32* %32, align 4
  %137 = call i32 @_hash_pgaddmultitup(i32 %134, i64 %135, %struct.TYPE_11__** %49, i64* %46, i32 %136)
  %138 = load i64, i64* %16, align 8
  %139 = call i32 @MarkBufferDirty(i64 %138)
  %140 = load i32, i32* %11, align 4
  %141 = load i64, i64* %16, align 8
  %142 = call i32 @log_split_page(i32 %140, i64 %141)
  %143 = call i32 (...) @END_CRIT_SECTION()
  %144 = load i64, i64* %16, align 8
  %145 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %146 = call i32 @LockBuffer(i64 %144, i32 %145)
  store i32 0, i32* %31, align 4
  br label %147

147:                                              ; preds = %157, %132
  %148 = load i32, i32* %31, align 4
  %149 = load i32, i32* %32, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i32, i32* %31, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %49, i64 %153
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %154, align 8
  %156 = call i32 @pfree(%struct.TYPE_11__* %155)
  br label %157

157:                                              ; preds = %151
  %158 = load i32, i32* %31, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %31, align 4
  br label %147

160:                                              ; preds = %147
  store i32 0, i32* %32, align 4
  store i64 0, i64* %30, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* %16, align 8
  %165 = load i64, i64* %22, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  %169 = call i64 @_hash_addovflpage(i32 %161, i64 %162, i64 %163, i32 %168)
  store i64 %169, i64* %16, align 8
  %170 = load i64, i64* %16, align 8
  %171 = call i32 @BufferGetPage(i64 %170)
  store i32 %171, i32* %24, align 4
  %172 = load i32, i32* %24, align 4
  %173 = call i64 @PageGetSpecialPointer(i32 %172)
  %174 = inttoptr i64 %173 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %174, %struct.TYPE_12__** %26, align 8
  br label %175

175:                                              ; preds = %160, %112
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %177 = load i32, i32* %32, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %32, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %49, i64 %179
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %180, align 8
  %181 = load i64, i64* %37, align 8
  %182 = load i64, i64* %30, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* %30, align 8
  br label %190

184:                                              ; preds = %102
  %185 = load i64, i64* %38, align 8
  %186 = load i64, i64* %13, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @Assert(i32 %188)
  br label %190

190:                                              ; preds = %184, %175
  br label %191

191:                                              ; preds = %190, %101, %82
  %192 = load i64, i64* %34, align 8
  %193 = call i64 @OffsetNumberNext(i64 %192)
  store i64 %193, i64* %34, align 8
  br label %72

194:                                              ; preds = %72
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %33, align 4
  %198 = load i64, i64* %15, align 8
  %199 = load i64, i64* %21, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load i64, i64* %15, align 8
  %203 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %204 = call i32 @LockBuffer(i64 %202, i32 %203)
  br label %209

205:                                              ; preds = %194
  %206 = load i32, i32* %11, align 4
  %207 = load i64, i64* %15, align 8
  %208 = call i32 @_hash_relbuf(i32 %206, i64 %207)
  br label %209

209:                                              ; preds = %205, %201
  %210 = load i32, i32* %33, align 4
  %211 = call i32 @BlockNumberIsValid(i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %251, label %213

213:                                              ; preds = %209
  %214 = call i32 (...) @START_CRIT_SECTION()
  %215 = load i32, i32* %11, align 4
  %216 = load i64, i64* %16, align 8
  %217 = load i32, i32* %32, align 4
  %218 = call i32 @_hash_pgaddmultitup(i32 %215, i64 %216, %struct.TYPE_11__** %49, i64* %46, i32 %217)
  %219 = load i64, i64* %16, align 8
  %220 = call i32 @MarkBufferDirty(i64 %219)
  %221 = load i32, i32* %11, align 4
  %222 = load i64, i64* %16, align 8
  %223 = call i32 @log_split_page(i32 %221, i64 %222)
  %224 = call i32 (...) @END_CRIT_SECTION()
  %225 = load i64, i64* %16, align 8
  %226 = load i64, i64* %22, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %213
  %229 = load i64, i64* %16, align 8
  %230 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %231 = call i32 @LockBuffer(i64 %229, i32 %230)
  br label %236

232:                                              ; preds = %213
  %233 = load i32, i32* %11, align 4
  %234 = load i64, i64* %16, align 8
  %235 = call i32 @_hash_relbuf(i32 %233, i64 %234)
  br label %236

236:                                              ; preds = %232, %228
  store i32 0, i32* %31, align 4
  br label %237

237:                                              ; preds = %247, %236
  %238 = load i32, i32* %31, align 4
  %239 = load i32, i32* %32, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %237
  %242 = load i32, i32* %31, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %49, i64 %243
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = call i32 @pfree(%struct.TYPE_11__* %245)
  br label %247

247:                                              ; preds = %241
  %248 = load i32, i32* %31, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %31, align 4
  br label %237

250:                                              ; preds = %237
  br label %262

251:                                              ; preds = %209
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %33, align 4
  %254 = load i32, i32* @HASH_READ, align 4
  %255 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %256 = call i64 @_hash_getbuf(i32 %252, i32 %253, i32 %254, i32 %255)
  store i64 %256, i64* %15, align 8
  %257 = load i64, i64* %15, align 8
  %258 = call i32 @BufferGetPage(i64 %257)
  store i32 %258, i32* %23, align 4
  %259 = load i32, i32* %23, align 4
  %260 = call i64 @PageGetSpecialPointer(i32 %259)
  %261 = inttoptr i64 %260 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %261, %struct.TYPE_12__** %25, align 8
  br label %68

262:                                              ; preds = %250
  %263 = load i64, i64* %21, align 8
  %264 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %265 = call i32 @LockBuffer(i64 %263, i32 %264)
  %266 = load i64, i64* %21, align 8
  %267 = call i32 @BufferGetPage(i64 %266)
  store i32 %267, i32* %23, align 4
  %268 = load i32, i32* %23, align 4
  %269 = call i64 @PageGetSpecialPointer(i32 %268)
  %270 = inttoptr i64 %269 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %270, %struct.TYPE_12__** %25, align 8
  %271 = load i64, i64* %22, align 8
  %272 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %273 = call i32 @LockBuffer(i64 %271, i32 %272)
  %274 = load i64, i64* %22, align 8
  %275 = call i32 @BufferGetPage(i64 %274)
  store i32 %275, i32* %24, align 4
  %276 = load i32, i32* %24, align 4
  %277 = call i64 @PageGetSpecialPointer(i32 %276)
  %278 = inttoptr i64 %277 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %278, %struct.TYPE_12__** %26, align 8
  %279 = call i32 (...) @START_CRIT_SECTION()
  %280 = load i32, i32* @LH_BUCKET_BEING_SPLIT, align 4
  %281 = xor i32 %280, -1
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, %281
  store i32 %285, i32* %283, align 4
  %286 = load i32, i32* @LH_BUCKET_BEING_POPULATED, align 4
  %287 = xor i32 %286, -1
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, %287
  store i32 %291, i32* %289, align 4
  %292 = load i32, i32* @LH_BUCKET_NEEDS_SPLIT_CLEANUP, align 4
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 4
  %297 = load i64, i64* %21, align 8
  %298 = call i32 @MarkBufferDirty(i64 %297)
  %299 = load i64, i64* %22, align 8
  %300 = call i32 @MarkBufferDirty(i64 %299)
  %301 = load i32, i32* %11, align 4
  %302 = call i64 @RelationNeedsWAL(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %334

304:                                              ; preds = %262
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32 %307, i32* %308, align 4
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 %311, i32* %312, align 4
  %313 = call i32 (...) @XLogBeginInsert()
  %314 = bitcast %struct.TYPE_10__* %42 to i8*
  %315 = load i32, i32* @SizeOfHashSplitComplete, align 4
  %316 = call i32 @XLogRegisterData(i8* %314, i32 %315)
  %317 = load i64, i64* %21, align 8
  %318 = load i32, i32* @REGBUF_STANDARD, align 4
  %319 = call i32 @XLogRegisterBuffer(i32 0, i64 %317, i32 %318)
  %320 = load i64, i64* %22, align 8
  %321 = load i32, i32* @REGBUF_STANDARD, align 4
  %322 = call i32 @XLogRegisterBuffer(i32 1, i64 %320, i32 %321)
  %323 = load i32, i32* @RM_HASH_ID, align 4
  %324 = load i32, i32* @XLOG_HASH_SPLIT_COMPLETE, align 4
  %325 = call i32 @XLogInsert(i32 %323, i32 %324)
  store i32 %325, i32* %41, align 4
  %326 = load i64, i64* %21, align 8
  %327 = call i32 @BufferGetPage(i64 %326)
  %328 = load i32, i32* %41, align 4
  %329 = call i32 @PageSetLSN(i32 %327, i32 %328)
  %330 = load i64, i64* %22, align 8
  %331 = call i32 @BufferGetPage(i64 %330)
  %332 = load i32, i32* %41, align 4
  %333 = call i32 @PageSetLSN(i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %304, %262
  %335 = call i32 (...) @END_CRIT_SECTION()
  %336 = load i64, i64* %21, align 8
  %337 = call i64 @IsBufferCleanupOK(i64 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %352

339:                                              ; preds = %334
  %340 = load i64, i64* %22, align 8
  %341 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %342 = call i32 @LockBuffer(i64 %340, i32 %341)
  %343 = load i32, i32* %11, align 4
  %344 = load i64, i64* %13, align 8
  %345 = load i64, i64* %21, align 8
  %346 = load i64, i64* %21, align 8
  %347 = call i32 @BufferGetBlockNumber(i64 %346)
  %348 = load i32, i32* %18, align 4
  %349 = load i32, i32* %19, align 4
  %350 = load i32, i32* %20, align 4
  %351 = call i32 @hashbucketcleanup(i32 %343, i64 %344, i64 %345, i32 %347, i32* null, i32 %348, i32 %349, i32 %350, i32* null, i32* null, i32 1, i32* null, i32* null)
  br label %359

352:                                              ; preds = %334
  %353 = load i64, i64* %22, align 8
  %354 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %355 = call i32 @LockBuffer(i64 %353, i32 %354)
  %356 = load i64, i64* %21, align 8
  %357 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %358 = call i32 @LockBuffer(i64 %356, i32 %357)
  br label %359

359:                                              ; preds = %352, %339
  %360 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %360)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BufferGetPage(i64) #2

declare dso_local i64 @PageGetSpecialPointer(i32) #2

declare dso_local i32 @PredicateLockPageSplit(i32, i32, i32) #2

declare dso_local i32 @BufferGetBlockNumber(i64) #2

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #2

declare dso_local i64 @ItemIdIsDead(i32) #2

declare dso_local i32 @PageGetItemId(i32, i64) #2

declare dso_local i64 @PageGetItem(i32, i32) #2

declare dso_local i32 @hash_search(i32*, i32*, i32, i32*) #2

declare dso_local i64 @_hash_hashkey2bucket(i32, i32, i32, i32) #2

declare dso_local i32 @_hash_get_indextuple_hashkey(%struct.TYPE_11__*) #2

declare dso_local %struct.TYPE_11__* @CopyIndexTuple(%struct.TYPE_11__*) #2

declare dso_local i64 @IndexTupleSize(%struct.TYPE_11__*) #2

declare dso_local i64 @MAXALIGN(i64) #2

declare dso_local i64 @PageGetFreeSpaceForMultipleTuples(i32, i32) #2

declare dso_local i32 @START_CRIT_SECTION(...) #2

declare dso_local i32 @_hash_pgaddmultitup(i32, i64, %struct.TYPE_11__**, i64*, i32) #2

declare dso_local i32 @MarkBufferDirty(i64) #2

declare dso_local i32 @log_split_page(i32, i64) #2

declare dso_local i32 @END_CRIT_SECTION(...) #2

declare dso_local i32 @LockBuffer(i64, i32) #2

declare dso_local i32 @pfree(%struct.TYPE_11__*) #2

declare dso_local i64 @_hash_addovflpage(i32, i64, i64, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @OffsetNumberNext(i64) #2

declare dso_local i32 @_hash_relbuf(i32, i64) #2

declare dso_local i32 @BlockNumberIsValid(i32) #2

declare dso_local i64 @_hash_getbuf(i32, i32, i32, i32) #2

declare dso_local i64 @RelationNeedsWAL(i32) #2

declare dso_local i32 @XLogBeginInsert(...) #2

declare dso_local i32 @XLogRegisterData(i8*, i32) #2

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #2

declare dso_local i32 @XLogInsert(i32, i32) #2

declare dso_local i32 @PageSetLSN(i32, i32) #2

declare dso_local i64 @IsBufferCleanupOK(i64) #2

declare dso_local i32 @hashbucketcleanup(i32, i64, i64, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
