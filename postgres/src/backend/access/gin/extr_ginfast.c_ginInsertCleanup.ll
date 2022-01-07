; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_ginInsertCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_ginInsertCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@GIN_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@ExclusiveLock = common dso_local global i32 0, align 4
@autovacuum_work_mem = common dso_local global i32 0, align 4
@maintenance_work_mem = common dso_local global i32 0, align 4
@work_mem = common dso_local global i64 0, align 8
@GIN_SHARE = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@GIN_UNLOCK = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"GIN insert cleanup temporary context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ginInsertCleanup(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_19__, align 8
  %20 = alloca %struct.TYPE_16__, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %5
  %38 = load i32, i32* %11, align 4
  %39 = load i64, i64* @GIN_METAPAGE_BLKNO, align 8
  %40 = load i32, i32* @ExclusiveLock, align 4
  %41 = call i32 @LockPage(i32 %38, i64 %39, i32 %40)
  %42 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @autovacuum_work_mem, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @autovacuum_work_mem, align 4
  br label %51

49:                                               ; preds = %44, %37
  %50 = load i32, i32* @maintenance_work_mem, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %25, align 8
  br label %63

54:                                               ; preds = %5
  %55 = load i32, i32* %11, align 4
  %56 = load i64, i64* @GIN_METAPAGE_BLKNO, align 8
  %57 = load i32, i32* @ExclusiveLock, align 4
  %58 = call i32 @ConditionalLockPage(i32 %55, i64 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %277

61:                                               ; preds = %54
  %62 = load i64, i64* @work_mem, align 8
  store i64 %62, i64* %25, align 8
  br label %63

63:                                               ; preds = %61, %51
  %64 = load i32, i32* %11, align 4
  %65 = load i64, i64* @GIN_METAPAGE_BLKNO, align 8
  %66 = call i32 @ReadBuffer(i32 %64, i64 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @GIN_SHARE, align 4
  %69 = call i32 @LockBuffer(i32 %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @BufferGetPage(i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call %struct.TYPE_18__* @GinPageGetMeta(i32 %72)
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %16, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @InvalidBlockNumber, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %63
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @UnlockReleaseBuffer(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i64, i64* @GIN_METAPAGE_BLKNO, align 8
  %84 = load i32, i32* @ExclusiveLock, align 4
  %85 = call i32 @UnlockPage(i32 %82, i64 %83, i32 %84)
  br label %277

86:                                               ; preds = %63
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %22, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %21, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i64, i64* %21, align 8
  %95 = call i32 @ReadBuffer(i32 %93, i64 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @GIN_SHARE, align 4
  %98 = call i32 @LockBuffer(i32 %96, i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @BufferGetPage(i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @GIN_UNLOCK, align 4
  %103 = call i32 @LockBuffer(i32 %101, i32 %102)
  %104 = load i32, i32* @CurrentMemoryContext, align 4
  %105 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %106 = call i32 @AllocSetContextCreate(i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %105)
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @MemoryContextSwitchTo(i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = call i32 @initKeyArray(%struct.TYPE_16__* %20, i32 128)
  %110 = call i32 @ginInitBA(%struct.TYPE_19__* %19)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  store %struct.TYPE_17__* %111, %struct.TYPE_17__** %112, align 8
  br label %113

113:                                              ; preds = %247, %86
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @GinPageIsDeleted(i32 %114)
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @Assert(i32 %118)
  %120 = load i64, i64* %21, align 8
  %121 = load i64, i64* %22, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %113
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1, i32* %23, align 4
  br label %127

127:                                              ; preds = %126, %123, %113
  %128 = load i32, i32* %15, align 4
  %129 = load i64, i64* @FirstOffsetNumber, align 8
  %130 = call i32 @processPendingPage(%struct.TYPE_19__* %19, %struct.TYPE_16__* %20, i32 %128, i64 %129)
  %131 = call i32 (...) @vacuum_delay_point()
  %132 = load i32, i32* %15, align 4
  %133 = call %struct.TYPE_15__* @GinPageGetOpaque(i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @InvalidBlockNumber, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %148, label %138

138:                                              ; preds = %127
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @GinPageHasFullRow(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %240

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %25, align 8
  %146 = mul nsw i64 %145, 1024
  %147 = icmp sge i64 %144, %146
  br i1 %147, label %148, label %240

148:                                              ; preds = %142, %127
  %149 = load i32, i32* %15, align 4
  %150 = call i64 @PageGetMaxOffsetNumber(i32 %149)
  store i64 %150, i64* %30, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @GIN_UNLOCK, align 4
  %153 = call i32 @LockBuffer(i32 %151, i32 %152)
  %154 = call i32 @ginBeginBAScan(%struct.TYPE_19__* %19)
  br label %155

155:                                              ; preds = %158, %148
  %156 = call i32* @ginGetBAEntry(%struct.TYPE_19__* %19, i64* %31, i32* %28, i32* %29, i32* %27)
  store i32* %156, i32** %26, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %160 = load i64, i64* %31, align 8
  %161 = load i32, i32* %28, align 4
  %162 = load i32, i32* %29, align 4
  %163 = load i32*, i32** %26, align 8
  %164 = load i32, i32* %27, align 4
  %165 = call i32 @ginEntryInsert(%struct.TYPE_17__* %159, i64 %160, i32 %161, i32 %162, i32* %163, i32 %164, i32* null)
  %166 = call i32 (...) @vacuum_delay_point()
  br label %155

167:                                              ; preds = %155
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %170 = call i32 @LockBuffer(i32 %168, i32 %169)
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* @GIN_SHARE, align 4
  %173 = call i32 @LockBuffer(i32 %171, i32 %172)
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @GinPageIsDeleted(i32 %174)
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @Assert(i32 %178)
  %180 = load i32, i32* %15, align 4
  %181 = call i64 @PageGetMaxOffsetNumber(i32 %180)
  %182 = load i64, i64* %30, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %167
  %185 = call i32 @ginInitBA(%struct.TYPE_19__* %19)
  %186 = load i32, i32* %15, align 4
  %187 = load i64, i64* %30, align 8
  %188 = add nsw i64 %187, 1
  %189 = call i32 @processPendingPage(%struct.TYPE_19__* %19, %struct.TYPE_16__* %20, i32 %186, i64 %188)
  %190 = call i32 @ginBeginBAScan(%struct.TYPE_19__* %19)
  br label %191

191:                                              ; preds = %194, %184
  %192 = call i32* @ginGetBAEntry(%struct.TYPE_19__* %19, i64* %31, i32* %28, i32* %29, i32* %27)
  store i32* %192, i32** %26, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %196 = load i64, i64* %31, align 8
  %197 = load i32, i32* %28, align 4
  %198 = load i32, i32* %29, align 4
  %199 = load i32*, i32** %26, align 8
  %200 = load i32, i32* %27, align 4
  %201 = call i32 @ginEntryInsert(%struct.TYPE_17__* %195, i64 %196, i32 %197, i32 %198, i32* %199, i32 %200, i32* null)
  br label %191

202:                                              ; preds = %191
  br label %203

203:                                              ; preds = %202, %167
  %204 = load i32, i32* %15, align 4
  %205 = call %struct.TYPE_15__* @GinPageGetOpaque(i32 %204)
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %21, align 8
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @UnlockReleaseBuffer(i32 %208)
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load i64, i64* %21, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32*, i32** %10, align 8
  %215 = call i32 @shiftList(i32 %210, i32 %211, i64 %212, i32 %213, i32* %214)
  store i32 1, i32* %24, align 4
  %216 = load i64, i64* %21, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %216, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @Assert(i32 %221)
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @GIN_UNLOCK, align 4
  %225 = call i32 @LockBuffer(i32 %223, i32 %224)
  %226 = load i64, i64* %21, align 8
  %227 = load i64, i64* @InvalidBlockNumber, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %232, label %229

229:                                              ; preds = %203
  %230 = load i32, i32* %23, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229, %203
  br label %257

233:                                              ; preds = %229
  %234 = load i32, i32* %17, align 4
  %235 = call i32 @MemoryContextReset(i32 %234)
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @initKeyArray(%struct.TYPE_16__* %20, i32 %237)
  %239 = call i32 @ginInitBA(%struct.TYPE_19__* %19)
  br label %247

240:                                              ; preds = %142, %138
  %241 = load i32, i32* %15, align 4
  %242 = call %struct.TYPE_15__* @GinPageGetOpaque(i32 %241)
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %21, align 8
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @UnlockReleaseBuffer(i32 %245)
  br label %247

247:                                              ; preds = %240, %233
  %248 = call i32 (...) @vacuum_delay_point()
  %249 = load i32, i32* %11, align 4
  %250 = load i64, i64* %21, align 8
  %251 = call i32 @ReadBuffer(i32 %249, i64 %250)
  store i32 %251, i32* %13, align 4
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @GIN_SHARE, align 4
  %254 = call i32 @LockBuffer(i32 %252, i32 %253)
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @BufferGetPage(i32 %255)
  store i32 %256, i32* %15, align 4
  br label %113

257:                                              ; preds = %232
  %258 = load i32, i32* %11, align 4
  %259 = load i64, i64* @GIN_METAPAGE_BLKNO, align 8
  %260 = load i32, i32* @ExclusiveLock, align 4
  %261 = call i32 @UnlockPage(i32 %258, i64 %259, i32 %260)
  %262 = load i32, i32* %12, align 4
  %263 = call i32 @ReleaseBuffer(i32 %262)
  %264 = load i32, i32* %24, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %257
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i32, i32* %11, align 4
  %271 = call i32 @IndexFreeSpaceMapVacuum(i32 %270)
  br label %272

272:                                              ; preds = %269, %266, %257
  %273 = load i32, i32* %18, align 4
  %274 = call i32 @MemoryContextSwitchTo(i32 %273)
  %275 = load i32, i32* %17, align 4
  %276 = call i32 @MemoryContextDelete(i32 %275)
  br label %277

277:                                              ; preds = %272, %79, %60
  ret void
}

declare dso_local i32 @LockPage(i32, i64, i32) #1

declare dso_local i64 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i32 @ConditionalLockPage(i32, i64, i32) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_18__* @GinPageGetMeta(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @UnlockPage(i32, i64, i32) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @initKeyArray(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ginInitBA(%struct.TYPE_19__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsDeleted(i32) #1

declare dso_local i32 @processPendingPage(%struct.TYPE_19__*, %struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local %struct.TYPE_15__* @GinPageGetOpaque(i32) #1

declare dso_local i64 @GinPageHasFullRow(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @ginBeginBAScan(%struct.TYPE_19__*) #1

declare dso_local i32* @ginGetBAEntry(%struct.TYPE_19__*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @ginEntryInsert(%struct.TYPE_17__*, i64, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @shiftList(i32, i32, i64, i32, i32*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @IndexFreeSpaceMapVacuum(i32) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
