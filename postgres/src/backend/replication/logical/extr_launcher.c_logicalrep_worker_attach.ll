; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_logicalrep_worker_attach.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_launcher.c_logicalrep_worker_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@LogicalRepWorkerLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@max_logical_replication_workers = common dso_local global i32 0, align 4
@LogicalRepCtx = common dso_local global %struct.TYPE_4__* null, align 8
@MyLogicalRepWorker = common dso_local global %struct.TYPE_3__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"logical replication worker slot %d is empty, cannot attach\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"logical replication worker slot %d is already used by another worker, cannot attach\00", align 1
@MyProc = common dso_local global i64 0, align 8
@logicalrep_worker_onexit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @logicalrep_worker_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @LogicalRepWorkerLock, align 4
  %4 = load i32, i32* @LW_EXCLUSIVE, align 4
  %5 = call i32 @LWLockAcquire(i32 %3, i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @max_logical_replication_workers, align 4
  %11 = icmp slt i32 %9, %10
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @LogicalRepCtx, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** @MyLogicalRepWorker, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyLogicalRepWorker, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %12
  %27 = load i32, i32* @LogicalRepWorkerLock, align 4
  %28 = call i32 @LWLockRelease(i32 %27)
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 @ereport(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %26, %12
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyLogicalRepWorker, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* @LogicalRepWorkerLock, align 4
  %42 = call i32 @LWLockRelease(i32 %41)
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = call i32 @ereport(i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %40, %35
  %50 = load i64, i64* @MyProc, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyLogicalRepWorker, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @logicalrep_worker_onexit, align 4
  %54 = call i32 @before_shmem_exit(i32 %53, i32 0)
  %55 = load i32, i32* @LogicalRepWorkerLock, align 4
  %56 = call i32 @LWLockRelease(i32 %55)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @before_shmem_exit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
