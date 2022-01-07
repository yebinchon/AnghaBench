; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_ApplyLauncherRegister.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_ApplyLauncherRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@max_logical_replication_workers = common dso_local global i64 0, align 8
@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BGWORKER_BACKEND_DATABASE_CONNECTION = common dso_local global i32 0, align 4
@BgWorkerStart_RecoveryFinished = common dso_local global i32 0, align 4
@BGW_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ApplyLauncherMain\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"logical replication launcher\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ApplyLauncherRegister() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i64, i64* @max_logical_replication_workers, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %33

5:                                                ; preds = %0
  %6 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 48)
  %7 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %8 = load i32, i32* @BGWORKER_BACKEND_DATABASE_CONNECTION, align 4
  %9 = or i32 %7, %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* @BgWorkerStart_RecoveryFinished, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 8
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BGW_MAXLEN, align 4
  %16 = call i32 @snprintf(i32 %14, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BGW_MAXLEN, align 4
  %20 = call i32 @snprintf(i32 %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BGW_MAXLEN, align 4
  %24 = call i32 @snprintf(i32 %22, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BGW_MAXLEN, align 4
  %28 = call i32 @snprintf(i32 %26, i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 5, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = call i32 @RegisterBackgroundWorker(%struct.TYPE_4__* %1)
  br label %33

33:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @RegisterBackgroundWorker(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
