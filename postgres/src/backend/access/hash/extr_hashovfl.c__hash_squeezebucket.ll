; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashovfl.c__hash_squeezebucket.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashovfl.c__hash_squeezebucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i64 0, align 8
@HASH_WRITE = common dso_local global i32 0, align 4
@LH_OVERFLOW_PAGE = common dso_local global i32 0, align 4
@MaxOffsetNumber = common dso_local global i32 0, align 4
@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@SizeOfHashMovePageContents = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_NO_IMAGE = common dso_local global i32 0, align 4
@RM_HASH_ID = common dso_local global i32 0, align 4
@XLOG_HASH_MOVE_PAGE_CONTENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hash_squeezebucket(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_3__, align 4
  %37 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @BufferGetPage(i64 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @PageGetSpecialPointer(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %17, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @BlockNumberIsValid(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %5
  %51 = load i64, i64* %13, align 8
  %52 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %53 = call i32 @LockBuffer(i64 %51, i32 %52)
  br label %417

54:                                               ; preds = %5
  %55 = load i64, i64* @InvalidBuffer, align 8
  store i64 %55, i64* %14, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %18, align 8
  br label %57

57:                                               ; preds = %87, %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @InvalidBuffer, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @_hash_relbuf(i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %64, %57
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* @HASH_WRITE, align 4
  %72 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @_hash_getbuf_with_strategy(i32 %69, i64 %70, i32 %71, i32 %72, i32 %73)
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @BufferGetPage(i64 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i64 @PageGetSpecialPointer(i32 %77)
  %79 = inttoptr i64 %78 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %18, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @Assert(i32 %85)
  br label %87

87:                                               ; preds = %68
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @BlockNumberIsValid(i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %57, label %93

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %416, %93
  %95 = load i32, i32* @MaxOffsetNumber, align 4
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %21, align 8
  %98 = alloca i64, i64 %96, align 16
  store i64 %96, i64* %22, align 8
  %99 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %100 = zext i32 %99 to i64
  %101 = alloca i64, i64 %100, align 16
  store i64 %100, i64* %23, align 8
  %102 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %103 = zext i32 %102 to i64
  %104 = alloca i64, i64 %103, align 16
  store i64 %103, i64* %24, align 8
  %105 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %106 = zext i32 %105 to i64
  %107 = alloca i64, i64 %106, align 16
  store i64 %106, i64* %25, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i64 0, i64* %28, align 8
  store i32 0, i32* %30, align 4
  br label %108

108:                                              ; preds = %326, %94
  %109 = load i32, i32* %16, align 4
  %110 = call i64 @PageGetMaxOffsetNumber(i32 %109)
  store i64 %110, i64* %20, align 8
  %111 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %111, i64* %19, align 8
  br label %112

112:                                              ; preds = %347, %108
  %113 = load i64, i64* %19, align 8
  %114 = load i64, i64* %20, align 8
  %115 = icmp sle i64 %113, %114
  br i1 %115, label %116, label %350

116:                                              ; preds = %112
  %117 = load i32, i32* %16, align 4
  %118 = load i64, i64* %19, align 8
  %119 = call i32 @PageGetItemId(i32 %117, i64 %118)
  %120 = call i64 @ItemIdIsDead(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %347

123:                                              ; preds = %116
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i64, i64* %19, align 8
  %127 = call i32 @PageGetItemId(i32 %125, i64 %126)
  %128 = call i64 @PageGetItem(i32 %124, i32 %127)
  store i64 %128, i64* %31, align 8
  %129 = load i64, i64* %31, align 8
  %130 = call i64 @IndexTupleSize(i64 %129)
  store i64 %130, i64* %32, align 8
  %131 = load i64, i64* %32, align 8
  %132 = call i64 @MAXALIGN(i64 %131)
  store i64 %132, i64* %32, align 8
  br label %133

133:                                              ; preds = %327, %123
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %27, align 4
  %136 = add nsw i32 %135, 1
  %137 = call i64 @PageGetFreeSpaceForMultipleTuples(i32 %134, i32 %136)
  %138 = load i64, i64* %28, align 8
  %139 = load i64, i64* %32, align 8
  %140 = add nsw i64 %138, %139
  %141 = icmp slt i64 %137, %140
  br i1 %141, label %142, label %328

142:                                              ; preds = %133
  %143 = load i64, i64* @InvalidBuffer, align 8
  store i64 %143, i64* %33, align 8
  store i32 0, i32* %34, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @PageIsEmpty(i32 %144)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 @Assert(i32 %148)
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %8, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %142
  store i32 1, i32* %30, align 4
  br label %154

154:                                              ; preds = %153, %142
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %11, align 8
  %158 = load i64, i64* %11, align 8
  %159 = call i32 @BlockNumberIsValid(i64 %158)
  %160 = call i32 @Assert(i32 %159)
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* %12, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %154
  %165 = load i32, i32* %6, align 4
  %166 = load i64, i64* %11, align 8
  %167 = load i32, i32* @HASH_WRITE, align 4
  %168 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %169 = load i32, i32* %10, align 4
  %170 = call i64 @_hash_getbuf_with_strategy(i32 %165, i64 %166, i32 %167, i32 %168, i32 %169)
  store i64 %170, i64* %33, align 8
  br label %171

171:                                              ; preds = %164, %154
  %172 = load i32, i32* %27, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %277

174:                                              ; preds = %171
  %175 = load i32, i32* %27, align 4
  %176 = load i32, i32* %26, align 4
  %177 = icmp eq i32 %175, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @Assert(i32 %178)
  %180 = load i32, i32* %6, align 4
  %181 = call i64 @RelationNeedsWAL(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %174
  %184 = load i32, i32* %27, align 4
  %185 = add nsw i32 3, %184
  %186 = call i32 @XLogEnsureRecordSpace(i32 0, i32 %185)
  br label %187

187:                                              ; preds = %183, %174
  %188 = call i32 (...) @START_CRIT_SECTION()
  %189 = load i32, i32* %6, align 4
  %190 = load i64, i64* %13, align 8
  %191 = load i32, i32* %27, align 4
  %192 = call i32 @_hash_pgaddmultitup(i32 %189, i64 %190, i64* %101, i64* %107, i32 %191)
  %193 = load i64, i64* %13, align 8
  %194 = call i32 @MarkBufferDirty(i64 %193)
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %26, align 4
  %197 = call i32 @PageIndexMultiDelete(i32 %195, i64* %98, i32 %196)
  %198 = load i64, i64* %14, align 8
  %199 = call i32 @MarkBufferDirty(i64 %198)
  %200 = load i32, i32* %6, align 4
  %201 = call i64 @RelationNeedsWAL(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %275

203:                                              ; preds = %187
  %204 = load i32, i32* %27, align 4
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %204, i32* %205, align 4
  %206 = load i64, i64* %13, align 8
  %207 = load i64, i64* %9, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 1, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %210, i32* %211, align 4
  %212 = call i32 (...) @XLogBeginInsert()
  %213 = bitcast %struct.TYPE_3__* %36 to i8*
  %214 = load i32, i32* @SizeOfHashMovePageContents, align 4
  %215 = call i32 @XLogRegisterData(i8* %213, i32 %214)
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %203
  %220 = load i64, i64* %9, align 8
  %221 = load i32, i32* @REGBUF_STANDARD, align 4
  %222 = load i32, i32* @REGBUF_NO_IMAGE, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @XLogRegisterBuffer(i32 0, i64 %220, i32 %223)
  br label %225

225:                                              ; preds = %219, %203
  %226 = load i64, i64* %13, align 8
  %227 = load i32, i32* @REGBUF_STANDARD, align 4
  %228 = call i32 @XLogRegisterBuffer(i32 1, i64 %226, i32 %227)
  %229 = bitcast i64* %107 to i8*
  %230 = load i32, i32* %27, align 4
  %231 = sext i32 %230 to i64
  %232 = mul i64 %231, 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 @XLogRegisterBufData(i32 1, i8* %229, i32 %233)
  store i32 0, i32* %29, align 4
  br label %235

235:                                              ; preds = %251, %225
  %236 = load i32, i32* %29, align 4
  %237 = load i32, i32* %27, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %254

239:                                              ; preds = %235
  %240 = load i32, i32* %29, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %101, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = inttoptr i64 %243 to i8*
  %245 = load i32, i32* %29, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %104, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = call i32 @XLogRegisterBufData(i32 1, i8* %244, i32 %249)
  br label %251

251:                                              ; preds = %239
  %252 = load i32, i32* %29, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %29, align 4
  br label %235

254:                                              ; preds = %235
  %255 = load i64, i64* %14, align 8
  %256 = load i32, i32* @REGBUF_STANDARD, align 4
  %257 = call i32 @XLogRegisterBuffer(i32 2, i64 %255, i32 %256)
  %258 = bitcast i64* %98 to i8*
  %259 = load i32, i32* %26, align 4
  %260 = sext i32 %259 to i64
  %261 = mul i64 %260, 8
  %262 = trunc i64 %261 to i32
  %263 = call i32 @XLogRegisterBufData(i32 2, i8* %258, i32 %262)
  %264 = load i32, i32* @RM_HASH_ID, align 4
  %265 = load i32, i32* @XLOG_HASH_MOVE_PAGE_CONTENTS, align 4
  %266 = call i32 @XLogInsert(i32 %264, i32 %265)
  store i32 %266, i32* %35, align 4
  %267 = load i64, i64* %13, align 8
  %268 = call i32 @BufferGetPage(i64 %267)
  %269 = load i32, i32* %35, align 4
  %270 = call i32 @PageSetLSN(i32 %268, i32 %269)
  %271 = load i64, i64* %14, align 8
  %272 = call i32 @BufferGetPage(i64 %271)
  %273 = load i32, i32* %35, align 4
  %274 = call i32 @PageSetLSN(i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %254, %187
  %276 = call i32 (...) @END_CRIT_SECTION()
  store i32 1, i32* %34, align 4
  br label %277

277:                                              ; preds = %275, %171
  %278 = load i32, i32* %30, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load i64, i64* %13, align 8
  %282 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %283 = call i32 @LockBuffer(i64 %281, i32 %282)
  br label %288

284:                                              ; preds = %277
  %285 = load i32, i32* %6, align 4
  %286 = load i64, i64* %13, align 8
  %287 = call i32 @_hash_relbuf(i32 %285, i64 %286)
  br label %288

288:                                              ; preds = %284, %280
  %289 = load i64, i64* %12, align 8
  %290 = load i64, i64* %11, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %296

292:                                              ; preds = %288
  %293 = load i32, i32* %6, align 4
  %294 = load i64, i64* %14, align 8
  %295 = call i32 @_hash_relbuf(i32 %293, i64 %294)
  store i32 1, i32* %37, align 4
  br label %413

296:                                              ; preds = %288
  %297 = load i64, i64* %33, align 8
  store i64 %297, i64* %13, align 8
  %298 = load i64, i64* %13, align 8
  %299 = call i32 @BufferGetPage(i64 %298)
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* %15, align 4
  %301 = call i64 @PageGetSpecialPointer(i32 %300)
  %302 = inttoptr i64 %301 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %302, %struct.TYPE_4__** %17, align 8
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* %7, align 8
  %307 = icmp eq i64 %305, %306
  %308 = zext i1 %307 to i32
  %309 = call i32 @Assert(i32 %308)
  store i32 0, i32* %30, align 4
  store i32 0, i32* %29, align 4
  br label %310

310:                                              ; preds = %320, %296
  %311 = load i32, i32* %29, align 4
  %312 = load i32, i32* %27, align 4
  %313 = icmp slt i32 %311, %312
  br i1 %313, label %314, label %323

314:                                              ; preds = %310
  %315 = load i32, i32* %29, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %101, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @pfree(i64 %318)
  br label %320

320:                                              ; preds = %314
  %321 = load i32, i32* %29, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %29, align 4
  br label %310

323:                                              ; preds = %310
  store i32 0, i32* %27, align 4
  store i64 0, i64* %28, align 8
  store i32 0, i32* %26, align 4
  %324 = load i32, i32* %34, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  br label %108

327:                                              ; preds = %323
  br label %133

328:                                              ; preds = %133
  %329 = load i64, i64* %19, align 8
  %330 = load i32, i32* %26, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %26, align 4
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i64, i64* %98, i64 %332
  store i64 %329, i64* %333, align 8
  %334 = load i64, i64* %31, align 8
  %335 = call i64 @CopyIndexTuple(i64 %334)
  %336 = load i32, i32* %27, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i64, i64* %101, i64 %337
  store i64 %335, i64* %338, align 8
  %339 = load i64, i64* %32, align 8
  %340 = load i32, i32* %27, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %27, align 4
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i64, i64* %104, i64 %342
  store i64 %339, i64* %343, align 8
  %344 = load i64, i64* %32, align 8
  %345 = load i64, i64* %28, align 8
  %346 = add nsw i64 %345, %344
  store i64 %346, i64* %28, align 8
  br label %347

347:                                              ; preds = %328, %122
  %348 = load i64, i64* %19, align 8
  %349 = call i64 @OffsetNumberNext(i64 %348)
  store i64 %349, i64* %19, align 8
  br label %112

350:                                              ; preds = %112
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %12, align 8
  %354 = load i64, i64* %12, align 8
  %355 = call i32 @BlockNumberIsValid(i64 %354)
  %356 = call i32 @Assert(i32 %355)
  %357 = load i32, i32* %6, align 4
  %358 = load i64, i64* %9, align 8
  %359 = load i64, i64* %14, align 8
  %360 = load i64, i64* %13, align 8
  %361 = load i32, i32* %27, align 4
  %362 = load i32, i32* %10, align 4
  %363 = call i32 @_hash_freeovflpage(i32 %357, i64 %358, i64 %359, i64 %360, i64* %101, i64* %107, i64* %104, i32 %361, i32 %362)
  store i32 0, i32* %29, align 4
  br label %364

364:                                              ; preds = %374, %350
  %365 = load i32, i32* %29, align 4
  %366 = load i32, i32* %27, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %377

368:                                              ; preds = %364
  %369 = load i32, i32* %29, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i64, i64* %101, i64 %370
  %372 = load i64, i64* %371, align 8
  %373 = call i32 @pfree(i64 %372)
  br label %374

374:                                              ; preds = %368
  %375 = load i32, i32* %29, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %29, align 4
  br label %364

377:                                              ; preds = %364
  %378 = load i64, i64* %12, align 8
  %379 = load i64, i64* %11, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %394

381:                                              ; preds = %377
  %382 = load i64, i64* %11, align 8
  %383 = load i64, i64* %8, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %389

385:                                              ; preds = %381
  %386 = load i64, i64* %13, align 8
  %387 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %388 = call i32 @LockBuffer(i64 %386, i32 %387)
  br label %393

389:                                              ; preds = %381
  %390 = load i32, i32* %6, align 4
  %391 = load i64, i64* %13, align 8
  %392 = call i32 @_hash_relbuf(i32 %390, i64 %391)
  br label %393

393:                                              ; preds = %389, %385
  store i32 1, i32* %37, align 4
  br label %413

394:                                              ; preds = %377
  %395 = load i32, i32* %6, align 4
  %396 = load i64, i64* %12, align 8
  %397 = load i32, i32* @HASH_WRITE, align 4
  %398 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %399 = load i32, i32* %10, align 4
  %400 = call i64 @_hash_getbuf_with_strategy(i32 %395, i64 %396, i32 %397, i32 %398, i32 %399)
  store i64 %400, i64* %14, align 8
  %401 = load i64, i64* %14, align 8
  %402 = call i32 @BufferGetPage(i64 %401)
  store i32 %402, i32* %16, align 4
  %403 = load i32, i32* %16, align 4
  %404 = call i64 @PageGetSpecialPointer(i32 %403)
  %405 = inttoptr i64 %404 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %405, %struct.TYPE_4__** %18, align 8
  %406 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* %7, align 8
  %410 = icmp eq i64 %408, %409
  %411 = zext i1 %410 to i32
  %412 = call i32 @Assert(i32 %411)
  store i32 0, i32* %37, align 4
  br label %413

413:                                              ; preds = %394, %393, %292
  %414 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %414)
  %415 = load i32, i32* %37, align 4
  switch i32 %415, label %418 [
    i32 0, label %416
    i32 1, label %417
  ]

416:                                              ; preds = %413
  br label %94

417:                                              ; preds = %413, %50
  ret void

418:                                              ; preds = %413
  unreachable
}

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @BlockNumberIsValid(i64) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @_hash_relbuf(i32, i64) #1

declare dso_local i64 @_hash_getbuf_with_strategy(i32, i64, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @ItemIdIsDead(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @IndexTupleSize(i64) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i64 @PageGetFreeSpaceForMultipleTuples(i32, i32) #1

declare dso_local i32 @PageIsEmpty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogEnsureRecordSpace(i32, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @_hash_pgaddmultitup(i32, i64, i64*, i64*, i32) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i32 @PageIndexMultiDelete(i32, i64*, i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @pfree(i64) #1

declare dso_local i64 @CopyIndexTuple(i64) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @_hash_freeovflpage(i32, i64, i64, i64, i64*, i64*, i64*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
