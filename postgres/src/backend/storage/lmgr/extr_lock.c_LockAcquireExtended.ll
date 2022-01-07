; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockAcquireExtended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_LockAcquireExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, i32*, i32* }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_40__ = type { i64* }
%struct.TYPE_41__ = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_44__ = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_42__*, %struct.TYPE_38__*, i32* }
%struct.TYPE_42__ = type { i32, i64, i64*, i64 }
%struct.TYPE_38__ = type { i32, %struct.TYPE_37__, i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_42__* }
%struct.TYPE_43__ = type { i64, %struct.TYPE_41__ }

@LockMethods = common dso_local global %struct.TYPE_39__** null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unrecognized lock method: %d\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unrecognized lock mode: %d\00", align 1
@InRecovery = common dso_local global i32 0, align 4
@LOCKTAG_OBJECT = common dso_local global i64 0, align 8
@LOCKTAG_RELATION = common dso_local global i64 0, align 8
@RowExclusiveLock = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"cannot acquire lock mode %s on database objects while recovery is in progress\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"Only RowExclusiveLock or less can be acquired on database objects during recovery.\00", align 1
@CurrentResourceOwner = common dso_local global i32* null, align 8
@LockMethodLocalHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@LOCKACQUIRE_ALREADY_CLEAR = common dso_local global i32 0, align 4
@LOCKACQUIRE_ALREADY_HELD = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i64 0, align 8
@FastPathLocalUseCount = common dso_local global i64 0, align 8
@FP_LOCK_SLOTS_PER_BACKEND = common dso_local global i64 0, align 8
@MyProc = common dso_local global %struct.TYPE_36__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@FastPathStrongRelationLocks = common dso_local global %struct.TYPE_40__* null, align 8
@LOCKACQUIRE_OK = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"out of shared memory\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"You might need to increase max_locks_per_transaction.\00", align 1
@LOCKACQUIRE_NOT_AVAIL = common dso_local global i32 0, align 4
@STATUS_FOUND = common dso_local global i32 0, align 4
@STATUS_OK = common dso_local global i32 0, align 4
@LockMethodProcLockHash = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"proclock table corrupted\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"LockAcquire: NOWAIT\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"LockAcquire: conditional lock failed\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"LockAcquire: INCONSISTENT\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"LockAcquire failed\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"LockAcquire: granted\00", align 1
@LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LockAcquireExtended(%struct.TYPE_41__* %0, i64 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_44__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_41__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_44__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_39__*, align 8
  %16 = alloca %struct.TYPE_43__, align 8
  %17 = alloca %struct.TYPE_44__*, align 8
  %18 = alloca %struct.TYPE_42__*, align 8
  %19 = alloca %struct.TYPE_38__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_44__** %5, %struct.TYPE_44__*** %13, align 8
  %31 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8
  store i32 0, i32* %25, align 4
  %34 = load i64, i64* %14, align 8
  %35 = icmp ule i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %6
  %37 = load i64, i64* %14, align 8
  %38 = load %struct.TYPE_39__**, %struct.TYPE_39__*** @LockMethods, align 8
  %39 = call i64 @lengthof(%struct.TYPE_39__** %38)
  %40 = icmp uge i64 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %6
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i64, i64* %14, align 8
  %44 = call i32 (i32, i8*, ...) @elog(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.TYPE_39__**, %struct.TYPE_39__*** @LockMethods, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %46, i64 %47
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %48, align 8
  store %struct.TYPE_39__* %49, %struct.TYPE_39__** %15, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp ule i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %45
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i32 (i32, i8*, ...) @elog(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %58, %52
  %63 = call i64 (...) @RecoveryInProgress()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %62
  %66 = load i32, i32* @InRecovery, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %97, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LOCKTAG_OBJECT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @LOCKTAG_RELATION, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %74, %68
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @RowExclusiveLock, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i32, i32* @ERROR, align 4
  %86 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %87 = call i32 @errcode(i32 %86)
  %88 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = call i32 @errhint(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %96 = call i32 @ereport(i32 %85, i32 %95)
  br label %97

97:                                               ; preds = %84, %80, %74, %65, %62
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32* null, i32** %21, align 8
  br label %103

101:                                              ; preds = %97
  %102 = load i32*, i32** @CurrentResourceOwner, align 8
  store i32* %102, i32** %21, align 8
  br label %103

103:                                              ; preds = %101, %100
  %104 = call i32 @MemSet(%struct.TYPE_43__* %16, i32 0, i32 40)
  %105 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %16, i32 0, i32 1
  %106 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %107 = bitcast %struct.TYPE_41__* %105 to i8*
  %108 = bitcast %struct.TYPE_41__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 32, i1 false)
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %16, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = load i32, i32* @LockMethodLocalHash, align 4
  %112 = bitcast %struct.TYPE_43__* %16 to i8*
  %113 = load i32, i32* @HASH_ENTER, align 4
  %114 = call i64 @hash_search(i32 %111, i8* %112, i32 %113, i32* %20)
  %115 = inttoptr i64 %114 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %115, %struct.TYPE_44__** %17, align 8
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %150, label %118

118:                                              ; preds = %103
  %119 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %119, i32 0, i32 6
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %120, align 8
  %121 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %121, i32 0, i32 7
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %16, i32 0, i32 1
  %124 = call i64 @LockTagHashCode(%struct.TYPE_41__* %123)
  %125 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  %131 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %131, i32 0, i32 3
  store i32 0, i32* %132, align 4
  %133 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %133, i32 0, i32 4
  store i32 0, i32* %134, align 8
  %135 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %135, i32 0, i32 5
  store i32 8, i32* %136, align 4
  %137 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %137, i32 0, i32 8
  store i32* null, i32** %138, align 8
  %139 = load i32, i32* @TopMemoryContext, align 4
  %140 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i64 @MemoryContextAlloc(i32 %139, i32 %145)
  %147 = inttoptr i64 %146 to i32*
  %148 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %148, i32 0, i32 8
  store i32* %147, i32** %149, align 8
  br label %178

150:                                              ; preds = %103
  %151 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp sge i32 %153, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %150
  %159 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %161, 2
  store i32 %162, i32* %26, align 4
  %163 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %163, i32 0, i32 8
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %26, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 4
  %169 = trunc i64 %168 to i32
  %170 = call i64 @repalloc(i32* %165, i32 %169)
  %171 = inttoptr i64 %170 to i32*
  %172 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %172, i32 0, i32 8
  store i32* %171, i32** %173, align 8
  %174 = load i32, i32* %26, align 4
  %175 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %158, %150
  br label %178

178:                                              ; preds = %177, %118
  %179 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %22, align 8
  %182 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %13, align 8
  %183 = icmp ne %struct.TYPE_44__** %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %186 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %13, align 8
  store %struct.TYPE_44__* %185, %struct.TYPE_44__** %186, align 8
  br label %187

187:                                              ; preds = %184, %178
  %188 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %187
  %193 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %194 = load i32*, i32** %21, align 8
  %195 = call i32 @GrantLockLocal(%struct.TYPE_44__* %193, i32* %194)
  %196 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i32, i32* @LOCKACQUIRE_ALREADY_CLEAR, align 4
  store i32 %201, i32* %7, align 4
  br label %576

202:                                              ; preds = %192
  %203 = load i32, i32* @LOCKACQUIRE_ALREADY_HELD, align 4
  store i32 %203, i32* %7, align 4
  br label %576

204:                                              ; preds = %187
  %205 = load i64, i64* %9, align 8
  %206 = load i64, i64* @AccessExclusiveLock, align 8
  %207 = icmp uge i64 %205, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %204
  %209 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @LOCKTAG_RELATION, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = call i64 (...) @RecoveryInProgress()
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = call i64 (...) @XLogStandbyInfoActive()
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = call i32 (...) @LogAccessExclusiveLockPrepare()
  store i32 1, i32* %25, align 4
  br label %222

222:                                              ; preds = %220, %217, %214, %208, %204
  %223 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %224 = load i64, i64* %9, align 8
  %225 = call i64 @EligibleForRelationFastPath(%struct.TYPE_41__* %223, i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %268

227:                                              ; preds = %222
  %228 = load i64, i64* @FastPathLocalUseCount, align 8
  %229 = load i64, i64* @FP_LOCK_SLOTS_PER_BACKEND, align 8
  %230 = icmp slt i64 %228, %229
  br i1 %230, label %231, label %268

231:                                              ; preds = %227
  %232 = load i64, i64* %22, align 8
  %233 = call i64 @FastPathStrongLockHashPartition(i64 %232)
  store i64 %233, i64* %27, align 8
  %234 = load %struct.TYPE_36__*, %struct.TYPE_36__** @MyProc, align 8
  %235 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %234, i32 0, i32 1
  %236 = load i32, i32* @LW_EXCLUSIVE, align 4
  %237 = call i32 @LWLockAcquire(i32* %235, i32 %236)
  %238 = load %struct.TYPE_40__*, %struct.TYPE_40__** @FastPathStrongRelationLocks, align 8
  %239 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %238, i32 0, i32 0
  %240 = load i64*, i64** %239, align 8
  %241 = load i64, i64* %27, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %231
  store i32 0, i32* %28, align 4
  br label %252

246:                                              ; preds = %231
  %247 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i64, i64* %9, align 8
  %251 = call i32 @FastPathGrantRelationLock(i32 %249, i64 %250)
  store i32 %251, i32* %28, align 4
  br label %252

252:                                              ; preds = %246, %245
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** @MyProc, align 8
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 1
  %255 = call i32 @LWLockRelease(i32* %254)
  %256 = load i32, i32* %28, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %252
  %259 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %259, i32 0, i32 6
  store %struct.TYPE_42__* null, %struct.TYPE_42__** %260, align 8
  %261 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %261, i32 0, i32 7
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %262, align 8
  %263 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %264 = load i32*, i32** %21, align 8
  %265 = call i32 @GrantLockLocal(%struct.TYPE_44__* %263, i32* %264)
  %266 = load i32, i32* @LOCKACQUIRE_OK, align 4
  store i32 %266, i32* %7, align 4
  br label %576

267:                                              ; preds = %252
  br label %268

268:                                              ; preds = %267, %227, %222
  %269 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %270 = load i64, i64* %9, align 8
  %271 = call i64 @ConflictsWithRelationFastPath(%struct.TYPE_41__* %269, i64 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %312

273:                                              ; preds = %268
  %274 = load i64, i64* %22, align 8
  %275 = call i64 @FastPathStrongLockHashPartition(i64 %274)
  store i64 %275, i64* %29, align 8
  %276 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %277 = load i64, i64* %29, align 8
  %278 = call i32 @BeginStrongLockAcquire(%struct.TYPE_44__* %276, i64 %277)
  %279 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %280 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %281 = load i64, i64* %22, align 8
  %282 = call i32 @FastPathTransferRelationLocks(%struct.TYPE_39__* %279, %struct.TYPE_41__* %280, i64 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %311, label %284

284:                                              ; preds = %273
  %285 = call i32 (...) @AbortStrongLockAcquire()
  %286 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %287 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %284
  %291 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %292 = call i32 @RemoveLocalLock(%struct.TYPE_44__* %291)
  br label %293

293:                                              ; preds = %290, %284
  %294 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %13, align 8
  %295 = icmp ne %struct.TYPE_44__** %294, null
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %13, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %297, align 8
  br label %298

298:                                              ; preds = %296, %293
  %299 = load i32, i32* %12, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %298
  %302 = load i32, i32* @ERROR, align 4
  %303 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %304 = call i32 @errcode(i32 %303)
  %305 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %306 = call i32 @errhint(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %307 = call i32 @ereport(i32 %302, i32 %306)
  br label %310

308:                                              ; preds = %298
  %309 = load i32, i32* @LOCKACQUIRE_NOT_AVAIL, align 4
  store i32 %309, i32* %7, align 4
  br label %576

310:                                              ; preds = %301
  br label %311

311:                                              ; preds = %310, %273
  br label %312

312:                                              ; preds = %311, %268
  %313 = load i64, i64* %22, align 8
  %314 = call i32* @LockHashPartitionLock(i64 %313)
  store i32* %314, i32** %23, align 8
  %315 = load i32*, i32** %23, align 8
  %316 = load i32, i32* @LW_EXCLUSIVE, align 4
  %317 = call i32 @LWLockAcquire(i32* %315, i32 %316)
  %318 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** @MyProc, align 8
  %320 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %321 = load i64, i64* %22, align 8
  %322 = load i64, i64* %9, align 8
  %323 = call %struct.TYPE_38__* @SetupLockInTable(%struct.TYPE_39__* %318, %struct.TYPE_36__* %319, %struct.TYPE_41__* %320, i64 %321, i64 %322)
  store %struct.TYPE_38__* %323, %struct.TYPE_38__** %19, align 8
  %324 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %325 = icmp ne %struct.TYPE_38__* %324, null
  br i1 %325, label %355, label %326

326:                                              ; preds = %312
  %327 = call i32 (...) @AbortStrongLockAcquire()
  %328 = load i32*, i32** %23, align 8
  %329 = call i32 @LWLockRelease(i32* %328)
  %330 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %331 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %326
  %335 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %336 = call i32 @RemoveLocalLock(%struct.TYPE_44__* %335)
  br label %337

337:                                              ; preds = %334, %326
  %338 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %13, align 8
  %339 = icmp ne %struct.TYPE_44__** %338, null
  br i1 %339, label %340, label %342

340:                                              ; preds = %337
  %341 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %13, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %341, align 8
  br label %342

342:                                              ; preds = %340, %337
  %343 = load i32, i32* %12, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %342
  %346 = load i32, i32* @ERROR, align 4
  %347 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %348 = call i32 @errcode(i32 %347)
  %349 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %350 = call i32 @errhint(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %351 = call i32 @ereport(i32 %346, i32 %350)
  br label %354

352:                                              ; preds = %342
  %353 = load i32, i32* @LOCKACQUIRE_NOT_AVAIL, align 4
  store i32 %353, i32* %7, align 4
  br label %576

354:                                              ; preds = %345
  br label %355

355:                                              ; preds = %354, %312
  %356 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %357 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %358 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %357, i32 0, i32 7
  store %struct.TYPE_38__* %356, %struct.TYPE_38__** %358, align 8
  %359 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %360 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_42__*, %struct.TYPE_42__** %361, align 8
  store %struct.TYPE_42__* %362, %struct.TYPE_42__** %18, align 8
  %363 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %364 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %365 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %364, i32 0, i32 6
  store %struct.TYPE_42__* %363, %struct.TYPE_42__** %365, align 8
  %366 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %367 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = load i64, i64* %9, align 8
  %370 = getelementptr inbounds i32, i32* %368, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %373 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = and i32 %371, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %355
  %378 = load i32, i32* @STATUS_FOUND, align 4
  store i32 %378, i32* %24, align 4
  br label %385

379:                                              ; preds = %355
  %380 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %381 = load i64, i64* %9, align 8
  %382 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %383 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %384 = call i32 @LockCheckConflicts(%struct.TYPE_39__* %380, i64 %381, %struct.TYPE_42__* %382, %struct.TYPE_38__* %383)
  store i32 %384, i32* %24, align 4
  br label %385

385:                                              ; preds = %379, %377
  %386 = load i32, i32* %24, align 4
  %387 = load i32, i32* @STATUS_OK, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %397

389:                                              ; preds = %385
  %390 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %391 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %392 = load i64, i64* %9, align 8
  %393 = call i32 @GrantLock(%struct.TYPE_42__* %390, %struct.TYPE_38__* %391, i64 %392)
  %394 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %395 = load i32*, i32** %21, align 8
  %396 = call i32 @GrantLockLocal(%struct.TYPE_44__* %394, i32* %395)
  br label %560

397:                                              ; preds = %385
  %398 = load i32, i32* %24, align 4
  %399 = load i32, i32* @STATUS_FOUND, align 4
  %400 = icmp eq i32 %398, %399
  %401 = zext i1 %400 to i32
  %402 = call i32 @Assert(i32 %401)
  %403 = load i32, i32* %11, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %493

405:                                              ; preds = %397
  %406 = call i32 (...) @AbortStrongLockAcquire()
  %407 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %408 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %434

411:                                              ; preds = %405
  %412 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %413 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %412, i32 0, i32 1
  %414 = load i64, i64* %22, align 8
  %415 = call i64 @ProcLockHashCode(%struct.TYPE_37__* %413, i64 %414)
  store i64 %415, i64* %30, align 8
  %416 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %417 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %416, i32 0, i32 3
  %418 = call i32 @SHMQueueDelete(i32* %417)
  %419 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %420 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %419, i32 0, i32 2
  %421 = call i32 @SHMQueueDelete(i32* %420)
  %422 = load i32, i32* @LockMethodProcLockHash, align 4
  %423 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %424 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %423, i32 0, i32 1
  %425 = bitcast %struct.TYPE_37__* %424 to i8*
  %426 = load i64, i64* %30, align 8
  %427 = load i32, i32* @HASH_REMOVE, align 4
  %428 = call i32 @hash_search_with_hash_value(i32 %422, i8* %425, i64 %426, i32 %427, i32* null)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %433, label %430

430:                                              ; preds = %411
  %431 = load i32, i32* @PANIC, align 4
  %432 = call i32 (i32, i8*, ...) @elog(i32 %431, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %433

433:                                              ; preds = %430, %411
  br label %437

434:                                              ; preds = %405
  %435 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %436 = call i32 @PROCLOCK_PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_38__* %435)
  br label %437

437:                                              ; preds = %434, %433
  %438 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %439 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = add nsw i64 %440, -1
  store i64 %441, i64* %439, align 8
  %442 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %443 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %442, i32 0, i32 2
  %444 = load i64*, i64** %443, align 8
  %445 = load i64, i64* %9, align 8
  %446 = getelementptr inbounds i64, i64* %444, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = add nsw i64 %447, -1
  store i64 %448, i64* %446, align 8
  %449 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %450 = load i64, i64* %9, align 8
  %451 = call i32 @LOCK_PRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_42__* %449, i64 %450)
  %452 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %453 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = icmp sgt i64 %454, 0
  br i1 %455, label %456, label %464

456:                                              ; preds = %437
  %457 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %458 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %457, i32 0, i32 2
  %459 = load i64*, i64** %458, align 8
  %460 = load i64, i64* %9, align 8
  %461 = getelementptr inbounds i64, i64* %459, i64 %460
  %462 = load i64, i64* %461, align 8
  %463 = icmp sge i64 %462, 0
  br label %464

464:                                              ; preds = %456, %437
  %465 = phi i1 [ false, %437 ], [ %463, %456 ]
  %466 = zext i1 %465 to i32
  %467 = call i32 @Assert(i32 %466)
  %468 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %469 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %468, i32 0, i32 3
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %472 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %471, i32 0, i32 1
  %473 = load i64, i64* %472, align 8
  %474 = icmp sle i64 %470, %473
  %475 = zext i1 %474 to i32
  %476 = call i32 @Assert(i32 %475)
  %477 = load i32*, i32** %23, align 8
  %478 = call i32 @LWLockRelease(i32* %477)
  %479 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %480 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %479, i32 0, i32 1
  %481 = load i64, i64* %480, align 8
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %464
  %484 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %485 = call i32 @RemoveLocalLock(%struct.TYPE_44__* %484)
  br label %486

486:                                              ; preds = %483, %464
  %487 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %13, align 8
  %488 = icmp ne %struct.TYPE_44__** %487, null
  br i1 %488, label %489, label %491

489:                                              ; preds = %486
  %490 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %13, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %490, align 8
  br label %491

491:                                              ; preds = %489, %486
  %492 = load i32, i32* @LOCKACQUIRE_NOT_AVAIL, align 4
  store i32 %492, i32* %7, align 4
  br label %576

493:                                              ; preds = %397
  %494 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %495 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load %struct.TYPE_36__*, %struct.TYPE_36__** @MyProc, align 8
  %498 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %497, i32 0, i32 0
  store i32 %496, i32* %498, align 4
  %499 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %500 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %499, i32 0, i32 3
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %503 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 8
  %505 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %506 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %505, i32 0, i32 5
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %509 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %512 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %511, i32 0, i32 1
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* %9, align 8
  %515 = call i32 @TRACE_POSTGRESQL_LOCK_WAIT_START(i32 %501, i32 %504, i32 %507, i32 %510, i64 %513, i64 %514)
  %516 = load %struct.TYPE_44__*, %struct.TYPE_44__** %17, align 8
  %517 = load i32*, i32** %21, align 8
  %518 = call i32 @WaitOnLock(%struct.TYPE_44__* %516, i32* %517)
  %519 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %520 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %519, i32 0, i32 3
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %523 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %526 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %525, i32 0, i32 5
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %529 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %528, i32 0, i32 4
  %530 = load i32, i32* %529, align 8
  %531 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %532 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %531, i32 0, i32 1
  %533 = load i64, i64* %532, align 8
  %534 = load i64, i64* %9, align 8
  %535 = call i32 @TRACE_POSTGRESQL_LOCK_WAIT_DONE(i32 %521, i32 %524, i32 %527, i32 %530, i64 %533, i64 %534)
  %536 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %537 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = load i64, i64* %9, align 8
  %540 = call i32 @LOCKBIT_ON(i64 %539)
  %541 = and i32 %538, %540
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %554, label %543

543:                                              ; preds = %493
  %544 = call i32 (...) @AbortStrongLockAcquire()
  %545 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %546 = call i32 @PROCLOCK_PRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_38__* %545)
  %547 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %548 = load i64, i64* %9, align 8
  %549 = call i32 @LOCK_PRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_42__* %547, i64 %548)
  %550 = load i32*, i32** %23, align 8
  %551 = call i32 @LWLockRelease(i32* %550)
  %552 = load i32, i32* @ERROR, align 4
  %553 = call i32 (i32, i8*, ...) @elog(i32 %552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %554

554:                                              ; preds = %543, %493
  %555 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %556 = call i32 @PROCLOCK_PRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_38__* %555)
  %557 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %558 = load i64, i64* %9, align 8
  %559 = call i32 @LOCK_PRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_42__* %557, i64 %558)
  br label %560

560:                                              ; preds = %554, %389
  %561 = call i32 (...) @FinishStrongLockAcquire()
  %562 = load i32*, i32** %23, align 8
  %563 = call i32 @LWLockRelease(i32* %562)
  %564 = load i32, i32* %25, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %574

566:                                              ; preds = %560
  %567 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %568 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %567, i32 0, i32 3
  %569 = load i32, i32* %568, align 4
  %570 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %571 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 8
  %573 = call i32 @LogAccessExclusiveLock(i32 %569, i32 %572)
  br label %574

574:                                              ; preds = %566, %560
  %575 = load i32, i32* @LOCKACQUIRE_OK, align 4
  store i32 %575, i32* %7, align 4
  br label %576

576:                                              ; preds = %574, %491, %352, %308, %258, %202, %200
  %577 = load i32, i32* %7, align 4
  ret i32 %577
}

declare dso_local i64 @lengthof(%struct.TYPE_39__**) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @MemSet(%struct.TYPE_43__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i64 @LockTagHashCode(%struct.TYPE_41__*) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i64 @repalloc(i32*, i32) #1

declare dso_local i32 @GrantLockLocal(%struct.TYPE_44__*, i32*) #1

declare dso_local i64 @XLogStandbyInfoActive(...) #1

declare dso_local i32 @LogAccessExclusiveLockPrepare(...) #1

declare dso_local i64 @EligibleForRelationFastPath(%struct.TYPE_41__*, i64) #1

declare dso_local i64 @FastPathStrongLockHashPartition(i64) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @FastPathGrantRelationLock(i32, i64) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i64 @ConflictsWithRelationFastPath(%struct.TYPE_41__*, i64) #1

declare dso_local i32 @BeginStrongLockAcquire(%struct.TYPE_44__*, i64) #1

declare dso_local i32 @FastPathTransferRelationLocks(%struct.TYPE_39__*, %struct.TYPE_41__*, i64) #1

declare dso_local i32 @AbortStrongLockAcquire(...) #1

declare dso_local i32 @RemoveLocalLock(%struct.TYPE_44__*) #1

declare dso_local i32* @LockHashPartitionLock(i64) #1

declare dso_local %struct.TYPE_38__* @SetupLockInTable(%struct.TYPE_39__*, %struct.TYPE_36__*, %struct.TYPE_41__*, i64, i64) #1

declare dso_local i32 @LockCheckConflicts(%struct.TYPE_39__*, i64, %struct.TYPE_42__*, %struct.TYPE_38__*) #1

declare dso_local i32 @GrantLock(%struct.TYPE_42__*, %struct.TYPE_38__*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ProcLockHashCode(%struct.TYPE_37__*, i64) #1

declare dso_local i32 @SHMQueueDelete(i32*) #1

declare dso_local i32 @hash_search_with_hash_value(i32, i8*, i64, i32, i32*) #1

declare dso_local i32 @PROCLOCK_PRINT(i8*, %struct.TYPE_38__*) #1

declare dso_local i32 @LOCK_PRINT(i8*, %struct.TYPE_42__*, i64) #1

declare dso_local i32 @TRACE_POSTGRESQL_LOCK_WAIT_START(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @WaitOnLock(%struct.TYPE_44__*, i32*) #1

declare dso_local i32 @TRACE_POSTGRESQL_LOCK_WAIT_DONE(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @LOCKBIT_ON(i64) #1

declare dso_local i32 @FinishStrongLockAcquire(...) #1

declare dso_local i32 @LogAccessExclusiveLock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
