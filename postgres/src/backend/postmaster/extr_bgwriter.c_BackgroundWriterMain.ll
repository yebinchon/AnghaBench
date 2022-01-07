; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgwriter.c_BackgroundWriterMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_bgwriter.c_BackgroundWriterMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SIGHUP = common dso_local global i32 0, align 4
@BgSigHupHandler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@ReqShutdownHandler = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@bg_quickdie = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@bgwriter_sigusr1_handler = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@BlockSig = common dso_local global i32 0, align 4
@last_snapshot_ts = common dso_local global i8* null, align 8
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Background Writer\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@bgwriter_flush_after = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global i32* null, align 8
@PG_exception_stack = common dso_local global i32* null, align 8
@UnBlockSig = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@got_SIGHUP = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@shutdown_requested = common dso_local global i64 0, align 8
@ExitOnAnyError = common dso_local global i32 0, align 4
@LOG_SNAPSHOT_INTERVAL_MS = common dso_local global i32 0, align 4
@last_snapshot_lsn = common dso_local global i64 0, align 8
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@BgWriterDelay = common dso_local global i32 0, align 4
@WAIT_EVENT_BGWRITER_MAIN = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_2__* null, align 8
@HIBERNATE_FACTOR = common dso_local global i32 0, align 4
@WAIT_EVENT_BGWRITER_HIBERNATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BackgroundWriterMain() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* @SIGHUP, align 4
  %10 = load i32, i32* @BgSigHupHandler, align 4
  %11 = call i32 @pqsignal(i32 %9, i32 %10)
  %12 = load i32, i32* @SIGINT, align 4
  %13 = load i32, i32* @SIG_IGN, align 4
  %14 = call i32 @pqsignal(i32 %12, i32 %13)
  %15 = load i32, i32* @SIGTERM, align 4
  %16 = load i32, i32* @ReqShutdownHandler, align 4
  %17 = call i32 @pqsignal(i32 %15, i32 %16)
  %18 = load i32, i32* @SIGQUIT, align 4
  %19 = load i32, i32* @bg_quickdie, align 4
  %20 = call i32 @pqsignal(i32 %18, i32 %19)
  %21 = load i32, i32* @SIGALRM, align 4
  %22 = load i32, i32* @SIG_IGN, align 4
  %23 = call i32 @pqsignal(i32 %21, i32 %22)
  %24 = load i32, i32* @SIGPIPE, align 4
  %25 = load i32, i32* @SIG_IGN, align 4
  %26 = call i32 @pqsignal(i32 %24, i32 %25)
  %27 = load i32, i32* @SIGUSR1, align 4
  %28 = load i32, i32* @bgwriter_sigusr1_handler, align 4
  %29 = call i32 @pqsignal(i32 %27, i32 %28)
  %30 = load i32, i32* @SIGUSR2, align 4
  %31 = load i32, i32* @SIG_IGN, align 4
  %32 = call i32 @pqsignal(i32 %30, i32 %31)
  %33 = load i32, i32* @SIGCHLD, align 4
  %34 = load i32, i32* @SIG_DFL, align 4
  %35 = call i32 @pqsignal(i32 %33, i32 %34)
  %36 = load i32, i32* @SIGQUIT, align 4
  %37 = call i32 @sigdelset(i32* @BlockSig, i32 %36)
  %38 = call i8* (...) @GetCurrentTimestamp()
  store i8* %38, i8** @last_snapshot_ts, align 8
  %39 = load i32, i32* @TopMemoryContext, align 4
  %40 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %41 = call i32 @AllocSetContextCreate(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @MemoryContextSwitchTo(i32 %42)
  %44 = call i32 @WritebackContextInit(i32* %4, i32* @bgwriter_flush_after)
  %45 = load i32, i32* %1, align 4
  %46 = call i64 @sigsetjmp(i32 %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %0
  store i32* null, i32** @error_context_stack, align 8
  %49 = call i32 (...) @HOLD_INTERRUPTS()
  %50 = call i32 (...) @EmitErrorReport()
  %51 = call i32 (...) @LWLockReleaseAll()
  %52 = call i32 (...) @ConditionVariableCancelSleep()
  %53 = call i32 (...) @AbortBufferIO()
  %54 = call i32 (...) @UnlockBuffers()
  %55 = call i32 @ReleaseAuxProcessResources(i32 0)
  %56 = call i32 @AtEOXact_Buffers(i32 0)
  %57 = call i32 (...) @AtEOXact_SMgr()
  %58 = call i32 @AtEOXact_Files(i32 0)
  %59 = call i32 @AtEOXact_HashTables(i32 0)
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @MemoryContextSwitchTo(i32 %60)
  %62 = call i32 (...) @FlushErrorState()
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @MemoryContextResetAndDeleteChildren(i32 %63)
  %65 = call i32 @WritebackContextInit(i32* %4, i32* @bgwriter_flush_after)
  %66 = call i32 (...) @RESUME_INTERRUPTS()
  %67 = call i32 @pg_usleep(i64 1000000)
  %68 = call i32 (...) @smgrcloseall()
  %69 = call i32 (...) @pgstat_report_wait_end()
  br label %70

70:                                               ; preds = %48, %0
  store i32* %1, i32** @PG_exception_stack, align 8
  %71 = call i32 @PG_SETMASK(i32* @UnBlockSig)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %152, %70
  %73 = load i32, i32* @MyLatch, align 4
  %74 = call i32 @ResetLatch(i32 %73)
  %75 = load i32, i32* @got_SIGHUP, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  store i32 0, i32* @got_SIGHUP, align 4
  %78 = load i32, i32* @PGC_SIGHUP, align 4
  %79 = call i32 @ProcessConfigFile(i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i64, i64* @shutdown_requested, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  store i32 1, i32* @ExitOnAnyError, align 4
  %84 = call i32 @proc_exit(i32 0)
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 @BgBufferSync(i32* %4)
  store i32 %86, i32* %5, align 4
  %87 = call i32 (...) @pgstat_send_bgwriter()
  %88 = call i64 (...) @FirstCallSinceLastCheckpoint()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 (...) @smgrcloseall()
  br label %92

92:                                               ; preds = %90, %85
  %93 = call i64 (...) @XLogStandbyInfoActive()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %92
  %96 = call i32 (...) @RecoveryInProgress()
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %116, label %98

98:                                               ; preds = %95
  store i64 0, i64* %7, align 8
  %99 = call i8* (...) @GetCurrentTimestamp()
  %100 = ptrtoint i8* %99 to i64
  store i64 %100, i64* %8, align 8
  %101 = load i8*, i8** @last_snapshot_ts, align 8
  %102 = load i32, i32* @LOG_SNAPSHOT_INTERVAL_MS, align 4
  %103 = call i64 @TimestampTzPlusMilliseconds(i8* %101, i32 %102)
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %98
  %108 = load i64, i64* @last_snapshot_lsn, align 8
  %109 = call i64 (...) @GetLastImportantRecPtr()
  %110 = icmp sle i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = call i64 (...) @LogStandbySnapshot()
  store i64 %112, i64* @last_snapshot_lsn, align 8
  %113 = load i64, i64* %8, align 8
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** @last_snapshot_ts, align 8
  br label %115

115:                                              ; preds = %111, %107, %98
  br label %116

116:                                              ; preds = %115, %95, %92
  %117 = load i32, i32* @MyLatch, align 4
  %118 = load i32, i32* @WL_LATCH_SET, align 4
  %119 = load i32, i32* @WL_TIMEOUT, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @BgWriterDelay, align 4
  %124 = load i32, i32* @WAIT_EVENT_BGWRITER_MAIN, align 4
  %125 = call i32 @WaitLatch(i32 %117, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @WL_TIMEOUT, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %116
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %129
  %133 = load i32, i32* %3, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyProc, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @StrategyNotifyBgWriter(i32 %138)
  %140 = load i32, i32* @MyLatch, align 4
  %141 = load i32, i32* @WL_LATCH_SET, align 4
  %142 = load i32, i32* @WL_TIMEOUT, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @BgWriterDelay, align 4
  %147 = load i32, i32* @HIBERNATE_FACTOR, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* @WAIT_EVENT_BGWRITER_HIBERNATE, align 4
  %150 = call i32 @WaitLatch(i32 %140, i32 %145, i32 %148, i32 %149)
  %151 = call i32 @StrategyNotifyBgWriter(i32 -1)
  br label %152

152:                                              ; preds = %135, %132, %129, %116
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %3, align 4
  br label %72
}

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i8* @GetCurrentTimestamp(...) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @WritebackContextInit(i32*, i32*) #1

declare dso_local i64 @sigsetjmp(i32, i32) #1

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @EmitErrorReport(...) #1

declare dso_local i32 @LWLockReleaseAll(...) #1

declare dso_local i32 @ConditionVariableCancelSleep(...) #1

declare dso_local i32 @AbortBufferIO(...) #1

declare dso_local i32 @UnlockBuffers(...) #1

declare dso_local i32 @ReleaseAuxProcessResources(i32) #1

declare dso_local i32 @AtEOXact_Buffers(i32) #1

declare dso_local i32 @AtEOXact_SMgr(...) #1

declare dso_local i32 @AtEOXact_Files(i32) #1

declare dso_local i32 @AtEOXact_HashTables(i32) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @MemoryContextResetAndDeleteChildren(i32) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @smgrcloseall(...) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i32 @PG_SETMASK(i32*) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @BgBufferSync(i32*) #1

declare dso_local i32 @pgstat_send_bgwriter(...) #1

declare dso_local i64 @FirstCallSinceLastCheckpoint(...) #1

declare dso_local i64 @XLogStandbyInfoActive(...) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i64 @TimestampTzPlusMilliseconds(i8*, i32) #1

declare dso_local i64 @GetLastImportantRecPtr(...) #1

declare dso_local i64 @LogStandbySnapshot(...) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, i32) #1

declare dso_local i32 @StrategyNotifyBgWriter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
