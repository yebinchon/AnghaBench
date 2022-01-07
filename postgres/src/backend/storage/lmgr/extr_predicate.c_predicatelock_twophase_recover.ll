; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_predicatelock_twophase_recover.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_predicatelock_twophase_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i8*, i32, i32, i32, %struct.TYPE_19__, i32, i32, i8*, i64, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i32 }

@TWOPHASEPREDICATERECORD_XACT = common dso_local global i64 0, align 8
@TWOPHASEPREDICATERECORD_LOCK = common dso_local global i64 0, align 8
@SerializableXactHashLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"out of shared memory\00", align 1
@InvalidBackendId = common dso_local global i32 0, align 4
@RecoverySerCommitSeqNo = common dso_local global i8* null, align 8
@InvalidSerCommitSeqNo = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@PredXact = common dso_local global %struct.TYPE_17__* null, align 8
@MaxBackends = common dso_local global i64 0, align 8
@max_prepared_xacts = common dso_local global i64 0, align 8
@SXACT_FLAG_SUMMARY_CONFLICT_IN = common dso_local global i32 0, align 4
@SXACT_FLAG_SUMMARY_CONFLICT_OUT = common dso_local global i32 0, align 4
@SerializableXidHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@InvalidSerializableXact = common dso_local global %struct.TYPE_26__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @predicatelock_twophase_recover(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_24__, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 16
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %9, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TWOPHASEPREDICATERECORD_XACT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TWOPHASEPREDICATERECORD_LOCK, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %32, %4
  %39 = phi i1 [ true, %4 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TWOPHASEPREDICATERECORD_XACT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %216

47:                                               ; preds = %38
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = bitcast i32* %50 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %10, align 8
  %52 = load i32, i32* @SerializableXactHashLock, align 4
  %53 = load i32, i32* @LW_EXCLUSIVE, align 4
  %54 = call i32 @LWLockAcquire(i32 %52, i32 %53)
  %55 = call %struct.TYPE_26__* (...) @CreatePredXact()
  store %struct.TYPE_26__* %55, %struct.TYPE_26__** %11, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %57 = icmp ne %struct.TYPE_26__* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %47
  %65 = load i32, i32* @InvalidBackendId, align 4
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 13
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 12
  store i64 0, i64* %75, align 8
  %76 = load i8*, i8** @RecoverySerCommitSeqNo, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 11
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @InvalidSerCommitSeqNo, align 4
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @InvalidTransactionId, align 4
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** @RecoverySerCommitSeqNo, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 7
  %91 = call i32 @SHMQueueInit(i32* %90)
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 6
  %94 = call i32 @SHMQueueInit(i32* %93)
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 5
  %97 = call i32 @SHMQueueElemInit(i32* %96)
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %112 = call i32 @SxactIsPrepared(%struct.TYPE_26__* %111)
  %113 = call i32 @Assert(i32 %112)
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %115 = call i32 @SxactIsReadOnly(%struct.TYPE_26__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %64
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PredXact, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PredXact, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @MaxBackends, align 8
  %126 = load i64, i64* @max_prepared_xacts, align 8
  %127 = add nsw i64 %125, %126
  %128 = icmp sle i64 %124, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @Assert(i32 %129)
  br label %131

131:                                              ; preds = %117, %64
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 3
  %134 = call i32 @SHMQueueInit(i32* %133)
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 2
  %137 = call i32 @SHMQueueInit(i32* %136)
  %138 = load i32, i32* @SXACT_FLAG_SUMMARY_CONFLICT_IN, align 4
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* @SXACT_FLAG_SUMMARY_CONFLICT_OUT, align 4
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  store i8* %148, i8** %149, align 8
  %150 = load i32, i32* @SerializableXidHash, align 4
  %151 = load i32, i32* @HASH_ENTER, align 4
  %152 = call i64 @hash_search(i32 %150, %struct.TYPE_24__* %13, i32 %151, i32* %14)
  %153 = inttoptr i64 %152 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %153, %struct.TYPE_25__** %12, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %155 = icmp ne %struct.TYPE_25__* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 @Assert(i32 %156)
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i32 @Assert(i32 %161)
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  store %struct.TYPE_26__* %163, %struct.TYPE_26__** %165, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PredXact, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @TransactionIdIsValid(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %131
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PredXact, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @TransactionIdFollows(i32 %174, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %171, %131
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PredXact, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PredXact, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  store i32 1, i32* %187, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @OldSerXidSetActiveSerXmin(i32 %190)
  br label %213

192:                                              ; preds = %171
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PredXact, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @TransactionIdEquals(i32 %195, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %192
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PredXact, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp sgt i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @Assert(i32 %206)
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** @PredXact, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %201, %192
  br label %213

213:                                              ; preds = %212, %180
  %214 = load i32, i32* @SerializableXactHashLock, align 4
  %215 = call i32 @LWLockRelease(i32 %214)
  br label %259

216:                                              ; preds = %38
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @TWOPHASEPREDICATERECORD_LOCK, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %258

222:                                              ; preds = %216
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 0
  %226 = bitcast i32* %225 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %226, %struct.TYPE_23__** %15, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 0
  %229 = call i32 @PredicateLockTargetTagHashCode(i32* %228)
  store i32 %229, i32* %19, align 4
  %230 = load i32, i32* @SerializableXactHashLock, align 4
  %231 = load i32, i32* @LW_SHARED, align 4
  %232 = call i32 @LWLockAcquire(i32 %230, i32 %231)
  %233 = load i8*, i8** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  store i8* %233, i8** %234, align 8
  %235 = load i32, i32* @SerializableXidHash, align 4
  %236 = load i32, i32* @HASH_FIND, align 4
  %237 = call i64 @hash_search(i32 %235, %struct.TYPE_24__* %18, i32 %236, i32* null)
  %238 = inttoptr i64 %237 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %238, %struct.TYPE_25__** %16, align 8
  %239 = load i32, i32* @SerializableXactHashLock, align 4
  %240 = call i32 @LWLockRelease(i32 %239)
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %242 = icmp ne %struct.TYPE_25__* %241, null
  %243 = zext i1 %242 to i32
  %244 = call i32 @Assert(i32 %243)
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %246, align 8
  store %struct.TYPE_26__* %247, %struct.TYPE_26__** %17, align 8
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** @InvalidSerializableXact, align 8
  %250 = icmp ne %struct.TYPE_26__* %248, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @Assert(i32 %251)
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 0
  %255 = load i32, i32* %19, align 4
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %257 = call i32 @CreatePredicateLock(i32* %254, i32 %255, %struct.TYPE_26__* %256)
  br label %258

258:                                              ; preds = %222, %216
  br label %259

259:                                              ; preds = %258, %213
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local %struct.TYPE_26__* @CreatePredXact(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @SHMQueueInit(i32*) #1

declare dso_local i32 @SHMQueueElemInit(i32*) #1

declare dso_local i32 @SxactIsPrepared(%struct.TYPE_26__*) #1

declare dso_local i32 @SxactIsReadOnly(%struct.TYPE_26__*) #1

declare dso_local i64 @hash_search(i32, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdFollows(i32, i32) #1

declare dso_local i32 @OldSerXidSetActiveSerXmin(i32) #1

declare dso_local i64 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @PredicateLockTargetTagHashCode(i32*) #1

declare dso_local i32 @CreatePredicateLock(i32*, i32, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
