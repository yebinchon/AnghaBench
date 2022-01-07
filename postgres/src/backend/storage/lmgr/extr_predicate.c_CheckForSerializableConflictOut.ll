; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_CheckForSerializableConflictOut.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_CheckForSerializableConflictOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }

@MySerializableXact = common dso_local global %struct.TYPE_24__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"could not serialize access due to read/write dependencies among transactions\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"Reason code: Canceled on identification as a pivot, during conflict out checking.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"The transaction might succeed if retried.\00", align 1
@TransactionXmin = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"unrecognized return value from HeapTupleSatisfiesVacuum: %u\00", align 1
@InvalidTransactionId = common dso_local global i32 0, align 4
@SerializableXactHashLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@SerializableXidHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@InvalidSerCommitSeqNo = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"Reason code: Canceled on conflict out to old pivot %u.\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"Reason code: Canceled on identification as a pivot, with conflict out to old committed transaction %u.\00", align 1
@SXACT_FLAG_SUMMARY_CONFLICT_OUT = common dso_local global i32 0, align 4
@SXACT_FLAG_DOOMED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"Reason code: Canceled on conflict out to old pivot.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckForSerializableConflictOut(i32 %0, i32 %1, %struct.TYPE_25__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @SerializationNeededForRead(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %266

22:                                               ; preds = %5
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %24 = call i64 @SxactIsDoomed(%struct.TYPE_24__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @errdetail_internal(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @errhint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @ereport(i32 %27, i32 %32)
  br label %34

34:                                               ; preds = %26, %22
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %36 = load i32, i32* @TransactionXmin, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_25__* %35, i32 %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  switch i32 %39, label %69 [
    i32 129, label %40
    i32 128, label %49
    i32 131, label %58
    i32 130, label %63
    i32 132, label %68
  ]

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %266

44:                                               ; preds = %40
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @HeapTupleHeaderGetXmin(i32 %47)
  store i32 %48, i32* %11, align 4
  br label %74

49:                                               ; preds = %34
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %266

53:                                               ; preds = %49
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @HeapTupleHeaderGetUpdateXid(i32 %56)
  store i32 %57, i32* %11, align 4
  br label %74

58:                                               ; preds = %34
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @HeapTupleHeaderGetUpdateXid(i32 %61)
  store i32 %62, i32* %11, align 4
  br label %74

63:                                               ; preds = %34
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @HeapTupleHeaderGetXmin(i32 %66)
  store i32 %67, i32* %11, align 4
  br label %74

68:                                               ; preds = %34
  br label %266

69:                                               ; preds = %34
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @elog(i32 %70, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %69, %63, %58, %53, %44
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @TransactionIdIsValid(i32 %75)
  %77 = call i32 @Assert(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @TransactionXmin, align 4
  %80 = call i32 @TransactionIdFollowsOrEquals(i32 %78, i32 %79)
  %81 = call i32 @Assert(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (...) @GetTopTransactionIdIfAny()
  %84 = call i32 @TransactionIdEquals(i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %266

87:                                               ; preds = %74
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @SubTransGetTopmostTransaction(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @TransactionXmin, align 4
  %92 = call i64 @TransactionIdPrecedes(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %266

95:                                               ; preds = %87
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (...) @GetTopTransactionIdIfAny()
  %98 = call i32 @TransactionIdEquals(i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %266

101:                                              ; preds = %95
  %102 = load i32, i32* %11, align 4
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @SerializableXactHashLock, align 4
  %105 = load i32, i32* @LW_EXCLUSIVE, align 4
  %106 = call i32 @LWLockAcquire(i32 %104, i32 %105)
  %107 = load i32, i32* @SerializableXidHash, align 4
  %108 = load i32, i32* @HASH_FIND, align 4
  %109 = call i64 @hash_search(i32 %107, %struct.TYPE_22__* %12, i32 %108, i32* null)
  %110 = inttoptr i64 %109 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %110, %struct.TYPE_23__** %13, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %112 = icmp ne %struct.TYPE_23__* %111, null
  br i1 %112, label %169, label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %11, align 4
  %115 = call i64 @OldSerXidGetMinConflictCommitSeqNo(i32 %114)
  store i64 %115, i64* %16, align 8
  %116 = load i64, i64* %16, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %166

118:                                              ; preds = %113
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* @InvalidSerCommitSeqNo, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %124 = call i64 @SxactIsReadOnly(%struct.TYPE_24__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i64, i64* %16, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sle i64 %127, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %126, %122
  %134 = load i32, i32* @ERROR, align 4
  %135 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %136 = call i32 @errcode(i32 %135)
  %137 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %138 = load i32, i32* %11, align 4
  %139 = call i32 (i8*, ...) @errdetail_internal(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = call i32 @errhint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %141 = call i32 @ereport(i32 %134, i32 %140)
  br label %142

142:                                              ; preds = %133, %126, %118
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %144 = call i64 @SxactHasSummaryConflictIn(%struct.TYPE_24__* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 3
  %149 = call i32 @SHMQueueEmpty(i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %146, %142
  %152 = load i32, i32* @ERROR, align 4
  %153 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %154 = call i32 @errcode(i32 %153)
  %155 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %156 = load i32, i32* %11, align 4
  %157 = call i32 (i8*, ...) @errdetail_internal(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  %158 = call i32 @errhint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %159 = call i32 @ereport(i32 %152, i32 %158)
  br label %160

160:                                              ; preds = %151, %146
  %161 = load i32, i32* @SXACT_FLAG_SUMMARY_CONFLICT_OUT, align 4
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %113
  %167 = load i32, i32* @SerializableXactHashLock, align 4
  %168 = call i32 @LWLockRelease(i32 %167)
  br label %266

169:                                              ; preds = %101
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  store %struct.TYPE_24__* %172, %struct.TYPE_24__** %14, align 8
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @TransactionIdEquals(i32 %175, i32 %176)
  %178 = call i32 @Assert(i32 %177)
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %181 = icmp eq %struct.TYPE_24__* %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %169
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %184 = call i64 @SxactIsDoomed(%struct.TYPE_24__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182, %169
  %187 = load i32, i32* @SerializableXactHashLock, align 4
  %188 = call i32 @LWLockRelease(i32 %187)
  br label %266

189:                                              ; preds = %182
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %191 = call i64 @SxactHasSummaryConflictOut(%struct.TYPE_24__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %189
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %195 = call i32 @SxactIsPrepared(%struct.TYPE_24__* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* @SXACT_FLAG_DOOMED, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load i32, i32* @SerializableXactHashLock, align 4
  %204 = call i32 @LWLockRelease(i32 %203)
  br label %266

205:                                              ; preds = %193
  %206 = load i32, i32* @SerializableXactHashLock, align 4
  %207 = call i32 @LWLockRelease(i32 %206)
  %208 = load i32, i32* @ERROR, align 4
  %209 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %210 = call i32 @errcode(i32 %209)
  %211 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %212 = call i32 (i8*, ...) @errdetail_internal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %213 = call i32 @errhint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %214 = call i32 @ereport(i32 %208, i32 %213)
  br label %215

215:                                              ; preds = %205
  br label %216

216:                                              ; preds = %215, %189
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %218 = call i64 @SxactIsReadOnly(%struct.TYPE_24__* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %245

220:                                              ; preds = %216
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %222 = call i64 @SxactIsCommitted(%struct.TYPE_24__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %245

224:                                              ; preds = %220
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %226 = call i64 @SxactHasSummaryConflictOut(%struct.TYPE_24__* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %245, label %228

228:                                              ; preds = %224
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %230 = call i32 @SxactHasConflictOut(%struct.TYPE_24__* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %228
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp slt i64 %236, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %232, %228
  %243 = load i32, i32* @SerializableXactHashLock, align 4
  %244 = call i32 @LWLockRelease(i32 %243)
  br label %266

245:                                              ; preds = %232, %224, %220, %216
  %246 = load i32, i32* %11, align 4
  %247 = call i32 @XidIsConcurrent(i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = load i32, i32* @SerializableXactHashLock, align 4
  %251 = call i32 @LWLockRelease(i32 %250)
  br label %266

252:                                              ; preds = %245
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %255 = call i64 @RWConflictExists(%struct.TYPE_24__* %253, %struct.TYPE_24__* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load i32, i32* @SerializableXactHashLock, align 4
  %259 = call i32 @LWLockRelease(i32 %258)
  br label %266

260:                                              ; preds = %252
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MySerializableXact, align 8
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %263 = call i32 @FlagRWConflict(%struct.TYPE_24__* %261, %struct.TYPE_24__* %262)
  %264 = load i32, i32* @SerializableXactHashLock, align 4
  %265 = call i32 @LWLockRelease(i32 %264)
  br label %266

266:                                              ; preds = %260, %257, %249, %242, %197, %186, %166, %100, %94, %86, %68, %52, %43, %21
  ret void
}

declare dso_local i32 @SerializationNeededForRead(i32, i32) #1

declare dso_local i64 @SxactIsDoomed(%struct.TYPE_24__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail_internal(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(i32) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdFollowsOrEquals(i32, i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @GetTopTransactionIdIfAny(...) #1

declare dso_local i32 @SubTransGetTopmostTransaction(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @hash_search(i32, %struct.TYPE_22__*, i32, i32*) #1

declare dso_local i64 @OldSerXidGetMinConflictCommitSeqNo(i32) #1

declare dso_local i64 @SxactIsReadOnly(%struct.TYPE_24__*) #1

declare dso_local i64 @SxactHasSummaryConflictIn(%struct.TYPE_24__*) #1

declare dso_local i32 @SHMQueueEmpty(i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @SxactHasSummaryConflictOut(%struct.TYPE_24__*) #1

declare dso_local i32 @SxactIsPrepared(%struct.TYPE_24__*) #1

declare dso_local i64 @SxactIsCommitted(%struct.TYPE_24__*) #1

declare dso_local i32 @SxactHasConflictOut(%struct.TYPE_24__*) #1

declare dso_local i32 @XidIsConcurrent(i32) #1

declare dso_local i64 @RWConflictExists(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @FlagRWConflict(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
