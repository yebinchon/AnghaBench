; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_CheckpointerMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_checkpointer.c_CheckpointerMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@MyProcPid = common dso_local global i32 0, align 4
@CheckpointerShmem = common dso_local global %struct.TYPE_9__* null, align 8
@SIGHUP = common dso_local global i32 0, align 4
@ChkptSigHupHandler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@ReqCheckpointHandler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@chkpt_quickdie = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@chkpt_sigusr1_handler = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@ReqShutdownHandler = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@BlockSig = common dso_local global i32 0, align 4
@last_xlog_switch_time = common dso_local global i32 0, align 4
@last_checkpoint_time = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Checkpointer\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global i32* null, align 8
@ckpt_active = common dso_local global i32 0, align 4
@PG_exception_stack = common dso_local global i32* null, align 8
@UnBlockSig = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_8__* null, align 8
@ProcGlobal = common dso_local global %struct.TYPE_7__* null, align 8
@MyLatch = common dso_local global i32 0, align 4
@got_SIGHUP = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@shutdown_requested = common dso_local global i64 0, align 8
@ExitOnAnyError = common dso_local global i32 0, align 4
@BgWriterStats = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@CheckPointTimeout = common dso_local global i32 0, align 4
@CHECKPOINT_CAUSE_TIME = common dso_local global i32 0, align 4
@CHECKPOINT_END_OF_RECOVERY = common dso_local global i32 0, align 4
@CHECKPOINT_CAUSE_XLOG = common dso_local global i32 0, align 4
@CheckPointWarning = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"checkpoints are occurring too frequently (%d second apart)\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"checkpoints are occurring too frequently (%d seconds apart)\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Consider increasing the configuration parameter \22max_wal_size\22.\00", align 1
@ckpt_start_recptr = common dso_local global i32 0, align 4
@ckpt_start_time = common dso_local global i32 0, align 4
@ckpt_cached_elapsed = common dso_local global i64 0, align 8
@XLogArchiveTimeout = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_CHECKPOINTER_MAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckpointerMain() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MyProcPid, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @SIGHUP, align 4
  %14 = load i32, i32* @ChkptSigHupHandler, align 4
  %15 = call i32 @pqsignal(i32 %13, i32 %14)
  %16 = load i32, i32* @SIGINT, align 4
  %17 = load i32, i32* @ReqCheckpointHandler, align 4
  %18 = call i32 @pqsignal(i32 %16, i32 %17)
  %19 = load i32, i32* @SIGTERM, align 4
  %20 = load i32, i32* @SIG_IGN, align 4
  %21 = call i32 @pqsignal(i32 %19, i32 %20)
  %22 = load i32, i32* @SIGQUIT, align 4
  %23 = load i32, i32* @chkpt_quickdie, align 4
  %24 = call i32 @pqsignal(i32 %22, i32 %23)
  %25 = load i32, i32* @SIGALRM, align 4
  %26 = load i32, i32* @SIG_IGN, align 4
  %27 = call i32 @pqsignal(i32 %25, i32 %26)
  %28 = load i32, i32* @SIGPIPE, align 4
  %29 = load i32, i32* @SIG_IGN, align 4
  %30 = call i32 @pqsignal(i32 %28, i32 %29)
  %31 = load i32, i32* @SIGUSR1, align 4
  %32 = load i32, i32* @chkpt_sigusr1_handler, align 4
  %33 = call i32 @pqsignal(i32 %31, i32 %32)
  %34 = load i32, i32* @SIGUSR2, align 4
  %35 = load i32, i32* @ReqShutdownHandler, align 4
  %36 = call i32 @pqsignal(i32 %34, i32 %35)
  %37 = load i32, i32* @SIGCHLD, align 4
  %38 = load i32, i32* @SIG_DFL, align 4
  %39 = call i32 @pqsignal(i32 %37, i32 %38)
  %40 = load i32, i32* @SIGQUIT, align 4
  %41 = call i32 @sigdelset(i32* @BlockSig, i32 %40)
  %42 = call i64 @time(i32* null)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* @last_xlog_switch_time, align 4
  store i32 %43, i32* @last_checkpoint_time, align 4
  %44 = load i32, i32* @TopMemoryContext, align 4
  %45 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %46 = call i32 @AllocSetContextCreate(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @MemoryContextSwitchTo(i32 %47)
  %49 = load i32, i32* %1, align 4
  %50 = call i64 @sigsetjmp(i32 %49, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %95

52:                                               ; preds = %0
  store i32* null, i32** @error_context_stack, align 8
  %53 = call i32 (...) @HOLD_INTERRUPTS()
  %54 = call i32 (...) @EmitErrorReport()
  %55 = call i32 (...) @LWLockReleaseAll()
  %56 = call i32 (...) @ConditionVariableCancelSleep()
  %57 = call i32 (...) @pgstat_report_wait_end()
  %58 = call i32 (...) @AbortBufferIO()
  %59 = call i32 (...) @UnlockBuffers()
  %60 = call i32 @ReleaseAuxProcessResources(i32 0)
  %61 = call i32 @AtEOXact_Buffers(i32 0)
  %62 = call i32 (...) @AtEOXact_SMgr()
  %63 = call i32 @AtEOXact_Files(i32 0)
  %64 = call i32 @AtEOXact_HashTables(i32 0)
  %65 = load i32, i32* @ckpt_active, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %52
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = call i32 @SpinLockAcquire(i32* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = call i32 @SpinLockRelease(i32* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = call i32 @ConditionVariableBroadcast(i32* %84)
  store i32 0, i32* @ckpt_active, align 4
  br label %86

86:                                               ; preds = %67, %52
  %87 = load i32, i32* %2, align 4
  %88 = call i32 @MemoryContextSwitchTo(i32 %87)
  %89 = call i32 (...) @FlushErrorState()
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @MemoryContextResetAndDeleteChildren(i32 %90)
  %92 = call i32 (...) @RESUME_INTERRUPTS()
  %93 = call i32 @pg_usleep(i64 1000000)
  %94 = call i32 (...) @smgrcloseall()
  br label %95

95:                                               ; preds = %86, %0
  store i32* %1, i32** @PG_exception_stack, align 8
  %96 = call i32 @PG_SETMASK(i32* @UnBlockSig)
  %97 = call i32 (...) @UpdateSharedMemoryConfig()
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ProcGlobal, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32* %99, i32** %101, align 8
  br label %102

102:                                              ; preds = %273, %266, %249, %95
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %103 = load i32, i32* @MyLatch, align 4
  %104 = call i32 @ResetLatch(i32 %103)
  %105 = call i32 (...) @AbsorbSyncRequests()
  %106 = load i32, i32* @got_SIGHUP, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  store i32 0, i32* @got_SIGHUP, align 4
  %109 = load i32, i32* @PGC_SIGHUP, align 4
  %110 = call i32 @ProcessConfigFile(i32 %109)
  %111 = call i32 (...) @UpdateSharedMemoryConfig()
  br label %112

112:                                              ; preds = %108, %102
  %113 = load i64, i64* @shutdown_requested, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  store i32 1, i32* @ExitOnAnyError, align 4
  %116 = call i32 @ShutdownXLOG(i32 0, i32 0)
  %117 = call i32 @proc_exit(i32 0)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %120 = bitcast %struct.TYPE_9__* %119 to %struct.TYPE_6__*
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load volatile i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @BgWriterStats, i32 0, i32 1), align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @BgWriterStats, i32 0, i32 1), align 4
  br label %127

127:                                              ; preds = %124, %118
  %128 = call i64 @time(i32* null)
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @last_checkpoint_time, align 4
  %132 = sub nsw i32 %130, %131
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @CheckPointTimeout, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %127
  %137 = load i32, i32* %3, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @BgWriterStats, i32 0, i32 0), align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @BgWriterStats, i32 0, i32 0), align 4
  br label %142

142:                                              ; preds = %139, %136
  store i32 1, i32* %3, align 4
  %143 = load i32, i32* @CHECKPOINT_CAUSE_TIME, align 4
  %144 = load i32, i32* %4, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %142, %127
  %147 = load i32, i32* %3, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %238

149:                                              ; preds = %146
  store i32 0, i32* %8, align 4
  %150 = call i32 (...) @RecoveryInProgress()
  store i32 %150, i32* %9, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = call i32 @SpinLockAcquire(i32* %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %4, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store i32 0, i32* %160, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %162, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = call i32 @SpinLockRelease(i32* %166)
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  %170 = call i32 @ConditionVariableBroadcast(i32* %169)
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @CHECKPOINT_END_OF_RECOVERY, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %149
  store i32 0, i32* %9, align 4
  br label %176

176:                                              ; preds = %175, %149
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @CHECKPOINT_CAUSE_XLOG, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @CheckPointWarning, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load i32, i32* @LOG, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @errmsg_plural(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %190, i32 %191)
  %193 = call i32 @errhint(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %194 = call i32 @ereport(i32 %189, i32 %193)
  br label %195

195:                                              ; preds = %188, %184, %179, %176
  store i32 1, i32* @ckpt_active, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = call i32 @GetXLogReplayRecPtr(i32* null)
  store i32 %199, i32* @ckpt_start_recptr, align 4
  br label %202

200:                                              ; preds = %195
  %201 = call i32 (...) @GetInsertRecPtr()
  store i32 %201, i32* @ckpt_start_recptr, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = load i32, i32* %5, align 4
  store i32 %203, i32* @ckpt_start_time, align 4
  store i64 0, i64* @ckpt_cached_elapsed, align 8
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @CreateCheckPoint(i32 %207)
  store i32 1, i32* %8, align 4
  br label %212

209:                                              ; preds = %202
  %210 = load i32, i32* %4, align 4
  %211 = call i32 @CreateRestartPoint(i32 %210)
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %209, %206
  %213 = call i32 (...) @smgrcloseall()
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 2
  %216 = call i32 @SpinLockAcquire(i32* %215)
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = call i32 @SpinLockRelease(i32* %223)
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** @CheckpointerShmem, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = call i32 @ConditionVariableBroadcast(i32* %226)
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %212
  %231 = load i32, i32* %5, align 4
  store i32 %231, i32* @last_checkpoint_time, align 4
  br label %237

232:                                              ; preds = %212
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* @CheckPointTimeout, align 4
  %235 = sub nsw i32 %233, %234
  %236 = add nsw i32 %235, 15
  store i32 %236, i32* @last_checkpoint_time, align 4
  br label %237

237:                                              ; preds = %232, %230
  store i32 0, i32* @ckpt_active, align 4
  br label %238

238:                                              ; preds = %237, %146
  %239 = call i32 (...) @CheckArchiveTimeout()
  %240 = call i32 (...) @pgstat_send_bgwriter()
  %241 = call i64 @time(i32* null)
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %5, align 4
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* @last_checkpoint_time, align 4
  %245 = sub nsw i32 %243, %244
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @CheckPointTimeout, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  br label %102

250:                                              ; preds = %238
  %251 = load i32, i32* @CheckPointTimeout, align 4
  %252 = load i32, i32* %6, align 4
  %253 = sub nsw i32 %251, %252
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* @XLogArchiveTimeout, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %273

256:                                              ; preds = %250
  %257 = call i32 (...) @RecoveryInProgress()
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %273, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* @last_xlog_switch_time, align 4
  %262 = sub nsw i32 %260, %261
  store i32 %262, i32* %6, align 4
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* @XLogArchiveTimeout, align 4
  %265 = icmp sge i32 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %259
  br label %102

267:                                              ; preds = %259
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @XLogArchiveTimeout, align 4
  %270 = load i32, i32* %6, align 4
  %271 = sub nsw i32 %269, %270
  %272 = call i32 @Min(i32 %268, i32 %271)
  store i32 %272, i32* %7, align 4
  br label %273

273:                                              ; preds = %267, %256, %250
  %274 = load i32, i32* @MyLatch, align 4
  %275 = load i32, i32* @WL_LATCH_SET, align 4
  %276 = load i32, i32* @WL_TIMEOUT, align 4
  %277 = or i32 %275, %276
  %278 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = mul nsw i64 %281, 1000
  %283 = trunc i64 %282 to i32
  %284 = load i32, i32* @WAIT_EVENT_CHECKPOINTER_MAIN, align 4
  %285 = call i32 @WaitLatch(i32 %274, i32 %279, i32 %283, i32 %284)
  br label %102
}

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @sigsetjmp(i32, i32) #1

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @EmitErrorReport(...) #1

declare dso_local i32 @LWLockReleaseAll(...) #1

declare dso_local i32 @ConditionVariableCancelSleep(...) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i32 @AbortBufferIO(...) #1

declare dso_local i32 @UnlockBuffers(...) #1

declare dso_local i32 @ReleaseAuxProcessResources(i32) #1

declare dso_local i32 @AtEOXact_Buffers(i32) #1

declare dso_local i32 @AtEOXact_SMgr(...) #1

declare dso_local i32 @AtEOXact_Files(i32) #1

declare dso_local i32 @AtEOXact_HashTables(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @ConditionVariableBroadcast(i32*) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @MemoryContextResetAndDeleteChildren(i32) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @smgrcloseall(...) #1

declare dso_local i32 @PG_SETMASK(i32*) #1

declare dso_local i32 @UpdateSharedMemoryConfig(...) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @AbsorbSyncRequests(...) #1

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @ShutdownXLOG(i32, i32) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_plural(i8*, i8*, i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @GetXLogReplayRecPtr(i32*) #1

declare dso_local i32 @GetInsertRecPtr(...) #1

declare dso_local i32 @CreateCheckPoint(i32) #1

declare dso_local i32 @CreateRestartPoint(i32) #1

declare dso_local i32 @CheckArchiveTimeout(...) #1

declare dso_local i32 @pgstat_send_bgwriter(...) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
