; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_InitAuxiliaryProcess.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_InitAuxiliaryProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i64, i8*, i8* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i64, i32, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }

@ProcGlobal = common dso_local global %struct.TYPE_7__* null, align 8
@AuxiliaryProcs = common dso_local global %struct.TYPE_6__* null, align 8
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"proc header uninitialized\00", align 1
@MyProc = common dso_local global %struct.TYPE_6__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"you already exist\00", align 1
@ProcStructLock = common dso_local global i32 0, align 4
@NUM_AUXILIARY_PROCS = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"all AuxiliaryProcs are in use\00", align 1
@MyProcPid = common dso_local global i64 0, align 8
@MyPgXact = common dso_local global %struct.TYPE_8__* null, align 8
@STATUS_OK = common dso_local global i32 0, align 4
@InvalidLocalTransactionId = common dso_local global i8* null, align 8
@InvalidTransactionId = common dso_local global i8* null, align 8
@InvalidBackendId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@IsBackgroundWorker = common dso_local global i32 0, align 4
@AuxiliaryProcKill = common dso_local global i32 0, align 4
@NUM_LOCK_PARTITIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitAuxiliaryProcess() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ProcGlobal, align 8
  %4 = icmp eq %struct.TYPE_7__* %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AuxiliaryProcs, align 8
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @PANIC, align 4
  %10 = call i32 @elog(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @ERROR, align 4
  %16 = call i32 @elog(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* @ProcStructLock, align 4
  %19 = call i32 @SpinLockAcquire(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ProcGlobal, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @set_spins_per_delay(i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %39, %17
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @NUM_AUXILIARY_PROCS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AuxiliaryProcs, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %1, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %42

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %24

42:                                               ; preds = %37, %24
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @NUM_AUXILIARY_PROCS, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @ProcStructLock, align 4
  %48 = call i32 @SpinLockRelease(i32 %47)
  %49 = load i32, i32* @FATAL, align 4
  %50 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i64, i64* @MyProcPid, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store volatile i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** @MyProc, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ProcGlobal, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %61
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** @MyPgXact, align 8
  %63 = load i32, i32* @ProcStructLock, align 4
  %64 = call i32 @SpinLockRelease(i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 20
  %67 = call i32 @SHMQueueElemInit(i32* %66)
  %68 = load i32, i32* @STATUS_OK, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 19
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @InvalidLocalTransactionId, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 18
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load i8*, i8** @InvalidLocalTransactionId, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 17
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @InvalidTransactionId, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @InvalidTransactionId, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @InvalidBackendId, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 16
  store i32 %85, i32* %87, align 8
  %88 = load i8*, i8** @InvalidOid, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 15
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @InvalidOid, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 14
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @InvalidOid, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 13
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @IsBackgroundWorker, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 12
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i32 0, i32* %105, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 11
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 10
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 9
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 7
  %114 = call i32 @OwnLatch(i32* %113)
  %115 = call i32 (...) @SwitchToSharedLatch()
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i32 @Assert(i32 %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 5
  %124 = call i32 @dlist_is_empty(i32* %123)
  %125 = call i32 @Assert(i32 %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @PGSemaphoreReset(i32 %128)
  %130 = load i32, i32* @AuxiliaryProcKill, align 4
  %131 = load i32, i32* %2, align 4
  %132 = call i32 @Int32GetDatum(i32 %131)
  %133 = call i32 @on_shmem_exit(i32 %130, i32 %132)
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @SpinLockAcquire(i32) #1

declare dso_local i32 @set_spins_per_delay(i32) #1

declare dso_local i32 @SpinLockRelease(i32) #1

declare dso_local i32 @SHMQueueElemInit(i32*) #1

declare dso_local i32 @OwnLatch(i32*) #1

declare dso_local i32 @SwitchToSharedLatch(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @dlist_is_empty(i32*) #1

declare dso_local i32 @PGSemaphoreReset(i32) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
