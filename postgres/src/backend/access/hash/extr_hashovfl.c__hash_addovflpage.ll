; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashovfl.c__hash_addovflpage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashovfl.c__hash_addovflpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i32, i8** }
%struct.TYPE_9__ = type { i32, i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@LH_BUCKET_PAGE = common dso_local global i32 0, align 4
@LH_OVERFLOW_PAGE = common dso_local global i32 0, align 4
@LH_PAGE_TYPE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@HASH_WRITE = common dso_local global i32 0, align 4
@LH_META_PAGE = common dso_local global i32 0, align 4
@BITS_PER_MAP = common dso_local global i32 0, align 4
@LH_BITMAP_PAGE = common dso_local global i32 0, align 4
@ALL_SET = common dso_local global i32 0, align 4
@HASH_MAX_BITMAPS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"out of overflow pages in hash index \22%s\22\00", align 1
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i8* null, align 8
@HASHO_PAGE_ID = common dso_local global i32 0, align 4
@SizeOfHashAddOvflPage = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HASH_ID = common dso_local global i32 0, align 4
@XLOG_HASH_ADD_OVFL_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_addovflpage(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %36 = load i32, i32* @InvalidBuffer, align 4
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @InvalidBuffer, align 4
  store i32 %37, i32* %16, align 4
  store i32* null, i32** %20, align 8
  store i32 0, i32* %29, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %40 = call i32 @LockBuffer(i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %44 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @_hash_checkpage(i32 %41, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %80, %4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @BufferGetPage(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @PageGetSpecialPointer(i32 %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %12, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %30, align 8
  %56 = load i8*, i8** %30, align 8
  %57 = call i32 @BlockNumberIsValid(i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  br label %86

60:                                               ; preds = %47
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @LH_PAGE_TYPE, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %75 = call i32 @LockBuffer(i32 %73, i32 %74)
  br label %80

76:                                               ; preds = %60
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @_hash_relbuf(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %63
  store i32 0, i32* %8, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i8*, i8** %30, align 8
  %83 = load i32, i32* @HASH_WRITE, align 4
  %84 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %85 = call i32 @_hash_getbuf(i32 %81, i8* %82, i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %47

86:                                               ; preds = %59
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %89 = call i32 @LockBuffer(i32 %87, i32 %88)
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @LH_META_PAGE, align 4
  %93 = call i32 @_hash_checkpage(i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @BufferGetPage(i32 %94)
  %96 = call %struct.TYPE_11__* @HashPageGetMeta(i32 %95)
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %14, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %102 = call i32 @BMPG_SHIFT(%struct.TYPE_11__* %101)
  %103 = ashr i32 %100, %102
  store i32 %103, i32* %24, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %106 = call i32 @BMPG_MASK(%struct.TYPE_11__* %105)
  %107 = and i32 %104, %106
  store i32 %107, i32* %22, align 4
  %108 = load i32, i32* %24, align 4
  store i32 %108, i32* %27, align 4
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* @BITS_PER_MAP, align 4
  %111 = sdiv i32 %109, %110
  store i32 %111, i32* %28, align 4
  %112 = load i32, i32* @BITS_PER_MAP, align 4
  %113 = sub nsw i32 %112, 1
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %22, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %22, align 4
  br label %117

117:                                              ; preds = %224, %86
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %19, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %21, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %131 = call i32 @BMPG_SHIFT(%struct.TYPE_11__* %130)
  %132 = ashr i32 %129, %131
  store i32 %132, i32* %26, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %135 = call i32 @BMPG_MASK(%struct.TYPE_11__* %134)
  %136 = and i32 %133, %135
  store i32 %136, i32* %25, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %26, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %117
  br label %234

141:                                              ; preds = %117
  %142 = load i32, i32* %27, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @Assert(i32 %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 5
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %27, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %31, align 8
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %26, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %141
  %160 = load i32, i32* %25, align 4
  store i32 %160, i32* %33, align 4
  br label %165

161:                                              ; preds = %141
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %163 = call i32 @BMPGSZ_BIT(%struct.TYPE_11__* %162)
  %164 = sub nsw i32 %163, 1
  store i32 %164, i32* %33, align 4
  br label %165

165:                                              ; preds = %161, %159
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %168 = call i32 @LockBuffer(i32 %166, i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = load i8*, i8** %31, align 8
  %171 = load i32, i32* @HASH_WRITE, align 4
  %172 = load i32, i32* @LH_BITMAP_PAGE, align 4
  %173 = call i32 @_hash_getbuf(i32 %169, i8* %170, i32 %171, i32 %172)
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @BufferGetPage(i32 %174)
  store i32 %175, i32* %32, align 4
  %176 = load i32, i32* %32, align 4
  %177 = call i32* @HashPageGetBitmap(i32 %176)
  store i32* %177, i32** %20, align 8
  br label %178

178:                                              ; preds = %218, %165
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %33, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %182, label %224

182:                                              ; preds = %178
  %183 = load i32*, i32** %20, align 8
  %184 = load i32, i32* %28, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @ALL_SET, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %217

190:                                              ; preds = %182
  store i32 1, i32* %29, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %193 = call i32 @LockBuffer(i32 %191, i32 %192)
  %194 = load i32*, i32** %20, align 8
  %195 = load i32, i32* %28, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @_hash_firstfreebit(i32 %198)
  %200 = load i32, i32* %22, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %201, %199
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %22, align 4
  %204 = load i32, i32* %22, align 4
  store i32 %204, i32* %23, align 4
  %205 = load i32, i32* %27, align 4
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %207 = call i32 @BMPG_SHIFT(%struct.TYPE_11__* %206)
  %208 = shl i32 %205, %207
  %209 = load i32, i32* %22, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %22, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %212 = load i32, i32* %22, align 4
  %213 = call i8* @bitno_to_blkno(%struct.TYPE_11__* %211, i32 %212)
  store i8* %213, i8** %17, align 8
  %214 = load i32, i32* %5, align 4
  %215 = load i8*, i8** %17, align 8
  %216 = call i32 @_hash_getinitbuf(i32 %214, i8* %215)
  store i32 %216, i32* %9, align 4
  br label %299

217:                                              ; preds = %182
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %28, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %28, align 4
  %221 = load i32, i32* @BITS_PER_MAP, align 4
  %222 = load i32, i32* %22, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %22, align 4
  br label %178

224:                                              ; preds = %178
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* %15, align 4
  %227 = call i32 @_hash_relbuf(i32 %225, i32 %226)
  %228 = load i32, i32* @InvalidBuffer, align 4
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %27, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %22, align 4
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %233 = call i32 @LockBuffer(i32 %231, i32 %232)
  br label %117

234:                                              ; preds = %140
  %235 = load i32, i32* %25, align 4
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %237 = call i32 @BMPGSZ_BIT(%struct.TYPE_11__* %236)
  %238 = sub nsw i32 %237, 1
  %239 = icmp eq i32 %235, %238
  br i1 %239, label %240, label %268

240:                                              ; preds = %234
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %22, align 4
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @HASH_MAX_BITMAPS, align 4
  %252 = icmp sge i32 %250, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %240
  %254 = load i32, i32* @ERROR, align 4
  %255 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %256 = call i32 @errcode(i32 %255)
  %257 = load i32, i32* %5, align 4
  %258 = call i32 @RelationGetRelationName(i32 %257)
  %259 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %258)
  %260 = call i32 @ereport(i32 %254, i32 %259)
  br label %261

261:                                              ; preds = %253, %240
  %262 = load i32, i32* %5, align 4
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %264 = load i32, i32* %22, align 4
  %265 = call i8* @bitno_to_blkno(%struct.TYPE_11__* %263, i32 %264)
  %266 = load i32, i32* @MAIN_FORKNUM, align 4
  %267 = call i32 @_hash_getnewbuf(i32 %262, i8* %265, i32 %266)
  store i32 %267, i32* %16, align 4
  br label %269

268:                                              ; preds = %234
  br label %269

269:                                              ; preds = %268, %261
  %270 = load i32, i32* %16, align 4
  %271 = call i32 @BufferIsValid(i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %269
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %19, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, 1
  br label %290

282:                                              ; preds = %269
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %19, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  br label %290

290:                                              ; preds = %282, %273
  %291 = phi i32 [ %281, %273 ], [ %289, %282 ]
  store i32 %291, i32* %22, align 4
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %293 = load i32, i32* %22, align 4
  %294 = call i8* @bitno_to_blkno(%struct.TYPE_11__* %292, i32 %293)
  store i8* %294, i8** %17, align 8
  %295 = load i32, i32* %5, align 4
  %296 = load i8*, i8** %17, align 8
  %297 = load i32, i32* @MAIN_FORKNUM, align 4
  %298 = call i32 @_hash_getnewbuf(i32 %295, i8* %296, i32 %297)
  store i32 %298, i32* %9, align 4
  br label %299

299:                                              ; preds = %290, %190
  %300 = call i32 (...) @START_CRIT_SECTION()
  %301 = load i32, i32* %29, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %299
  %304 = load i32, i32* %15, align 4
  %305 = call i32 @BufferIsValid(i32 %304)
  %306 = call i32 @Assert(i32 %305)
  %307 = load i32*, i32** %20, align 8
  %308 = load i32, i32* %23, align 4
  %309 = call i32 @SETBIT(i32* %307, i32 %308)
  %310 = load i32, i32* %15, align 4
  %311 = call i32 @MarkBufferDirty(i32 %310)
  br label %357

312:                                              ; preds = %299
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 4
  %321 = load i32, i32* %16, align 4
  %322 = call i32 @BufferIsValid(i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %354

324:                                              ; preds = %312
  %325 = load i32, i32* %16, align 4
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @_hash_initbitmapbuffer(i32 %325, i32 %328, i32 0)
  %330 = load i32, i32* %16, align 4
  %331 = call i32 @MarkBufferDirty(i32 %330)
  %332 = load i32, i32* %16, align 4
  %333 = call i8* @BufferGetBlockNumber(i32 %332)
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i32 0, i32 5
  %336 = load i8**, i8*** %335, align 8
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %336, i64 %340
  store i8* %333, i8** %341, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %343, align 8
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 2
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %19, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %324, %312
  %355 = load i32, i32* %6, align 4
  %356 = call i32 @MarkBufferDirty(i32 %355)
  br label %357

357:                                              ; preds = %354, %303
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* %18, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %370

363:                                              ; preds = %357
  %364 = load i32, i32* %22, align 4
  %365 = add nsw i32 %364, 1
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 0
  store i32 %365, i32* %367, align 8
  %368 = load i32, i32* %6, align 4
  %369 = call i32 @MarkBufferDirty(i32 %368)
  br label %370

370:                                              ; preds = %363, %357
  %371 = load i32, i32* %9, align 4
  %372 = call i32 @BufferGetPage(i32 %371)
  store i32 %372, i32* %11, align 4
  %373 = load i32, i32* %11, align 4
  %374 = call i64 @PageGetSpecialPointer(i32 %373)
  %375 = inttoptr i64 %374 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %375, %struct.TYPE_10__** %13, align 8
  %376 = load i32, i32* %7, align 4
  %377 = call i8* @BufferGetBlockNumber(i32 %376)
  %378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 4
  store i8* %377, i8** %379, align 8
  %380 = load i8*, i8** @InvalidBlockNumber, align 8
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 2
  store i8* %380, i8** %382, align 8
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  store i32 %388, i32* %390, align 8
  %391 = load i32, i32* @HASHO_PAGE_ID, align 4
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 8
  %394 = load i32, i32* %9, align 4
  %395 = call i32 @MarkBufferDirty(i32 %394)
  %396 = load i32, i32* %9, align 4
  %397 = call i8* @BufferGetBlockNumber(i32 %396)
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 2
  store i8* %397, i8** %399, align 8
  %400 = load i32, i32* %7, align 4
  %401 = call i32 @MarkBufferDirty(i32 %400)
  %402 = load i32, i32* %5, align 4
  %403 = call i64 @RelationNeedsWAL(i32 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %484

405:                                              ; preds = %370
  %406 = load i32, i32* %29, align 4
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %406, i32* %407, align 4
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 4
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store i32 %410, i32* %411, align 4
  %412 = call i32 (...) @XLogBeginInsert()
  %413 = bitcast %struct.TYPE_9__* %35 to i8*
  %414 = load i32, i32* @SizeOfHashAddOvflPage, align 4
  %415 = call i32 @XLogRegisterData(i8* %413, i32 %414)
  %416 = load i32, i32* %9, align 4
  %417 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %418 = call i32 @XLogRegisterBuffer(i32 0, i32 %416, i32 %417)
  %419 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 1
  %421 = bitcast i32* %420 to i8*
  %422 = call i32 @XLogRegisterBufData(i32 0, i8* %421, i32 4)
  %423 = load i32, i32* %7, align 4
  %424 = load i32, i32* @REGBUF_STANDARD, align 4
  %425 = call i32 @XLogRegisterBuffer(i32 1, i32 %423, i32 %424)
  %426 = load i32, i32* %15, align 4
  %427 = call i32 @BufferIsValid(i32 %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %435

429:                                              ; preds = %405
  %430 = load i32, i32* %15, align 4
  %431 = load i32, i32* @REGBUF_STANDARD, align 4
  %432 = call i32 @XLogRegisterBuffer(i32 2, i32 %430, i32 %431)
  %433 = bitcast i32* %23 to i8*
  %434 = call i32 @XLogRegisterBufData(i32 2, i8* %433, i32 4)
  br label %435

435:                                              ; preds = %429, %405
  %436 = load i32, i32* %16, align 4
  %437 = call i32 @BufferIsValid(i32 %436)
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %435
  %440 = load i32, i32* %16, align 4
  %441 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %442 = call i32 @XLogRegisterBuffer(i32 3, i32 %440, i32 %441)
  br label %443

443:                                              ; preds = %439, %435
  %444 = load i32, i32* %6, align 4
  %445 = load i32, i32* @REGBUF_STANDARD, align 4
  %446 = call i32 @XLogRegisterBuffer(i32 4, i32 %444, i32 %445)
  %447 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 0
  %449 = bitcast i32* %448 to i8*
  %450 = call i32 @XLogRegisterBufData(i32 4, i8* %449, i32 4)
  %451 = load i32, i32* @RM_HASH_ID, align 4
  %452 = load i32, i32* @XLOG_HASH_ADD_OVFL_PAGE, align 4
  %453 = call i32 @XLogInsert(i32 %451, i32 %452)
  store i32 %453, i32* %34, align 4
  %454 = load i32, i32* %9, align 4
  %455 = call i32 @BufferGetPage(i32 %454)
  %456 = load i32, i32* %34, align 4
  %457 = call i32 @PageSetLSN(i32 %455, i32 %456)
  %458 = load i32, i32* %7, align 4
  %459 = call i32 @BufferGetPage(i32 %458)
  %460 = load i32, i32* %34, align 4
  %461 = call i32 @PageSetLSN(i32 %459, i32 %460)
  %462 = load i32, i32* %15, align 4
  %463 = call i32 @BufferIsValid(i32 %462)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %443
  %466 = load i32, i32* %15, align 4
  %467 = call i32 @BufferGetPage(i32 %466)
  %468 = load i32, i32* %34, align 4
  %469 = call i32 @PageSetLSN(i32 %467, i32 %468)
  br label %470

470:                                              ; preds = %465, %443
  %471 = load i32, i32* %16, align 4
  %472 = call i32 @BufferIsValid(i32 %471)
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %479

474:                                              ; preds = %470
  %475 = load i32, i32* %16, align 4
  %476 = call i32 @BufferGetPage(i32 %475)
  %477 = load i32, i32* %34, align 4
  %478 = call i32 @PageSetLSN(i32 %476, i32 %477)
  br label %479

479:                                              ; preds = %474, %470
  %480 = load i32, i32* %6, align 4
  %481 = call i32 @BufferGetPage(i32 %480)
  %482 = load i32, i32* %34, align 4
  %483 = call i32 @PageSetLSN(i32 %481, i32 %482)
  br label %484

484:                                              ; preds = %479, %370
  %485 = call i32 (...) @END_CRIT_SECTION()
  %486 = load i32, i32* %8, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %492

488:                                              ; preds = %484
  %489 = load i32, i32* %7, align 4
  %490 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %491 = call i32 @LockBuffer(i32 %489, i32 %490)
  br label %496

492:                                              ; preds = %484
  %493 = load i32, i32* %5, align 4
  %494 = load i32, i32* %7, align 4
  %495 = call i32 @_hash_relbuf(i32 %493, i32 %494)
  br label %496

496:                                              ; preds = %492, %488
  %497 = load i32, i32* %15, align 4
  %498 = call i32 @BufferIsValid(i32 %497)
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %504

500:                                              ; preds = %496
  %501 = load i32, i32* %5, align 4
  %502 = load i32, i32* %15, align 4
  %503 = call i32 @_hash_relbuf(i32 %501, i32 %502)
  br label %504

504:                                              ; preds = %500, %496
  %505 = load i32, i32* %6, align 4
  %506 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %507 = call i32 @LockBuffer(i32 %505, i32 %506)
  %508 = load i32, i32* %16, align 4
  %509 = call i32 @BufferIsValid(i32 %508)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %515

511:                                              ; preds = %504
  %512 = load i32, i32* %5, align 4
  %513 = load i32, i32* %16, align 4
  %514 = call i32 @_hash_relbuf(i32 %512, i32 %513)
  br label %515

515:                                              ; preds = %511, %504
  %516 = load i32, i32* %9, align 4
  ret i32 %516
}

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @_hash_checkpage(i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @BlockNumberIsValid(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @_hash_relbuf(i32, i32) #1

declare dso_local i32 @_hash_getbuf(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @HashPageGetMeta(i32) #1

declare dso_local i32 @BMPG_SHIFT(%struct.TYPE_11__*) #1

declare dso_local i32 @BMPG_MASK(%struct.TYPE_11__*) #1

declare dso_local i32 @BMPGSZ_BIT(%struct.TYPE_11__*) #1

declare dso_local i32* @HashPageGetBitmap(i32) #1

declare dso_local i64 @_hash_firstfreebit(i32) #1

declare dso_local i8* @bitno_to_blkno(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @_hash_getinitbuf(i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @_hash_getnewbuf(i32, i8*, i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @SETBIT(i32*, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @_hash_initbitmapbuffer(i32, i32, i32) #1

declare dso_local i8* @BufferGetBlockNumber(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
