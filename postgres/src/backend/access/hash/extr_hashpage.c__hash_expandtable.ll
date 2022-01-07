; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_expandtable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashpage.c__hash_expandtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { double, i32, i32, i32, i32, i64*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@LH_META_PAGE = common dso_local global i32 0, align 4
@LH_BUCKET_PAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@LH_BUCKET_BEING_SPLIT = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4
@LH_BUCKET_BEING_POPULATED = common dso_local global i32 0, align 4
@HASHO_PAGE_ID = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@XLH_SPLIT_META_UPDATE_MASKS = common dso_local global i32 0, align 4
@XLH_SPLIT_META_UPDATE_SPLITPOINT = common dso_local global i32 0, align 4
@SizeOfHashSplitAllocPage = common dso_local global i32 0, align 4
@RM_HASH_ID = common dso_local global i32 0, align 4
@XLOG_HASH_SPLIT_ALLOCATE_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hash_expandtable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_8__, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %25

25:                                               ; preds = %117, %86, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %28 = call i32 @LockBuffer(i32 %26, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @LH_META_PAGE, align 4
  %32 = call i32 @_hash_checkpage(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @BufferGetPage(i32 %33)
  %35 = call %struct.TYPE_10__* @HashPageGetMeta(i32 %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to double
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = sitofp i32 %46 to double
  %48 = fmul double %42, %47
  %49 = fcmp ole double %38, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %25
  br label %392

51:                                               ; preds = %25
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 2147483646
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %392

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %62, %65
  store i32 %66, i32* %6, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @BUCKET_TO_BLKNO(%struct.TYPE_10__* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %73 = call i32 @_hash_getbuf_with_condlock_cleanup(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %57
  br label %392

77:                                               ; preds = %57
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @BufferGetPage(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i64 @PageGetSpecialPointer(i32 %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %15, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %84 = call i64 @H_BUCKET_BEING_SPLIT(%struct.TYPE_9__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %77
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %17, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %18, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %98 = call i32 @LockBuffer(i32 %96, i32 %97)
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %101 = call i32 @LockBuffer(i32 %99, i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @_hash_finish_split(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @_hash_dropbuf(i32 %110, i32 %111)
  br label %25

113:                                              ; preds = %77
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %115 = call i64 @H_NEEDS_SPLIT_CLEANUP(%struct.TYPE_9__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %113
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %17, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %18, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %129 = call i32 @LockBuffer(i32 %127, i32 %128)
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @hashbucketcleanup(i32 %130, i32 %131, i32 %132, i32 %133, i32* null, i32 %134, i32 %135, i32 %136, i32* null, i32* null, i32 1, i32* null, i32* null)
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @_hash_dropbuf(i32 %138, i32 %139)
  br label %25

141:                                              ; preds = %113
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @BUCKET_TO_BLKNO(%struct.TYPE_10__* %142, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  %147 = call i32 @_hash_spareindex(i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %148, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %141
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  %159 = icmp eq i32 %154, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @Assert(i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @_hash_get_totalbuckets(i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %22, align 4
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %22, align 4
  %169 = call i32 @_hash_alloc_buckets(i32 %166, i32 %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %153
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @_hash_relbuf(i32 %172, i32 %173)
  br label %392

175:                                              ; preds = %153
  br label %176

176:                                              ; preds = %175, %141
  %177 = load i32, i32* %3, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @MAIN_FORKNUM, align 4
  %180 = call i32 @_hash_getnewbuf(i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @IsBufferCleanupOK(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %176
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @_hash_relbuf(i32 %185, i32 %186)
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @_hash_relbuf(i32 %188, i32 %189)
  br label %392

191:                                              ; preds = %176
  %192 = call i32 (...) @START_CRIT_SECTION()
  %193 = load i32, i32* %7, align 4
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %196, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %191
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %207, %210
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 8
  store i32 1, i32* %20, align 4
  br label %214

214:                                              ; preds = %201, %191
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = icmp sgt i32 %215, %218
  br i1 %219, label %220, label %239

220:                                              ; preds = %214
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 5
  %223 = load i64*, i64** %222, align 8
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i64, i64* %223, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 5
  %232 = load i64*, i64** %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64, i64* %232, i64 %234
  store i64 %229, i64* %235, align 8
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 4
  store i32 1, i32* %21, align 4
  br label %239

239:                                              ; preds = %220, %214
  %240 = load i32, i32* %4, align 4
  %241 = call i32 @MarkBufferDirty(i32 %240)
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  store i32 %244, i32* %17, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %18, align 4
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* %12, align 4
  %252 = call i32 @BufferGetPage(i32 %251)
  store i32 %252, i32* %13, align 4
  %253 = load i32, i32* %13, align 4
  %254 = call i64 @PageGetSpecialPointer(i32 %253)
  %255 = inttoptr i64 %254 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %255, %struct.TYPE_9__** %15, align 8
  %256 = load i32, i32* @LH_BUCKET_BEING_SPLIT, align 4
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  %261 = load i32, i32* %17, align 4
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %12, align 4
  %265 = call i32 @MarkBufferDirty(i32 %264)
  %266 = load i32, i32* %11, align 4
  %267 = call i32 @BufferGetPage(i32 %266)
  store i32 %267, i32* %14, align 4
  %268 = load i32, i32* %14, align 4
  %269 = call i64 @PageGetSpecialPointer(i32 %268)
  %270 = inttoptr i64 %269 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %270, %struct.TYPE_9__** %16, align 8
  %271 = load i32, i32* %17, align 4
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* @InvalidBlockNumber, align 4
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 4
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %281 = load i32, i32* @LH_BUCKET_BEING_POPULATED, align 4
  %282 = or i32 %280, %281
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 4
  %285 = load i32, i32* @HASHO_PAGE_ID, align 4
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @MarkBufferDirty(i32 %288)
  %290 = load i32, i32* %3, align 4
  %291 = call i64 @RelationNeedsWAL(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %371

293:                                              ; preds = %239
  %294 = load i32, i32* %17, align 4
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %294, i32* %295, align 4
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %298, i32* %299, align 4
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store i32 %302, i32* %303, align 4
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  store i32 0, i32* %304, align 4
  %305 = call i32 (...) @XLogBeginInsert()
  %306 = load i32, i32* %12, align 4
  %307 = load i32, i32* @REGBUF_STANDARD, align 4
  %308 = call i32 @XLogRegisterBuffer(i32 0, i32 %306, i32 %307)
  %309 = load i32, i32* %11, align 4
  %310 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %311 = call i32 @XLogRegisterBuffer(i32 1, i32 %309, i32 %310)
  %312 = load i32, i32* %4, align 4
  %313 = load i32, i32* @REGBUF_STANDARD, align 4
  %314 = call i32 @XLogRegisterBuffer(i32 2, i32 %312, i32 %313)
  %315 = load i32, i32* %20, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %330

317:                                              ; preds = %293
  %318 = load i32, i32* @XLH_SPLIT_META_UPDATE_MASKS, align 4
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %318
  store i32 %321, i32* %319, align 4
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 2
  %324 = bitcast i32* %323 to i8*
  %325 = call i32 @XLogRegisterBufData(i32 2, i8* %324, i32 4)
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 3
  %328 = bitcast i32* %327 to i8*
  %329 = call i32 @XLogRegisterBufData(i32 2, i8* %328, i32 4)
  br label %330

330:                                              ; preds = %317, %293
  %331 = load i32, i32* %21, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %352

333:                                              ; preds = %330
  %334 = load i32, i32* @XLH_SPLIT_META_UPDATE_SPLITPOINT, align 4
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = or i32 %336, %334
  store i32 %337, i32* %335, align 4
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 4
  %340 = bitcast i32* %339 to i8*
  %341 = call i32 @XLogRegisterBufData(i32 2, i8* %340, i32 4)
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 5
  %344 = load i64*, i64** %343, align 8
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64, i64* %344, i64 %348
  %350 = bitcast i64* %349 to i8*
  %351 = call i32 @XLogRegisterBufData(i32 2, i8* %350, i32 4)
  br label %352

352:                                              ; preds = %333, %330
  %353 = bitcast %struct.TYPE_8__* %23 to i8*
  %354 = load i32, i32* @SizeOfHashSplitAllocPage, align 4
  %355 = call i32 @XLogRegisterData(i8* %353, i32 %354)
  %356 = load i32, i32* @RM_HASH_ID, align 4
  %357 = load i32, i32* @XLOG_HASH_SPLIT_ALLOCATE_PAGE, align 4
  %358 = call i32 @XLogInsert(i32 %356, i32 %357)
  store i32 %358, i32* %24, align 4
  %359 = load i32, i32* %12, align 4
  %360 = call i32 @BufferGetPage(i32 %359)
  %361 = load i32, i32* %24, align 4
  %362 = call i32 @PageSetLSN(i32 %360, i32 %361)
  %363 = load i32, i32* %11, align 4
  %364 = call i32 @BufferGetPage(i32 %363)
  %365 = load i32, i32* %24, align 4
  %366 = call i32 @PageSetLSN(i32 %364, i32 %365)
  %367 = load i32, i32* %4, align 4
  %368 = call i32 @BufferGetPage(i32 %367)
  %369 = load i32, i32* %24, align 4
  %370 = call i32 @PageSetLSN(i32 %368, i32 %369)
  br label %371

371:                                              ; preds = %352, %239
  %372 = call i32 (...) @END_CRIT_SECTION()
  %373 = load i32, i32* %4, align 4
  %374 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %375 = call i32 @LockBuffer(i32 %373, i32 %374)
  %376 = load i32, i32* %3, align 4
  %377 = load i32, i32* %4, align 4
  %378 = load i32, i32* %6, align 4
  %379 = load i32, i32* %7, align 4
  %380 = load i32, i32* %12, align 4
  %381 = load i32, i32* %11, align 4
  %382 = load i32, i32* %17, align 4
  %383 = load i32, i32* %18, align 4
  %384 = load i32, i32* %19, align 4
  %385 = call i32 @_hash_splitbucket(i32 %376, i32 %377, i32 %378, i32 %379, i32 %380, i32 %381, i32* null, i32 %382, i32 %383, i32 %384)
  %386 = load i32, i32* %3, align 4
  %387 = load i32, i32* %12, align 4
  %388 = call i32 @_hash_dropbuf(i32 %386, i32 %387)
  %389 = load i32, i32* %3, align 4
  %390 = load i32, i32* %11, align 4
  %391 = call i32 @_hash_dropbuf(i32 %389, i32 %390)
  br label %396

392:                                              ; preds = %184, %171, %76, %56, %50
  %393 = load i32, i32* %4, align 4
  %394 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %395 = call i32 @LockBuffer(i32 %393, i32 %394)
  br label %396

396:                                              ; preds = %392, %371
  ret void
}

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @_hash_checkpage(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @HashPageGetMeta(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @BUCKET_TO_BLKNO(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @_hash_getbuf_with_condlock_cleanup(i32, i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @H_BUCKET_BEING_SPLIT(%struct.TYPE_9__*) #1

declare dso_local i32 @_hash_finish_split(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_hash_dropbuf(i32, i32) #1

declare dso_local i64 @H_NEEDS_SPLIT_CLEANUP(%struct.TYPE_9__*) #1

declare dso_local i32 @hashbucketcleanup(i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @_hash_spareindex(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @_hash_get_totalbuckets(i32) #1

declare dso_local i32 @_hash_alloc_buckets(i32, i32, i32) #1

declare dso_local i32 @_hash_relbuf(i32, i32) #1

declare dso_local i32 @_hash_getnewbuf(i32, i32, i32) #1

declare dso_local i32 @IsBufferCleanupOK(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @_hash_splitbucket(i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
