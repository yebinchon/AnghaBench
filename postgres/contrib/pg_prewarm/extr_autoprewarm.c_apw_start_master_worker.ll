; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_start_master_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_start_master_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BgWorkerStart_ConsistentState = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pg_prewarm\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"autoprewarm_main\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"autoprewarm master\00", align 1
@process_shared_preload_libraries_in_progress = common dso_local global i64 0, align 8
@MyProcPid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"could not register background process\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"You may need to increase max_worker_processes.\00", align 1
@BGWH_STARTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"could not start background process\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"More details may be available in the server log.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apw_start_master_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apw_start_master_worker() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @MemSet(%struct.TYPE_5__* %1, i32 0, i32 28)
  %6 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 6
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @BgWorkerStart_ConsistentState, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 5
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strcpy(i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i64, i64* @process_shared_preload_libraries_in_progress, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %0
  %25 = call i32 @RegisterBackgroundWorker(%struct.TYPE_5__* %1)
  br label %51

26:                                               ; preds = %0
  %27 = load i32, i32* @MyProcPid, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = call i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_5__* %1, i32** %2)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @errhint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @WaitForBackgroundWorkerStartup(i32* %39, i32* %4)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @BGWH_STARTED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %49 = call i32 @errhint(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %24, %44, %38
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @RegisterBackgroundWorker(%struct.TYPE_5__*) #1

declare dso_local i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_5__*, i32**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i64 @WaitForBackgroundWorkerStartup(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
