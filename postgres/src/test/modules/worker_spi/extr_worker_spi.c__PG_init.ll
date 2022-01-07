; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/worker_spi/extr_worker_spi.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/worker_spi/extr_worker_spi.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"worker_spi.naptime\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Duration between each check (in seconds).\00", align 1
@worker_spi_naptime = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@process_shared_preload_libraries_in_progress = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"worker_spi.total_workers\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Number of workers.\00", align 1
@worker_spi_total_workers = common dso_local global i32 0, align 4
@PGC_POSTMASTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"worker_spi.database\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Database to connect to.\00", align 1
@worker_spi_database = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BGWORKER_BACKEND_DATABASE_CONNECTION = common dso_local global i32 0, align 4
@BgWorkerStart_RecoveryFinished = common dso_local global i32 0, align 4
@BGW_NEVER_RESTART = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"worker_spi\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"worker_spi_main\00", align 1
@BGW_MAXLEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"worker_spi worker %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @INT_MAX, align 4
  %4 = load i32, i32* @PGC_SIGHUP, align 4
  %5 = call i32 @DefineCustomIntVariable(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* @worker_spi_naptime, i32 10, i32 1, i32 %3, i32 %4, i32 0, i32* null, i32* null, i32* null)
  %6 = load i32, i32* @process_shared_preload_libraries_in_progress, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %51

9:                                                ; preds = %0
  %10 = load i32, i32* @PGC_POSTMASTER, align 4
  %11 = call i32 @DefineCustomIntVariable(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* @worker_spi_total_workers, i32 2, i32 1, i32 100, i32 %10, i32 0, i32* null, i32* null, i32* null)
  %12 = load i32, i32* @PGC_POSTMASTER, align 4
  %13 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* @worker_spi_database, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %12, i32 0, i32* null, i32* null, i32* null)
  %14 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 40)
  %15 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %16 = load i32, i32* @BGWORKER_BACKEND_DATABASE_CONNECTION, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @BgWorkerStart_RecoveryFinished, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @BGW_NEVER_RESTART, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 7
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sprintf(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  store i64 0, i64* %29, align 8
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %48, %9
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @worker_spi_total_workers, align 4
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BGW_MAXLEN, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %36, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BGW_MAXLEN, align 4
  %43 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %41, i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @Int32GetDatum(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = call i32 @RegisterBackgroundWorker(%struct.TYPE_4__* %1)
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %2, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %30

51:                                               ; preds = %8, %30
  ret void
}

declare dso_local i32 @DefineCustomIntVariable(i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomStringVariable(i8*, i8*, i32*, i32*, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @RegisterBackgroundWorker(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
