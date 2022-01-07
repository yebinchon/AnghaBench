; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_InitPredicateLocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_InitPredicateLocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_14__*, i32, i64, i64, i64, i64, i64, i8*, i32 }
%struct.TYPE_17__ = type { i64, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, %struct.TYPE_12__, i64, i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i8*, i32 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@NUM_PREDICATELOCK_PARTITIONS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"PREDICATELOCKTARGET hash\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_PARTITION = common dso_local global i32 0, align 4
@HASH_FIXED_SIZE = common dso_local global i32 0, align 4
@PredicateLockTargetHash = common dso_local global i8* null, align 8
@ScratchTargetTag = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@ScratchTargetTagHash = common dso_local global i32 0, align 4
@ScratchPartitionLock = common dso_local global i32 0, align 4
@predicatelock_hash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"PREDICATELOCK hash\00", align 1
@HASH_FUNCTION = common dso_local global i32 0, align 4
@PredicateLockHash = common dso_local global i8* null, align 8
@MaxBackends = common dso_local global i64 0, align 8
@max_prepared_xacts = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"PredXactList\00", align 1
@PredXactListDataSize = common dso_local global i32 0, align 4
@PredXact = common dso_local global %struct.TYPE_16__* null, align 8
@InvalidTransactionId = common dso_local global i8* null, align 8
@FirstNormalSerCommitSeqNo = common dso_local global i64 0, align 8
@PredXactListElementDataSize = common dso_local global i32 0, align 4
@LWTRANCHE_SXACT = common dso_local global i32 0, align 4
@SXACT_FLAG_COMMITTED = common dso_local global i32 0, align 4
@OldCommittedSxact = common dso_local global %struct.TYPE_17__* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"SERIALIZABLEXID hash\00", align 1
@SerializableXidHash = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"RWConflictPool\00", align 1
@RWConflictPoolHeaderDataSize = common dso_local global i32 0, align 4
@RWConflictPool = common dso_local global %struct.TYPE_15__* null, align 8
@RWConflictDataSize = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"FinishedSerializableTransactions\00", align 1
@FinishedSerializableTransactions = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitPredicateLocks() #0 {
  %1 = alloca %struct.TYPE_13__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @IsUnderPostmaster, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = call i64 (...) @NPREDICATELOCKTARGETENTS()
  store i64 %12, i64* %2, align 8
  %13 = call i32 @MemSet(%struct.TYPE_13__* %1, i32 0, i32 24)
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 0
  store i32 4, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 1
  store i32 4, i32* %15, align 4
  %16 = load i8*, i8** @NUM_PREDICATELOCK_PARTITIONS, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i32, i32* @HASH_ELEM, align 4
  %21 = load i32, i32* @HASH_BLOBS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HASH_PARTITION, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @HASH_FIXED_SIZE, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @ShmemInitHash(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %19, %struct.TYPE_13__* %1, i32 %26)
  store i8* %27, i8** @PredicateLockTargetHash, align 8
  %28 = load i32, i32* @IsUnderPostmaster, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %0
  %31 = load i8*, i8** @PredicateLockTargetHash, align 8
  %32 = load i32, i32* @HASH_ENTER, align 4
  %33 = call i32 @hash_search(i8* %31, i32* @ScratchTargetTag, i32 %32, i32* %4)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  br label %39

39:                                               ; preds = %30, %0
  %40 = call i32 @PredicateLockTargetTagHashCode(i32* @ScratchTargetTag)
  store i32 %40, i32* @ScratchTargetTagHash, align 4
  %41 = load i32, i32* @ScratchTargetTagHash, align 4
  %42 = call i32 @PredicateLockHashPartitionLock(i32 %41)
  store i32 %42, i32* @ScratchPartitionLock, align 4
  %43 = call i32 @MemSet(%struct.TYPE_13__* %1, i32 0, i32 24)
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 1
  store i32 4, i32* %45, align 4
  %46 = load i32, i32* @predicatelock_hash, align 4
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = load i8*, i8** @NUM_PREDICATELOCK_PARTITIONS, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load i64, i64* %2, align 8
  %51 = mul nsw i64 %50, 2
  store i64 %51, i64* %2, align 8
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = load i32, i32* @HASH_ELEM, align 4
  %55 = load i32, i32* @HASH_FUNCTION, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @HASH_PARTITION, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @HASH_FIXED_SIZE, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @ShmemInitHash(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %52, i64 %53, %struct.TYPE_13__* %1, i32 %60)
  store i8* %61, i8** @PredicateLockHash, align 8
  %62 = load i64, i64* @MaxBackends, align 8
  %63 = load i64, i64* @max_prepared_xacts, align 8
  %64 = add nsw i64 %62, %63
  store i64 %64, i64* %2, align 8
  %65 = load i64, i64* %2, align 8
  %66 = mul nsw i64 %65, 10
  store i64 %66, i64* %2, align 8
  %67 = load i32, i32* @PredXactListDataSize, align 4
  %68 = call i8* @ShmemInitStruct(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32* %4)
  %69 = bitcast i8* %68 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** @PredXact, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @IsUnderPostmaster, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %214, label %77

77:                                               ; preds = %39
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = call i32 @SHMQueueInit(i32* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 9
  %83 = call i32 @SHMQueueInit(i32* %82)
  %84 = load i8*, i8** @InvalidTransactionId, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 8
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load i64, i64* @FirstNormalSerCommitSeqNo, align 8
  %92 = sub nsw i64 %91, 1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 5
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* %2, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @PredXactListElementDataSize, align 4
  %102 = call i32 @mul_size(i32 %100, i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i8* @ShmemAlloc(i32 %103)
  %105 = bitcast i8* %104 to %struct.TYPE_14__*
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %107, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @memset(%struct.TYPE_14__* %110, i32 0, i32 %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %139, %77
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %2, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %113
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* @LWTRANCHE_SXACT, align 4
  %128 = call i32 @LWLockInitialize(i32* %126, i32 %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = call i32 @SHMQueueInsertBefore(i32* %130, i32* %137)
  br label %139

139:                                              ; preds = %118
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %113

142:                                              ; preds = %113
  %143 = call %struct.TYPE_17__* (...) @CreatePredXact()
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  store %struct.TYPE_17__* %143, %struct.TYPE_17__** %145, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 13
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @SetInvalidVirtualTransactionId(i32 %150)
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 12
  store i64 0, i64* %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 11
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 10
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 9
  %169 = call i32 @SHMQueueInit(i32* %168)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 8
  %174 = call i32 @SHMQueueInit(i32* %173)
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 7
  %179 = call i32 @SHMQueueInit(i32* %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 6
  %184 = call i32 @SHMQueueInit(i32* %183)
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 5
  %189 = call i32 @SHMQueueInit(i32* %188)
  %190 = load i8*, i8** @InvalidTransactionId, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 4
  store i8* %190, i8** %194, align 8
  %195 = load i8*, i8** @InvalidTransactionId, align 8
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 3
  store i8* %195, i8** %199, align 8
  %200 = load i8*, i8** @InvalidTransactionId, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 2
  store i8* %200, i8** %204, align 8
  %205 = load i32, i32* @SXACT_FLAG_COMMITTED, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  store i32 %205, i32* %209, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %142, %39
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PredXact, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  store %struct.TYPE_17__* %217, %struct.TYPE_17__** @OldCommittedSxact, align 8
  %218 = call i32 @MemSet(%struct.TYPE_13__* %1, i32 0, i32 24)
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 0
  store i32 4, i32* %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %1, i32 0, i32 1
  store i32 4, i32* %220, align 4
  %221 = load i64, i64* %2, align 8
  %222 = load i64, i64* %2, align 8
  %223 = load i32, i32* @HASH_ELEM, align 4
  %224 = load i32, i32* @HASH_BLOBS, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @HASH_FIXED_SIZE, align 4
  %227 = or i32 %225, %226
  %228 = call i8* @ShmemInitHash(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %221, i64 %222, %struct.TYPE_13__* %1, i32 %227)
  store i8* %228, i8** @SerializableXidHash, align 8
  %229 = load i64, i64* %2, align 8
  %230 = mul nsw i64 %229, 5
  store i64 %230, i64* %2, align 8
  %231 = load i32, i32* @RWConflictPoolHeaderDataSize, align 4
  %232 = call i8* @ShmemInitStruct(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %231, i32* %4)
  %233 = bitcast i8* %232 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %233, %struct.TYPE_15__** @RWConflictPool, align 8
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @IsUnderPostmaster, align 4
  %236 = icmp eq i32 %234, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 @Assert(i32 %237)
  %239 = load i32, i32* %4, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %279, label %241

241:                                              ; preds = %214
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RWConflictPool, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = call i32 @SHMQueueInit(i32* %243)
  %245 = load i64, i64* %2, align 8
  %246 = trunc i64 %245 to i32
  %247 = load i32, i32* @RWConflictDataSize, align 4
  %248 = call i32 @mul_size(i32 %246, i32 %247)
  store i32 %248, i32* %3, align 4
  %249 = load i32, i32* %3, align 4
  %250 = call i8* @ShmemAlloc(i32 %249)
  %251 = bitcast i8* %250 to %struct.TYPE_14__*
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RWConflictPool, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  store %struct.TYPE_14__* %251, %struct.TYPE_14__** %253, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RWConflictPool, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %255, align 8
  %257 = load i32, i32* %3, align 4
  %258 = call i32 @memset(%struct.TYPE_14__* %256, i32 0, i32 %257)
  store i32 0, i32* %6, align 4
  br label %259

259:                                              ; preds = %275, %241
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %2, align 8
  %263 = icmp slt i64 %261, %262
  br i1 %263, label %264, label %278

264:                                              ; preds = %259
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RWConflictPool, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** @RWConflictPool, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = call i32 @SHMQueueInsertBefore(i32* %266, i32* %273)
  br label %275

275:                                              ; preds = %264
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %6, align 4
  br label %259

278:                                              ; preds = %259
  br label %279

279:                                              ; preds = %278, %214
  %280 = call i8* @ShmemInitStruct(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* %4)
  %281 = bitcast i8* %280 to i32*
  store i32* %281, i32** @FinishedSerializableTransactions, align 8
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* @IsUnderPostmaster, align 4
  %284 = icmp eq i32 %282, %283
  %285 = zext i1 %284 to i32
  %286 = call i32 @Assert(i32 %285)
  %287 = load i32, i32* %4, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %279
  %290 = load i32*, i32** @FinishedSerializableTransactions, align 8
  %291 = call i32 @SHMQueueInit(i32* %290)
  br label %292

292:                                              ; preds = %289, %279
  %293 = call i32 (...) @OldSerXidInit()
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @NPREDICATELOCKTARGETENTS(...) #1

declare dso_local i32 @MemSet(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @ShmemInitHash(i8*, i64, i64, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @hash_search(i8*, i32*, i32, i32*) #1

declare dso_local i32 @PredicateLockTargetTagHashCode(i32*) #1

declare dso_local i32 @PredicateLockHashPartitionLock(i32) #1

declare dso_local i8* @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @SHMQueueInit(i32*) #1

declare dso_local i32 @mul_size(i32, i32) #1

declare dso_local i8* @ShmemAlloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @LWLockInitialize(i32*, i32) #1

declare dso_local i32 @SHMQueueInsertBefore(i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @CreatePredXact(...) #1

declare dso_local i32 @SetInvalidVirtualTransactionId(i32) #1

declare dso_local i32 @OldSerXidInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
