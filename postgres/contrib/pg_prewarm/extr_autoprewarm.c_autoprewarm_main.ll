; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_autoprewarm_main.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_autoprewarm_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@SIGTERM = common dso_local global i32 0, align 4
@apw_sigterm_handler = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@apw_sighup_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@procsignal_sigusr1_handler = common dso_local global i32 0, align 4
@apw_detach_shmem = common dso_local global i32 0, align 4
@apw_state = common dso_local global %struct.TYPE_3__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidPid = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"autoprewarm worker is already running under PID %lu\00", align 1
@MyProcPid = common dso_local global i64 0, align 8
@got_sigterm = common dso_local global i32 0, align 4
@got_sighup = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@autoprewarm_interval = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_4__* null, align 8
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@PG_WAIT_EXTENSION = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autoprewarm_main(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @SIGTERM, align 4
  %10 = load i32, i32* @apw_sigterm_handler, align 4
  %11 = call i32 @pqsignal(i32 %9, i32 %10)
  %12 = load i32, i32* @SIGHUP, align 4
  %13 = load i32, i32* @apw_sighup_handler, align 4
  %14 = call i32 @pqsignal(i32 %12, i32 %13)
  %15 = load i32, i32* @SIGUSR1, align 4
  %16 = load i32, i32* @procsignal_sigusr1_handler, align 4
  %17 = call i32 @pqsignal(i32 %15, i32 %16)
  %18 = call i32 (...) @BackgroundWorkerUnblockSignals()
  %19 = call i64 (...) @apw_init_shmem()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* @apw_detach_shmem, align 4
  %24 = call i32 @on_shmem_exit(i32 %23, i32 0)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apw_state, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* @LW_EXCLUSIVE, align 4
  %28 = call i32 @LWLockAcquire(i32* %26, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apw_state, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @InvalidPid, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apw_state, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @LWLockRelease(i32* %36)
  %38 = load i32, i32* @LOG, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apw_state, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = call i32 @ereport(i32 %38, i32 %42)
  br label %113

44:                                               ; preds = %22
  %45 = load i64, i64* @MyProcPid, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apw_state, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @apw_state, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @LWLockRelease(i32* %49)
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = call i32 (...) @apw_load_buffers()
  %55 = call i32 (...) @GetCurrentTimestamp()
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %44
  br label %57

57:                                               ; preds = %107, %93, %56
  %58 = load i32, i32* @got_sigterm, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %111

61:                                               ; preds = %57
  %62 = load i32, i32* @got_sighup, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  store i32 0, i32* @got_sighup, align 4
  %65 = load i32, i32* @PGC_SIGHUP, align 4
  %66 = call i32 @ProcessConfigFile(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* @autoprewarm_interval, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* @WL_LATCH_SET, align 4
  %74 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @PG_WAIT_EXTENSION, align 4
  %77 = call i32 @WaitLatch(i32* %72, i32 %75, i64 -1, i32 %76)
  br label %107

78:                                               ; preds = %67
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @autoprewarm_interval, align 4
  %81 = mul nsw i32 %80, 1000
  %82 = call i32 @TimestampTzPlusMilliseconds(i32 %79, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = call i32 (...) @GetCurrentTimestamp()
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @TimestampDifference(i32 %83, i32 %84, i64* %7, i32* %8)
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sdiv i32 %87, 1000
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %86, %89
  store i64 %90, i64* %5, align 8
  %91 = load i64, i64* %5, align 8
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = call i32 (...) @GetCurrentTimestamp()
  store i32 %94, i32* %4, align 4
  %95 = call i32 @apw_dump_now(i32 1, i32 0)
  br label %57

96:                                               ; preds = %78
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* @WL_LATCH_SET, align 4
  %100 = load i32, i32* @WL_TIMEOUT, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %103 = or i32 %101, %102
  %104 = load i64, i64* %5, align 8
  %105 = load i32, i32* @PG_WAIT_EXTENSION, align 4
  %106 = call i32 @WaitLatch(i32* %98, i32 %103, i64 %104, i32 %105)
  br label %107

107:                                              ; preds = %96, %70
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @ResetLatch(i32* %109)
  br label %57

111:                                              ; preds = %57
  %112 = call i32 @apw_dump_now(i32 1, i32 1)
  br label %113

113:                                              ; preds = %111, %34
  ret void
}

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @BackgroundWorkerUnblockSignals(...) #1

declare dso_local i64 @apw_init_shmem(...) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i64) #1

declare dso_local i32 @apw_load_buffers(...) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @WaitLatch(i32*, i32, i64, i32) #1

declare dso_local i32 @TimestampTzPlusMilliseconds(i32, i32) #1

declare dso_local i32 @TimestampDifference(i32, i32, i64*, i32*) #1

declare dso_local i32 @apw_dump_now(i32, i32) #1

declare dso_local i32 @ResetLatch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
