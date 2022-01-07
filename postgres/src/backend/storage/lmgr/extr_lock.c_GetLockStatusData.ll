; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_GetLockStatusData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_GetLockStatusData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i8*, %struct.TYPE_22__*, i32, i32, i64, i32*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i8*, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_16__, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_22__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32, i32 }

@MaxBackends = common dso_local global i32 0, align 4
@ProcGlobal = common dso_local global %struct.TYPE_14__* null, align 8
@LW_SHARED = common dso_local global i32 0, align 4
@FP_LOCK_SLOTS_PER_BACKEND = common dso_local global i64 0, align 8
@FAST_PATH_LOCKNUMBER_OFFSET = common dso_local global i64 0, align 8
@NoLock = common dso_local global i8* null, align 8
@ExclusiveLock = common dso_local global i32 0, align 4
@NUM_LOCK_PARTITIONS = common dso_local global i32 0, align 4
@LockMethodProcLockHash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @GetLockStatusData() #0 {
  %1 = alloca %struct.TYPE_21__*, align 8
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = call i64 @palloc(i32 16)
  %17 = inttoptr i64 %16 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %1, align 8
  %18 = load i32, i32* @MaxBackends, align 4
  store i32 %18, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 48, %20
  %22 = trunc i64 %21 to i32
  %23 = call i64 @palloc(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_20__*
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %26, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %209, %0
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ProcGlobal, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %212

33:                                               ; preds = %27
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ProcGlobal, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i64 %38
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %7, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 5
  %42 = load i32, i32* @LW_SHARED, align 4
  %43 = call i32 @LWLockAcquire(i32* %41, i32 %42)
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %126, %33
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @FP_LOCK_SLOTS_PER_BACKEND, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %129

48:                                               ; preds = %44
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @FAST_PATH_GET_BITS(%struct.TYPE_19__* %49, i64 %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %126

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32, i32* @MaxBackends, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 48, %67
  %69 = trunc i64 %68 to i32
  %70 = call i64 @repalloc(%struct.TYPE_20__* %65, i32 %69)
  %71 = inttoptr i64 %70 to %struct.TYPE_20__*
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %73, align 8
  br label %74

74:                                               ; preds = %59, %55
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i64 %79
  store %struct.TYPE_20__* %80, %struct.TYPE_20__** %9, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SET_LOCKTAG_RELATION(i32 %83, i32 %86, i32 %92)
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @FAST_PATH_LOCKNUMBER_OFFSET, align 8
  %96 = shl i64 %94, %95
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 6
  store i64 %96, i64* %98, align 8
  %99 = load i8*, i8** @NoLock, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %74, %54
  %127 = load i64, i64* %8, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %8, align 8
  br label %44

129:                                              ; preds = %44
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %205

134:                                              ; preds = %129
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %134
  %139 = load i32, i32* @MaxBackends, align 4
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %4, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 48, %146
  %148 = trunc i64 %147 to i32
  %149 = call i64 @repalloc(%struct.TYPE_20__* %144, i32 %148)
  %150 = inttoptr i64 %149 to %struct.TYPE_20__*
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %152, align 8
  br label %153

153:                                              ; preds = %138, %134
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  store i32 %156, i32* %157, align 4
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i64 %166
  store %struct.TYPE_20__* %167, %struct.TYPE_20__** %12, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = bitcast %struct.TYPE_17__* %11 to i64*
  %172 = load i64, i64* %171, align 4
  %173 = call i32 @SET_LOCKTAG_VIRTUALTRANSACTION(i32 %170, i64 %172)
  %174 = load i32, i32* @ExclusiveLock, align 4
  %175 = call i64 @LOCKBIT_ON(i32 %174)
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 6
  store i64 %175, i64* %177, align 8
  %178 = load i8*, i8** @NoLock, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 5
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  store i32 1, i32* %202, align 8
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %153, %129
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 5
  %208 = call i32 @LWLockRelease(i32* %207)
  br label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %27

212:                                              ; preds = %27
  store i32 0, i32* %6, align 4
  br label %213

213:                                              ; preds = %222, %212
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @NUM_LOCK_PARTITIONS, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %213
  %218 = load i32, i32* %6, align 4
  %219 = call i32* @LockHashPartitionLockByIndex(i32 %218)
  %220 = load i32, i32* @LW_SHARED, align 4
  %221 = call i32 @LWLockAcquire(i32* %219, i32 %220)
  br label %222

222:                                              ; preds = %217
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %213

225:                                              ; preds = %213
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @LockMethodProcLockHash, align 4
  %228 = call i32 @hash_get_num_entries(i32 %227)
  %229 = add nsw i32 %226, %228
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %4, align 4
  %236 = icmp sgt i32 %234, %235
  br i1 %236, label %237, label %252

237:                                              ; preds = %225
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  store i32 %240, i32* %4, align 4
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %242, align 8
  %244 = load i32, i32* %4, align 4
  %245 = sext i32 %244 to i64
  %246 = mul i64 48, %245
  %247 = trunc i64 %246 to i32
  %248 = call i64 @repalloc(%struct.TYPE_20__* %243, i32 %247)
  %249 = inttoptr i64 %248 to %struct.TYPE_20__*
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 1
  store %struct.TYPE_20__* %249, %struct.TYPE_20__** %251, align 8
  br label %252

252:                                              ; preds = %237, %225
  %253 = load i32, i32* @LockMethodProcLockHash, align 4
  %254 = call i32 @hash_seq_init(i32* %3, i32 %253)
  br label %255

255:                                              ; preds = %302, %252
  %256 = call i64 @hash_seq_search(i32* %3)
  %257 = inttoptr i64 %256 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %257, %struct.TYPE_18__** %2, align 8
  %258 = icmp ne %struct.TYPE_18__* %257, null
  br i1 %258, label %259, label %329

259:                                              ; preds = %255
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %262, align 8
  store %struct.TYPE_19__* %263, %struct.TYPE_19__** %13, align 8
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %266, align 8
  store %struct.TYPE_22__* %267, %struct.TYPE_22__** %14, align 8
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i64 %272
  store %struct.TYPE_20__* %273, %struct.TYPE_20__** %15, align 8
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 7
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  %278 = call i32 @memcpy(i32* %275, i32* %277, i32 4)
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 6
  store i64 %281, i64* %283, align 8
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 4
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %285, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %289, align 8
  %291 = icmp eq %struct.TYPE_22__* %286, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %259
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 3
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 5
  store i8* %295, i8** %297, align 8
  br label %302

298:                                              ; preds = %259
  %299 = load i8*, i8** @NoLock, align 8
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 5
  store i8* %299, i8** %301, align 8
  br label %302

302:                                              ; preds = %298, %292
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 4
  store i32 %305, i32* %307, align 8
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 3
  store i32 %310, i32* %312, align 4
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 2
  store i32 %315, i32* %317, align 8
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 4
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  store i32 0, i32* %326, align 8
  %327 = load i32, i32* %5, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %5, align 4
  br label %255

329:                                              ; preds = %255
  %330 = load i32, i32* @NUM_LOCK_PARTITIONS, align 4
  store i32 %330, i32* %6, align 4
  br label %331

331:                                              ; preds = %335, %329
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, -1
  store i32 %333, i32* %6, align 4
  %334 = icmp sge i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  %336 = load i32, i32* %6, align 4
  %337 = call i32* @LockHashPartitionLockByIndex(i32 %336)
  %338 = call i32 @LWLockRelease(i32* %337)
  br label %331

339:                                              ; preds = %331
  %340 = load i32, i32* %5, align 4
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = icmp eq i32 %340, %343
  %345 = zext i1 %344 to i32
  %346 = call i32 @Assert(i32 %345)
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %1, align 8
  ret %struct.TYPE_21__* %347
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i64 @FAST_PATH_GET_BITS(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @repalloc(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @SET_LOCKTAG_RELATION(i32, i32, i32) #1

declare dso_local i32 @SET_LOCKTAG_VIRTUALTRANSACTION(i32, i64) #1

declare dso_local i64 @LOCKBIT_ON(i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32* @LockHashPartitionLockByIndex(i32) #1

declare dso_local i32 @hash_get_num_entries(i32) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
