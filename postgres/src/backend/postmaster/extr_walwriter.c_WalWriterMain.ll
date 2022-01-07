; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_walwriter.c_WalWriterMain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_walwriter.c_WalWriterMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@SIGHUP = common dso_local global i32 0, align 4
@WalSigHupHandler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@WalShutdownHandler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@wal_quickdie = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@walwriter_sigusr1_handler = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@BlockSig = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Wal Writer\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global i32* null, align 8
@PG_exception_stack = common dso_local global i32* null, align 8
@UnBlockSig = common dso_local global i32 0, align 4
@LOOPS_UNTIL_HIBERNATE = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_4__* null, align 8
@ProcGlobal = common dso_local global %struct.TYPE_3__* null, align 8
@MyLatch = common dso_local global i32 0, align 4
@got_SIGHUP = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@shutdown_requested = common dso_local global i64 0, align 8
@WalWriterDelay = common dso_local global i64 0, align 8
@HIBERNATE_FACTOR = common dso_local global i64 0, align 8
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_WAL_WRITER_MAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WalWriterMain() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @SIGHUP, align 4
  %7 = load i32, i32* @WalSigHupHandler, align 4
  %8 = call i32 @pqsignal(i32 %6, i32 %7)
  %9 = load i32, i32* @SIGINT, align 4
  %10 = load i32, i32* @WalShutdownHandler, align 4
  %11 = call i32 @pqsignal(i32 %9, i32 %10)
  %12 = load i32, i32* @SIGTERM, align 4
  %13 = load i32, i32* @WalShutdownHandler, align 4
  %14 = call i32 @pqsignal(i32 %12, i32 %13)
  %15 = load i32, i32* @SIGQUIT, align 4
  %16 = load i32, i32* @wal_quickdie, align 4
  %17 = call i32 @pqsignal(i32 %15, i32 %16)
  %18 = load i32, i32* @SIGALRM, align 4
  %19 = load i32, i32* @SIG_IGN, align 4
  %20 = call i32 @pqsignal(i32 %18, i32 %19)
  %21 = load i32, i32* @SIGPIPE, align 4
  %22 = load i32, i32* @SIG_IGN, align 4
  %23 = call i32 @pqsignal(i32 %21, i32 %22)
  %24 = load i32, i32* @SIGUSR1, align 4
  %25 = load i32, i32* @walwriter_sigusr1_handler, align 4
  %26 = call i32 @pqsignal(i32 %24, i32 %25)
  %27 = load i32, i32* @SIGUSR2, align 4
  %28 = load i32, i32* @SIG_IGN, align 4
  %29 = call i32 @pqsignal(i32 %27, i32 %28)
  %30 = load i32, i32* @SIGCHLD, align 4
  %31 = load i32, i32* @SIG_DFL, align 4
  %32 = call i32 @pqsignal(i32 %30, i32 %31)
  %33 = load i32, i32* @SIGQUIT, align 4
  %34 = call i32 @sigdelset(i32* @BlockSig, i32 %33)
  %35 = load i32, i32* @TopMemoryContext, align 4
  %36 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %37 = call i32 @AllocSetContextCreate(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @MemoryContextSwitchTo(i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = call i64 @sigsetjmp(i32 %40, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %0
  store i32* null, i32** @error_context_stack, align 8
  %44 = call i32 (...) @HOLD_INTERRUPTS()
  %45 = call i32 (...) @EmitErrorReport()
  %46 = call i32 (...) @LWLockReleaseAll()
  %47 = call i32 (...) @ConditionVariableCancelSleep()
  %48 = call i32 (...) @pgstat_report_wait_end()
  %49 = call i32 (...) @AbortBufferIO()
  %50 = call i32 (...) @UnlockBuffers()
  %51 = call i32 @ReleaseAuxProcessResources(i32 0)
  %52 = call i32 @AtEOXact_Buffers(i32 0)
  %53 = call i32 (...) @AtEOXact_SMgr()
  %54 = call i32 @AtEOXact_Files(i32 0)
  %55 = call i32 @AtEOXact_HashTables(i32 0)
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @MemoryContextSwitchTo(i32 %56)
  %58 = call i32 (...) @FlushErrorState()
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @MemoryContextResetAndDeleteChildren(i32 %59)
  %61 = call i32 (...) @RESUME_INTERRUPTS()
  %62 = call i32 @pg_usleep(i64 1000000)
  %63 = call i32 (...) @smgrcloseall()
  br label %64

64:                                               ; preds = %43, %0
  store i32* %1, i32** @PG_exception_stack, align 8
  %65 = call i32 @PG_SETMASK(i32* @UnBlockSig)
  %66 = load i32, i32* @LOOPS_UNTIL_HIBERNATE, align 4
  store i32 %66, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %67 = call i32 @SetWalWriterSleeping(i32 0)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ProcGlobal, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  br label %72

72:                                               ; preds = %118, %64
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp sle i32 %74, 1
  %76 = zext i1 %75 to i32
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* %3, align 4
  %80 = icmp sle i32 %79, 1
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @SetWalWriterSleeping(i32 %82)
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i32, i32* @MyLatch, align 4
  %86 = call i32 @ResetLatch(i32 %85)
  %87 = load i32, i32* @got_SIGHUP, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  store i32 0, i32* @got_SIGHUP, align 4
  %90 = load i32, i32* @PGC_SIGHUP, align 4
  %91 = call i32 @ProcessConfigFile(i32 %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i64, i64* @shutdown_requested, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @proc_exit(i32 0)
  br label %97

97:                                               ; preds = %95, %92
  %98 = call i64 (...) @XLogBackgroundFlush()
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @LOOPS_UNTIL_HIBERNATE, align 4
  store i32 %101, i32* %3, align 4
  br label %109

102:                                              ; preds = %97
  %103 = load i32, i32* %3, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108, %100
  %110 = load i32, i32* %3, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* @WalWriterDelay, align 8
  store i64 %113, i64* %5, align 8
  br label %118

114:                                              ; preds = %109
  %115 = load i64, i64* @WalWriterDelay, align 8
  %116 = load i64, i64* @HIBERNATE_FACTOR, align 8
  %117 = mul nsw i64 %115, %116
  store i64 %117, i64* %5, align 8
  br label %118

118:                                              ; preds = %114, %112
  %119 = load i32, i32* @MyLatch, align 4
  %120 = load i32, i32* @WL_LATCH_SET, align 4
  %121 = load i32, i32* @WL_TIMEOUT, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %124 = or i32 %122, %123
  %125 = load i64, i64* %5, align 8
  %126 = load i32, i32* @WAIT_EVENT_WAL_WRITER_MAIN, align 4
  %127 = call i32 @WaitLatch(i32 %119, i32 %124, i64 %125, i32 %126)
  br label %72
}

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

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

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @MemoryContextResetAndDeleteChildren(i32) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @smgrcloseall(...) #1

declare dso_local i32 @PG_SETMASK(i32*) #1

declare dso_local i32 @SetWalWriterSleeping(i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i64 @XLogBackgroundFlush(...) #1

declare dso_local i32 @WaitLatch(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
