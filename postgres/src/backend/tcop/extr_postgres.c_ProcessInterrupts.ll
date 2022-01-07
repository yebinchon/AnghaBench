; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_ProcessInterrupts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_ProcessInterrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InterruptHoldoffCount = common dso_local global i64 0, align 8
@CritSectionCount = common dso_local global i64 0, align 8
@InterruptPending = common dso_local global i32 0, align 4
@ProcDiePending = common dso_local global i32 0, align 4
@QueryCancelPending = common dso_local global i32 0, align 4
@ClientAuthInProgress = common dso_local global i64 0, align 8
@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@DestNone = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_QUERY_CANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"canceling authentication due to timeout\00", align 1
@ERRCODE_ADMIN_SHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"terminating autovacuum process due to administrator command\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"terminating logical replication worker due to administrator command\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"logical replication launcher shutting down\00", align 1
@RecoveryConflictPending = common dso_local global i32 0, align 4
@RecoveryConflictRetryable = common dso_local global i64 0, align 8
@RecoveryConflictReason = common dso_local global i64 0, align 8
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"terminating connection due to conflict with recovery\00", align 1
@PROCSIG_RECOVERY_CONFLICT_DATABASE = common dso_local global i64 0, align 8
@ERRCODE_DATABASE_DROPPED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"terminating connection due to administrator command\00", align 1
@ClientConnectionLost = common dso_local global i64 0, align 8
@ERRCODE_CONNECTION_FAILURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"connection to client lost\00", align 1
@DoingCommandRead = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [85 x i8] c"In a moment you should be able to reconnect to the database and repeat your command.\00", align 1
@QueryCancelHoldoffCount = common dso_local global i64 0, align 8
@LOCK_TIMEOUT = common dso_local global i32 0, align 4
@STATEMENT_TIMEOUT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_LOCK_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"canceling statement due to lock timeout\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"canceling statement due to statement timeout\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"canceling autovacuum task\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"canceling statement due to conflict with recovery\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"canceling statement due to user request\00", align 1
@IdleInTransactionSessionTimeoutPending = common dso_local global i32 0, align 4
@IdleInTransactionSessionTimeout = common dso_local global i64 0, align 8
@ERRCODE_IDLE_IN_TRANSACTION_SESSION_TIMEOUT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [58 x i8] c"terminating connection due to idle-in-transaction timeout\00", align 1
@ParallelMessagePending = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessInterrupts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @InterruptHoldoffCount, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @CritSectionCount, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  br label %230

9:                                                ; preds = %5
  store i32 0, i32* @InterruptPending, align 4
  %10 = load i32, i32* @ProcDiePending, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %101

12:                                               ; preds = %9
  store i32 0, i32* @ProcDiePending, align 4
  store i32 0, i32* @QueryCancelPending, align 4
  %13 = call i32 (...) @LockErrorCleanup()
  %14 = load i64, i64* @ClientAuthInProgress, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i64, i64* @whereToSendOutput, align 8
  %18 = load i64, i64* @DestRemote, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @DestNone, align 8
  store i64 %21, i64* @whereToSendOutput, align 8
  br label %22

22:                                               ; preds = %20, %16, %12
  %23 = load i64, i64* @ClientAuthInProgress, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @FATAL, align 4
  %27 = load i32, i32* @ERRCODE_QUERY_CANCELED, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %26, i32 %29)
  br label %100

31:                                               ; preds = %22
  %32 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @FATAL, align 4
  %36 = load i32, i32* @ERRCODE_ADMIN_SHUTDOWN, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %99

40:                                               ; preds = %31
  %41 = call i64 (...) @IsLogicalWorker()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* @FATAL, align 4
  %45 = load i32, i32* @ERRCODE_ADMIN_SHUTDOWN, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %98

49:                                               ; preds = %40
  %50 = call i64 (...) @IsLogicalLauncher()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* @DEBUG1, align 4
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %55 = call i32 @ereport(i32 %53, i32 %54)
  %56 = call i32 @proc_exit(i32 1)
  br label %97

57:                                               ; preds = %49
  %58 = load i32, i32* @RecoveryConflictPending, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i64, i64* @RecoveryConflictRetryable, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i64, i64* @RecoveryConflictReason, align 8
  %65 = call i32 @pgstat_report_recovery_conflict(i64 %64)
  %66 = load i32, i32* @FATAL, align 4
  %67 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 (...) @errdetail_recovery_conflict()
  %71 = call i32 @ereport(i32 %66, i32 %70)
  br label %96

72:                                               ; preds = %60, %57
  %73 = load i32, i32* @RecoveryConflictPending, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i64, i64* @RecoveryConflictReason, align 8
  %77 = load i64, i64* @PROCSIG_RECOVERY_CONFLICT_DATABASE, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @Assert(i32 %79)
  %81 = load i64, i64* @RecoveryConflictReason, align 8
  %82 = call i32 @pgstat_report_recovery_conflict(i64 %81)
  %83 = load i32, i32* @FATAL, align 4
  %84 = load i32, i32* @ERRCODE_DATABASE_DROPPED, align 4
  %85 = call i32 @errcode(i32 %84)
  %86 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %87 = call i32 (...) @errdetail_recovery_conflict()
  %88 = call i32 @ereport(i32 %83, i32 %87)
  br label %95

89:                                               ; preds = %72
  %90 = load i32, i32* @FATAL, align 4
  %91 = load i32, i32* @ERRCODE_ADMIN_SHUTDOWN, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %94 = call i32 @ereport(i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %89, %75
  br label %96

96:                                               ; preds = %95, %63
  br label %97

97:                                               ; preds = %96, %52
  br label %98

98:                                               ; preds = %97, %43
  br label %99

99:                                               ; preds = %98, %34
  br label %100

100:                                              ; preds = %99, %25
  br label %101

101:                                              ; preds = %100, %9
  %102 = load i64, i64* @ClientConnectionLost, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  store i32 0, i32* @QueryCancelPending, align 4
  %105 = call i32 (...) @LockErrorCleanup()
  %106 = load i64, i64* @DestNone, align 8
  store i64 %106, i64* @whereToSendOutput, align 8
  %107 = load i32, i32* @FATAL, align 4
  %108 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %109 = call i32 @errcode(i32 %108)
  %110 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %111 = call i32 @ereport(i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %104, %101
  %113 = load i32, i32* @RecoveryConflictPending, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load i64, i64* @DoingCommandRead, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  store i32 0, i32* @QueryCancelPending, align 4
  store i32 0, i32* @RecoveryConflictPending, align 4
  %119 = call i32 (...) @LockErrorCleanup()
  %120 = load i64, i64* @RecoveryConflictReason, align 8
  %121 = call i32 @pgstat_report_recovery_conflict(i64 %120)
  %122 = load i32, i32* @FATAL, align 4
  %123 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %124 = call i32 @errcode(i32 %123)
  %125 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %126 = call i32 (...) @errdetail_recovery_conflict()
  %127 = call i32 @errhint(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0))
  %128 = call i32 @ereport(i32 %122, i32 %127)
  br label %129

129:                                              ; preds = %118, %115, %112
  %130 = load i32, i32* @QueryCancelPending, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i64, i64* @QueryCancelHoldoffCount, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 1, i32* @InterruptPending, align 4
  br label %211

136:                                              ; preds = %132, %129
  %137 = load i32, i32* @QueryCancelPending, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %210

139:                                              ; preds = %136
  store i32 0, i32* @QueryCancelPending, align 4
  %140 = load i32, i32* @LOCK_TIMEOUT, align 4
  %141 = call i32 @get_timeout_indicator(i32 %140, i32 1)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* @STATEMENT_TIMEOUT, align 4
  %143 = call i32 @get_timeout_indicator(i32 %142, i32 1)
  store i32 %143, i32* %2, align 4
  %144 = load i32, i32* %1, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load i32, i32* %2, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32, i32* @STATEMENT_TIMEOUT, align 4
  %151 = call i64 @get_timeout_finish_time(i32 %150)
  %152 = load i32, i32* @LOCK_TIMEOUT, align 4
  %153 = call i64 @get_timeout_finish_time(i32 %152)
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  store i32 0, i32* %1, align 4
  br label %156

156:                                              ; preds = %155, %149, %146, %139
  %157 = load i32, i32* %1, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = call i32 (...) @LockErrorCleanup()
  %161 = load i32, i32* @ERROR, align 4
  %162 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %163 = call i32 @errcode(i32 %162)
  %164 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %165 = call i32 @ereport(i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %159, %156
  %167 = load i32, i32* %2, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = call i32 (...) @LockErrorCleanup()
  %171 = load i32, i32* @ERROR, align 4
  %172 = load i32, i32* @ERRCODE_QUERY_CANCELED, align 4
  %173 = call i32 @errcode(i32 %172)
  %174 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %175 = call i32 @ereport(i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %169, %166
  %177 = call i64 (...) @IsAutoVacuumWorkerProcess()
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = call i32 (...) @LockErrorCleanup()
  %181 = load i32, i32* @ERROR, align 4
  %182 = load i32, i32* @ERRCODE_QUERY_CANCELED, align 4
  %183 = call i32 @errcode(i32 %182)
  %184 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %185 = call i32 @ereport(i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %179, %176
  %187 = load i32, i32* @RecoveryConflictPending, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %186
  store i32 0, i32* @RecoveryConflictPending, align 4
  %190 = call i32 (...) @LockErrorCleanup()
  %191 = load i64, i64* @RecoveryConflictReason, align 8
  %192 = call i32 @pgstat_report_recovery_conflict(i64 %191)
  %193 = load i32, i32* @ERROR, align 4
  %194 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %195 = call i32 @errcode(i32 %194)
  %196 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %197 = call i32 (...) @errdetail_recovery_conflict()
  %198 = call i32 @ereport(i32 %193, i32 %197)
  br label %199

199:                                              ; preds = %189, %186
  %200 = load i64, i64* @DoingCommandRead, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %199
  %203 = call i32 (...) @LockErrorCleanup()
  %204 = load i32, i32* @ERROR, align 4
  %205 = load i32, i32* @ERRCODE_QUERY_CANCELED, align 4
  %206 = call i32 @errcode(i32 %205)
  %207 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %208 = call i32 @ereport(i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %202, %199
  br label %210

210:                                              ; preds = %209, %136
  br label %211

211:                                              ; preds = %210, %135
  %212 = load i32, i32* @IdleInTransactionSessionTimeoutPending, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %211
  %215 = load i64, i64* @IdleInTransactionSessionTimeout, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i32, i32* @FATAL, align 4
  %219 = load i32, i32* @ERRCODE_IDLE_IN_TRANSACTION_SESSION_TIMEOUT, align 4
  %220 = call i32 @errcode(i32 %219)
  %221 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  %222 = call i32 @ereport(i32 %218, i32 %221)
  br label %224

223:                                              ; preds = %214
  store i32 0, i32* @IdleInTransactionSessionTimeoutPending, align 4
  br label %224

224:                                              ; preds = %223, %217
  br label %225

225:                                              ; preds = %224, %211
  %226 = load i64, i64* @ParallelMessagePending, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %225
  %229 = call i32 (...) @HandleParallelMessages()
  br label %230

230:                                              ; preds = %8, %228, %225
  ret void
}

declare dso_local i32 @LockErrorCleanup(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @IsAutoVacuumWorkerProcess(...) #1

declare dso_local i64 @IsLogicalWorker(...) #1

declare dso_local i64 @IsLogicalLauncher(...) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @pgstat_report_recovery_conflict(i64) #1

declare dso_local i32 @errdetail_recovery_conflict(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @get_timeout_indicator(i32, i32) #1

declare dso_local i64 @get_timeout_finish_time(i32) #1

declare dso_local i32 @HandleParallelMessages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
