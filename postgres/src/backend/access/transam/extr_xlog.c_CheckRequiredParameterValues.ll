; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CheckRequiredParameterValues.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_CheckRequiredParameterValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }

@ArchiveRecoveryRequested = common dso_local global i64 0, align 8
@ControlFile = common dso_local global %struct.TYPE_2__* null, align 8
@WAL_LEVEL_MINIMAL = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"WAL was generated with wal_level=minimal, data may be missing\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"This happens if you temporarily set wal_level=minimal without taking a new base backup.\00", align 1
@EnableHotStandby = common dso_local global i64 0, align 8
@WAL_LEVEL_REPLICA = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [102 x i8] c"hot standby is not possible because wal_level was not set to \22replica\22 or higher on the master server\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"Either set wal_level to \22replica\22 on the master, or turn off hot_standby here.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"max_connections\00", align 1
@MaxConnections = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"max_worker_processes\00", align 1
@max_worker_processes = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"max_wal_senders\00", align 1
@max_wal_senders = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"max_prepared_transactions\00", align 1
@max_prepared_xacts = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"max_locks_per_transaction\00", align 1
@max_locks_per_xact = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CheckRequiredParameterValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckRequiredParameterValues() #0 {
  %1 = load i64, i64* @ArchiveRecoveryRequested, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ControlFile, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WAL_LEVEL_MINIMAL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load i32, i32* @WARNING, align 4
  %11 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @errhint(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @ereport(i32 %10, i32 %12)
  br label %14

14:                                               ; preds = %9, %3, %0
  %15 = load i64, i64* @ArchiveRecoveryRequested, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %14
  %18 = load i64, i64* @EnableHotStandby, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ControlFile, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WAL_LEVEL_REPLICA, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @ERROR, align 4
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @errhint(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* @MaxConnections, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ControlFile, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @RecoveryRequiresIntParameter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load i32, i32* @max_worker_processes, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ControlFile, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @RecoveryRequiresIntParameter(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* @max_wal_senders, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ControlFile, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @RecoveryRequiresIntParameter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* @max_prepared_xacts, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ControlFile, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @RecoveryRequiresIntParameter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i32, i32* @max_locks_per_xact, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ControlFile, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @RecoveryRequiresIntParameter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %31, %17, %14
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @RecoveryRequiresIntParameter(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
