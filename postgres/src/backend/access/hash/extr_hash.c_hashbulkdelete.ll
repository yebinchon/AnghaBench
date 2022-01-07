; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash.c_hashbulkdelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hash.c_hashbulkdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, double, double }
%struct.TYPE_18__ = type { i64, double, i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { double }

@InvalidBuffer = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@LH_BUCKET_PAGE = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@HASH_METAPAGE = common dso_local global i32 0, align 4
@HASH_NOLOCK = common dso_local global i32 0, align 4
@LH_META_PAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@SizeOfHashUpdateMetaPage = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_HASH_ID = common dso_local global i32 0, align 4
@XLOG_HASH_UPDATE_META_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @hashbulkdelete(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_14__, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @InvalidBuffer, align 4
  store i32 %31, i32* %16, align 4
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.TYPE_18__* @_hash_getcachedmetap(i32 %32, i32* %16, i32 0)
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %18, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %35 = icmp ne %struct.TYPE_18__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  store double %43, double* %12, align 8
  store i64 0, i64* %15, align 8
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %153, %4
  br label %46

46:                                               ; preds = %104, %45
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %131

50:                                               ; preds = %46
  store i32 0, i32* %25, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @BUCKET_TO_BLKNO(%struct.TYPE_18__* %51, i64 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @MAIN_FORKNUM, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* @RBM_NORMAL, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ReadBufferExtended(i32 %55, i32 %56, i32 %57, i32 %58, i32 %61)
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %22, align 4
  %64 = call i32 @LockBufferForCleanup(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %68 = call i32 @_hash_checkpage(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %22, align 4
  %70 = call i32 @BufferGetPage(i32 %69)
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %24, align 4
  %72 = call i64 @PageGetSpecialPointer(i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %23, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %75 = call i32 @H_BUCKET_BEING_SPLIT(%struct.TYPE_17__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %104, label %77

77:                                               ; preds = %50
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %79 = call i64 @H_NEEDS_SPLIT_CLEANUP(%struct.TYPE_17__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %77
  store i32 1, i32* %25, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @InvalidBlockNumber, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @Assert(i32 %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %81
  %97 = load i32, i32* %9, align 4
  %98 = call %struct.TYPE_18__* @_hash_getcachedmetap(i32 %97, i32* %16, i32 1)
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %18, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %100 = icmp ne %struct.TYPE_18__* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  br label %103

103:                                              ; preds = %96, %81
  br label %104

104:                                              ; preds = %103, %77, %50
  %105 = load i32, i32* %22, align 4
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i64, i64* %15, align 8
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @hashbucketcleanup(i32 %106, i64 %107, i32 %108, i32 %109, i32 %112, i64 %115, i32 %118, i32 %121, double* %10, double* %11, i32 %122, i32 %123, i8* %124)
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %21, align 4
  %128 = call i32 @_hash_dropbuf(i32 %126, i32 %127)
  %129 = load i64, i64* %15, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %15, align 8
  br label %46

131:                                              ; preds = %46
  %132 = load i32, i32* %16, align 4
  %133 = call i64 @BufferIsInvalid(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @HASH_METAPAGE, align 4
  %138 = load i32, i32* @HASH_NOLOCK, align 4
  %139 = load i32, i32* @LH_META_PAGE, align 4
  %140 = call i32 @_hash_getbuf(i32 %136, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %135, %131
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %144 = call i32 @LockBuffer(i32 %142, i32 %143)
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @BufferGetPage(i32 %145)
  %147 = call %struct.TYPE_18__* @HashPageGetMeta(i32 %146)
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %17, align 8
  %148 = load i64, i64* %14, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %148, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %141
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %156 = call i32 @LockBuffer(i32 %154, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = call %struct.TYPE_18__* @_hash_getcachedmetap(i32 %157, i32* %16, i32 1)
  store %struct.TYPE_18__* %158, %struct.TYPE_18__** %18, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %160 = icmp ne %struct.TYPE_18__* %159, null
  %161 = zext i1 %160 to i32
  %162 = call i32 @Assert(i32 %161)
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %14, align 8
  br label %45

166:                                              ; preds = %141
  %167 = call i32 (...) @START_CRIT_SECTION()
  %168 = load i64, i64* %13, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %168, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %166
  %174 = load double, double* %12, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load double, double* %176, align 8
  %178 = fcmp oeq double %174, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %173
  %180 = load double, double* %11, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  store double %180, double* %182, align 8
  br label %202

183:                                              ; preds = %173, %166
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = load double, double* %185, align 8
  %187 = load double, double* %10, align 8
  %188 = fcmp ogt double %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load double, double* %10, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load double, double* %192, align 8
  %194 = fsub double %193, %190
  store double %194, double* %192, align 8
  br label %198

195:                                              ; preds = %183
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  store double 0.000000e+00, double* %197, align 8
  br label %198

198:                                              ; preds = %195, %189
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = load double, double* %200, align 8
  store double %201, double* %11, align 8
  br label %202

202:                                              ; preds = %198, %179
  %203 = load i32, i32* %16, align 4
  %204 = call i32 @MarkBufferDirty(i32 %203)
  %205 = load i32, i32* %9, align 4
  %206 = call i64 @RelationNeedsWAL(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %202
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = load double, double* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store double %211, double* %212, align 8
  %213 = call i32 (...) @XLogBeginInsert()
  %214 = bitcast %struct.TYPE_14__* %26 to i8*
  %215 = load i32, i32* @SizeOfHashUpdateMetaPage, align 4
  %216 = call i32 @XLogRegisterData(i8* %214, i32 %215)
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* @REGBUF_STANDARD, align 4
  %219 = call i32 @XLogRegisterBuffer(i32 0, i32 %217, i32 %218)
  %220 = load i32, i32* @RM_HASH_ID, align 4
  %221 = load i32, i32* @XLOG_HASH_UPDATE_META_PAGE, align 4
  %222 = call i32 @XLogInsert(i32 %220, i32 %221)
  store i32 %222, i32* %27, align 4
  %223 = load i32, i32* %16, align 4
  %224 = call i32 @BufferGetPage(i32 %223)
  %225 = load i32, i32* %27, align 4
  %226 = call i32 @PageSetLSN(i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %208, %202
  %228 = call i32 (...) @END_CRIT_SECTION()
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %16, align 4
  %231 = call i32 @_hash_relbuf(i32 %229, i32 %230)
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %233 = icmp eq %struct.TYPE_16__* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %227
  %235 = call i64 @palloc0(i32 24)
  %236 = inttoptr i64 %235 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %236, %struct.TYPE_16__** %6, align 8
  br label %237

237:                                              ; preds = %234, %227
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  store i32 0, i32* %239, align 8
  %240 = load double, double* %11, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  store double %240, double* %242, align 8
  %243 = load double, double* %10, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 2
  %246 = load double, double* %245, align 8
  %247 = fadd double %246, %243
  store double %247, double* %245, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %248
}

declare dso_local %struct.TYPE_18__* @_hash_getcachedmetap(i32, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BUCKET_TO_BLKNO(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @ReadBufferExtended(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LockBufferForCleanup(i32) #1

declare dso_local i32 @_hash_checkpage(i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @H_BUCKET_BEING_SPLIT(%struct.TYPE_17__*) #1

declare dso_local i64 @H_NEEDS_SPLIT_CLEANUP(%struct.TYPE_17__*) #1

declare dso_local i32 @hashbucketcleanup(i32, i64, i32, i32, i32, i64, i32, i32, double*, double*, i32, i32, i8*) #1

declare dso_local i32 @_hash_dropbuf(i32, i32) #1

declare dso_local i64 @BufferIsInvalid(i32) #1

declare dso_local i32 @_hash_getbuf(i32, i32, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local %struct.TYPE_18__* @HashPageGetMeta(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @_hash_relbuf(i32, i32) #1

declare dso_local i64 @palloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
