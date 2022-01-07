; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashinsert.c__hash_doinsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashinsert.c__hash_doinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@InvalidBuffer = common dso_local global i64 0, align 8
@HASH_METAPAGE = common dso_local global i32 0, align 4
@HASH_NOLOCK = common dso_local global i32 0, align 4
@LH_META_PAGE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"index row size %zu exceeds hash maximum %zu\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Values larger than a buffer page cannot be indexed.\00", align 1
@HASH_WRITE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@LH_OVERFLOW_PAGE = common dso_local global i32 0, align 4
@LH_PAGE_TYPE = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@SizeOfHashInsert = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HASH_ID = common dso_local global i32 0, align 4
@XLOG_HASH_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hash_doinsert(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load i64, i64* @InvalidBuffer, align 8
  store i64 %23, i64* %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @_hash_get_indextuple_hashkey(i64 %24)
  store i32 %25, i32* %17, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @IndexTupleSize(i64 %26)
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %15, align 8
  %29 = call i64 @MAXALIGN(i64 %28)
  store i64 %29, i64* %15, align 8
  br label %30

30:                                               ; preds = %80, %3
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @HASH_METAPAGE, align 4
  %33 = load i32, i32* @HASH_NOLOCK, align 4
  %34 = load i32, i32* @LH_META_PAGE, align 4
  %35 = call i64 @_hash_getbuf(i32 %31, i32 %32, i32 %33, i32 %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @BufferGetPage(i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i64, i64* %15, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @HashMaxItemSize(i32 %39)
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load i64, i64* %15, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @HashMaxItemSize(i32 %47)
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %48)
  %50 = call i32 @errhint(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 @ereport(i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %42, %30
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* @HASH_WRITE, align 4
  %56 = call i64 @_hash_getbucketbuf_from_hashkey(i32 %53, i32 %54, i32 %55, %struct.TYPE_10__** %11)
  store i64 %56, i64* %7, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @Assert(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @CheckForSerializableConflictIn(i32 %61, i32* null, i64 %62)
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @BufferGetPage(i64 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @PageGetSpecialPointer(i32 %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %14, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %18, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %74 = call i64 @H_BUCKET_BEING_SPLIT(%struct.TYPE_9__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %52
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @IsBufferCleanupOK(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %83 = call i32 @LockBuffer(i64 %81, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %18, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @_hash_finish_split(i32 %84, i64 %85, i64 %86, i64 %87, i32 %90, i32 %93, i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @_hash_dropbuf(i32 %98, i64 %99)
  %101 = load i32, i32* %4, align 4
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @_hash_dropbuf(i32 %101, i64 %102)
  br label %30

104:                                              ; preds = %76, %52
  br label %105

105:                                              ; preds = %179, %104
  %106 = load i32, i32* %13, align 4
  %107 = call i64 @PageGetFreeSpace(i32 %106)
  %108 = load i64, i64* %15, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %199

110:                                              ; preds = %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %112 = call i64 @H_HAS_DEAD_TUPLES(%struct.TYPE_9__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %110
  %115 = load i64, i64* %7, align 8
  %116 = call i64 @IsBufferCleanupOK(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @_hash_vacuum_one_page(i32 %119, i32 %120, i64 %121, i64 %122)
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @PageGetFreeSpace(i32 %124)
  %126 = load i64, i64* %15, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %199

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %130, %110
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %20, align 4
  %136 = call i64 @BlockNumberIsValid(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %131
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %8, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i32, i32* %4, align 4
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @_hash_relbuf(i32 %143, i64 %144)
  br label %150

146:                                              ; preds = %138
  %147 = load i64, i64* %7, align 8
  %148 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %149 = call i32 @LockBuffer(i64 %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %142
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* @HASH_WRITE, align 4
  %154 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %155 = call i64 @_hash_getbuf(i32 %151, i32 %152, i32 %153, i32 %154)
  store i64 %155, i64* %7, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @BufferGetPage(i64 %156)
  store i32 %157, i32* %13, align 4
  br label %179

158:                                              ; preds = %131
  %159 = load i64, i64* %7, align 8
  %160 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %161 = call i32 @LockBuffer(i64 %159, i32 %160)
  %162 = load i32, i32* %4, align 4
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %7, align 8
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* %8, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 1, i32 0
  %170 = call i64 @_hash_addovflpage(i32 %162, i64 %163, i64 %164, i32 %169)
  store i64 %170, i64* %7, align 8
  %171 = load i64, i64* %7, align 8
  %172 = call i32 @BufferGetPage(i64 %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = call i64 @PageGetFreeSpace(i32 %173)
  %175 = load i64, i64* %15, align 8
  %176 = icmp sge i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @Assert(i32 %177)
  br label %179

179:                                              ; preds = %158, %150
  %180 = load i32, i32* %13, align 4
  %181 = call i64 @PageGetSpecialPointer(i32 %180)
  %182 = inttoptr i64 %181 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %182, %struct.TYPE_9__** %14, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @LH_PAGE_TYPE, align 4
  %187 = and i32 %185, %186
  %188 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @Assert(i32 %190)
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %18, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = call i32 @Assert(i32 %197)
  br label %105

199:                                              ; preds = %128, %105
  %200 = load i64, i64* %9, align 8
  %201 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %202 = call i32 @LockBuffer(i64 %200, i32 %201)
  %203 = call i32 (...) @START_CRIT_SECTION()
  %204 = load i32, i32* %4, align 4
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* %5, align 8
  %208 = call i32 @_hash_pgaddtup(i32 %204, i64 %205, i64 %206, i64 %207)
  store i32 %208, i32* %19, align 4
  %209 = load i64, i64* %7, align 8
  %210 = call i32 @MarkBufferDirty(i64 %209)
  %211 = load i32, i32* %12, align 4
  %212 = call %struct.TYPE_10__* @HashPageGetMeta(i32 %211)
  store %struct.TYPE_10__* %212, %struct.TYPE_10__** %10, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sitofp i32 %219 to double
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = sitofp i64 %223 to double
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  %229 = sitofp i32 %228 to double
  %230 = fmul double %224, %229
  %231 = fcmp ogt double %220, %230
  %232 = zext i1 %231 to i32
  store i32 %232, i32* %16, align 4
  %233 = load i64, i64* %9, align 8
  %234 = call i32 @MarkBufferDirty(i64 %233)
  %235 = load i32, i32* %4, align 4
  %236 = call i64 @RelationNeedsWAL(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %267

238:                                              ; preds = %199
  %239 = load i32, i32* %19, align 4
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %239, i32* %240, align 4
  %241 = call i32 (...) @XLogBeginInsert()
  %242 = bitcast %struct.TYPE_8__* %21 to i8*
  %243 = load i32, i32* @SizeOfHashInsert, align 4
  %244 = call i32 @XLogRegisterData(i8* %242, i32 %243)
  %245 = load i64, i64* %9, align 8
  %246 = load i32, i32* @REGBUF_STANDARD, align 4
  %247 = call i32 @XLogRegisterBuffer(i32 1, i64 %245, i32 %246)
  %248 = load i64, i64* %7, align 8
  %249 = load i32, i32* @REGBUF_STANDARD, align 4
  %250 = call i32 @XLogRegisterBuffer(i32 0, i64 %248, i32 %249)
  %251 = load i64, i64* %5, align 8
  %252 = inttoptr i64 %251 to i8*
  %253 = load i64, i64* %5, align 8
  %254 = call i64 @IndexTupleSize(i64 %253)
  %255 = call i32 @XLogRegisterBufData(i32 0, i8* %252, i64 %254)
  %256 = load i32, i32* @RM_HASH_ID, align 4
  %257 = load i32, i32* @XLOG_HASH_INSERT, align 4
  %258 = call i32 @XLogInsert(i32 %256, i32 %257)
  store i32 %258, i32* %22, align 4
  %259 = load i64, i64* %7, align 8
  %260 = call i32 @BufferGetPage(i64 %259)
  %261 = load i32, i32* %22, align 4
  %262 = call i32 @PageSetLSN(i32 %260, i32 %261)
  %263 = load i64, i64* %9, align 8
  %264 = call i32 @BufferGetPage(i64 %263)
  %265 = load i32, i32* %22, align 4
  %266 = call i32 @PageSetLSN(i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %238, %199
  %268 = call i32 (...) @END_CRIT_SECTION()
  %269 = load i64, i64* %9, align 8
  %270 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %271 = call i32 @LockBuffer(i64 %269, i32 %270)
  %272 = load i32, i32* %4, align 4
  %273 = load i64, i64* %7, align 8
  %274 = call i32 @_hash_relbuf(i32 %272, i64 %273)
  %275 = load i64, i64* %7, align 8
  %276 = load i64, i64* %8, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %267
  %279 = load i32, i32* %4, align 4
  %280 = load i64, i64* %8, align 8
  %281 = call i32 @_hash_dropbuf(i32 %279, i64 %280)
  br label %282

282:                                              ; preds = %278, %267
  %283 = load i32, i32* %16, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i32, i32* %4, align 4
  %287 = load i64, i64* %9, align 8
  %288 = call i32 @_hash_expandtable(i32 %286, i64 %287)
  br label %289

289:                                              ; preds = %285, %282
  %290 = load i32, i32* %4, align 4
  %291 = load i64, i64* %9, align 8
  %292 = call i32 @_hash_dropbuf(i32 %290, i64 %291)
  ret void
}

declare dso_local i32 @_hash_get_indextuple_hashkey(i64) #1

declare dso_local i64 @IndexTupleSize(i64) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i64 @_hash_getbuf(i32, i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @HashMaxItemSize(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i64) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @_hash_getbucketbuf_from_hashkey(i32, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CheckForSerializableConflictIn(i32, i32*, i64) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @H_BUCKET_BEING_SPLIT(%struct.TYPE_9__*) #1

declare dso_local i64 @IsBufferCleanupOK(i64) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @_hash_finish_split(i32, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @_hash_dropbuf(i32, i64) #1

declare dso_local i64 @PageGetFreeSpace(i32) #1

declare dso_local i64 @H_HAS_DEAD_TUPLES(%struct.TYPE_9__*) #1

declare dso_local i32 @_hash_vacuum_one_page(i32, i32, i64, i64) #1

declare dso_local i64 @BlockNumberIsValid(i32) #1

declare dso_local i32 @_hash_relbuf(i32, i64) #1

declare dso_local i64 @_hash_addovflpage(i32, i64, i64, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @_hash_pgaddtup(i32, i64, i64, i64) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local %struct.TYPE_10__* @HashPageGetMeta(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i64) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @_hash_expandtable(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
