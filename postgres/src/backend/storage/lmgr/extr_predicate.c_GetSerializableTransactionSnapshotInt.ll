; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetSerializableTransactionSnapshotInt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetSerializableTransactionSnapshotInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }

@MySerializableXact = common dso_local global %struct.TYPE_24__* null, align 8
@InvalidSerializableXact = common dso_local global %struct.TYPE_24__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"cannot establish serializable snapshot during a parallel operation\00", align 1
@MyProc = common dso_local global i32* null, align 8
@SerializableXactHashLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"could not import the requested snapshot\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"The source process with PID %d is not running anymore.\00", align 1
@XactReadOnly = common dso_local global i64 0, align 8
@PredXact = common dso_local global %struct.TYPE_21__* null, align 8
@InvalidSerCommitSeqNo = common dso_local global i8* null, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@MyProcPid = common dso_local global i32 0, align 4
@SXACT_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@MaxBackends = common dso_local global i64 0, align 8
@max_prepared_xacts = common dso_local global i64 0, align 8
@MyXactDidWrite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_23__*, i32*, i32)* @GetSerializableTransactionSnapshotInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @GetSerializableTransactionSnapshotInt(%struct.TYPE_23__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** @InvalidSerializableXact, align 8
  %14 = icmp eq %struct.TYPE_24__* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = call i32 (...) @RecoveryInProgress()
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = call i64 (...) @IsInParallelMode()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %3
  %28 = load i32*, i32** @MyProc, align 8
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GET_VXID_FROM_PGPROC(i32 %33, i32 %35)
  %37 = load i32, i32* @SerializableXactHashLock, align 4
  %38 = load i32, i32* @LW_EXCLUSIVE, align 4
  %39 = call i32 @LWLockAcquire(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %52, %27
  %41 = call %struct.TYPE_24__* (...) @CreatePredXact()
  store %struct.TYPE_24__* %41, %struct.TYPE_24__** %10, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %43 = icmp ne %struct.TYPE_24__* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @SerializableXactHashLock, align 4
  %46 = call i32 @LWLockRelease(i32 %45)
  %47 = call i32 (...) @SummarizeOldestCommittedSxact()
  %48 = load i32, i32* @SerializableXactHashLock, align 4
  %49 = load i32, i32* @LW_EXCLUSIVE, align 4
  %50 = call i32 @LWLockAcquire(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %40
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %54 = icmp ne %struct.TYPE_24__* %53, null
  %55 = xor i1 %54, true
  br i1 %55, label %40, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = call %struct.TYPE_23__* @GetSnapshotData(%struct.TYPE_23__* %60)
  store %struct.TYPE_23__* %61, %struct.TYPE_23__** %5, align 8
  br label %82

62:                                               ; preds = %56
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @ProcArrayInstallImportedXmin(i32 %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %71 = call i32 @ReleasePredXact(%struct.TYPE_24__* %70)
  %72 = load i32, i32* @SerializableXactHashLock, align 4
  %73 = call i32 @LWLockRelease(i32 %72)
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @errdetail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = call i32 @ereport(i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %69, %62
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i64, i64* @XactReadOnly, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %92 = call i32 @ReleasePredXact(%struct.TYPE_24__* %91)
  %93 = load i32, i32* @SerializableXactHashLock, align 4
  %94 = call i32 @LWLockRelease(i32 %93)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %95, %struct.TYPE_23__** %4, align 8
  br label %250

96:                                               ; preds = %85, %82
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @TransactionIdIsValid(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %96
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @Assert(i32 %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @OldSerXidSetActiveSerXmin(i32 %118)
  br label %150

120:                                              ; preds = %96
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @TransactionIdEquals(i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %120
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp sgt i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @Assert(i32 %134)
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  br label %149

140:                                              ; preds = %120
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @TransactionIdFollows(i32 %143, i32 %146)
  %148 = call i32 @Assert(i32 %147)
  br label %149

149:                                              ; preds = %140, %129
  br label %150

150:                                              ; preds = %149, %102
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 13
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 12
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load i8*, i8** @InvalidSerCommitSeqNo, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 11
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @InvalidSerCommitSeqNo, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 10
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 9
  %168 = call i32 @SHMQueueInit(i32* %167)
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 8
  %171 = call i32 @SHMQueueInit(i32* %170)
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 7
  %174 = call i32 @SHMQueueInit(i32* %173)
  %175 = call i32 (...) @GetTopTransactionIdIfAny()
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @InvalidTransactionId, align 4
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* @MyProcPid, align 4
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 2
  %191 = call i32 @SHMQueueInit(i32* %190)
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 1
  %194 = call i32 @SHMQueueElemInit(i32* %193)
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  store i32 0, i32* %196, align 8
  %197 = load i64, i64* @XactReadOnly, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %230

199:                                              ; preds = %150
  %200 = load i32, i32* @SXACT_FLAG_READ_ONLY, align 4
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  %205 = call %struct.TYPE_24__* (...) @FirstPredXact()
  store %struct.TYPE_24__* %205, %struct.TYPE_24__** %11, align 8
  br label %206

206:                                              ; preds = %226, %199
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %208 = icmp ne %struct.TYPE_24__* %207, null
  br i1 %208, label %209, label %229

209:                                              ; preds = %206
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %211 = call i32 @SxactIsCommitted(%struct.TYPE_24__* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %209
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %215 = call i32 @SxactIsDoomed(%struct.TYPE_24__* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %213
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %219 = call i32 @SxactIsReadOnly(%struct.TYPE_24__* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %224 = call i32 @SetPossibleUnsafeConflict(%struct.TYPE_24__* %222, %struct.TYPE_24__* %223)
  br label %225

225:                                              ; preds = %221, %217, %213, %209
  br label %226

226:                                              ; preds = %225
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %228 = call %struct.TYPE_24__* @NextPredXact(%struct.TYPE_24__* %227)
  store %struct.TYPE_24__* %228, %struct.TYPE_24__** %11, align 8
  br label %206

229:                                              ; preds = %206
  br label %244

230:                                              ; preds = %150
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %232, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PredXact, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @MaxBackends, align 8
  %239 = load i64, i64* @max_prepared_xacts, align 8
  %240 = add nsw i64 %238, %239
  %241 = icmp sle i64 %237, %240
  %242 = zext i1 %241 to i32
  %243 = call i32 @Assert(i32 %242)
  br label %244

244:                                              ; preds = %230, %229
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %245, %struct.TYPE_24__** @MySerializableXact, align 8
  store i32 0, i32* @MyXactDidWrite, align 4
  %246 = load i32, i32* @SerializableXactHashLock, align 4
  %247 = call i32 @LWLockRelease(i32 %246)
  %248 = call i32 (...) @CreateLocalPredicateLockHash()
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %249, %struct.TYPE_23__** %4, align 8
  br label %250

250:                                              ; preds = %244, %90
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  ret %struct.TYPE_23__* %251
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @GET_VXID_FROM_PGPROC(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local %struct.TYPE_24__* @CreatePredXact(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @SummarizeOldestCommittedSxact(...) #1

declare dso_local %struct.TYPE_23__* @GetSnapshotData(%struct.TYPE_23__*) #1

declare dso_local i32 @ProcArrayInstallImportedXmin(i32, i32*) #1

declare dso_local i32 @ReleasePredXact(%struct.TYPE_24__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @OldSerXidSetActiveSerXmin(i32) #1

declare dso_local i64 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @TransactionIdFollows(i32, i32) #1

declare dso_local i32 @SHMQueueInit(i32*) #1

declare dso_local i32 @GetTopTransactionIdIfAny(...) #1

declare dso_local i32 @SHMQueueElemInit(i32*) #1

declare dso_local %struct.TYPE_24__* @FirstPredXact(...) #1

declare dso_local i32 @SxactIsCommitted(%struct.TYPE_24__*) #1

declare dso_local i32 @SxactIsDoomed(%struct.TYPE_24__*) #1

declare dso_local i32 @SxactIsReadOnly(%struct.TYPE_24__*) #1

declare dso_local i32 @SetPossibleUnsafeConflict(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @NextPredXact(%struct.TYPE_24__*) #1

declare dso_local i32 @CreateLocalPredicateLockHash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
