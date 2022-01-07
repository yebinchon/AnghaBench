; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_start_database_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_prewarm/extr_autoprewarm.c_apw_start_database_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BGWORKER_BACKEND_DATABASE_CONNECTION = common dso_local global i32 0, align 4
@BgWorkerStart_ConsistentState = common dso_local global i32 0, align 4
@BGW_NEVER_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pg_prewarm\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"autoprewarm_database_main\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"autoprewarm worker\00", align 1
@MyProcPid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"registering dynamic bgworker autoprewarm failed\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"Consider increasing configuration parameter \22max_worker_processes\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apw_start_database_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apw_start_database_worker() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 @MemSet(%struct.TYPE_4__* %1, i32 0, i32 32)
  %4 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %5 = load i32, i32* @BGWORKER_BACKEND_DATABASE_CONNECTION, align 4
  %6 = or i32 %4, %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @BgWorkerStart_ConsistentState, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 7
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @BGW_NEVER_RESTART, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcpy(i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcpy(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcpy(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @MyProcPid, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = call i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_4__* %1, i32** %2)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %0
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_INSUFFICIENT_RESOURCES, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @errhint(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @ereport(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %28, %0
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @WaitForBackgroundWorkerShutdown(i32* %36)
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_4__*, i32**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @WaitForBackgroundWorkerShutdown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
