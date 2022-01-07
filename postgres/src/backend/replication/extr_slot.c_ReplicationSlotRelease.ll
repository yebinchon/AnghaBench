; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotRelease.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }

@MyReplicationSlot = common dso_local global %struct.TYPE_6__* null, align 8
@RS_EPHEMERAL = common dso_local global i64 0, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@RS_PERSISTENT = common dso_local global i64 0, align 8
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@PROC_IN_LOGICAL_DECODING = common dso_local global i32 0, align 4
@MyPgXact = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReplicationSlotRelease() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyReplicationSlot, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %1, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %5, %0
  %11 = phi i1 [ false, %0 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RS_EPHEMERAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = call i32 (...) @ReplicationSlotDropAcquired()
  br label %22

22:                                               ; preds = %20, %10
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @TransactionIdIsValid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @TransactionIdIsValid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = call i32 @SpinLockAcquire(i32* %37)
  %39 = load i32, i32* @InvalidTransactionId, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = call i32 @SpinLockRelease(i32* %43)
  %45 = call i32 @ReplicationSlotsComputeRequiredXmin(i32 0)
  br label %46

46:                                               ; preds = %35, %29, %22
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RS_PERSISTENT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = call i32 @SpinLockAcquire(i32* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = call i32 @SpinLockRelease(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = call i32 @ConditionVariableBroadcast(i32* %63)
  br label %65

65:                                               ; preds = %53, %46
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @MyReplicationSlot, align 8
  %66 = load i32, i32* @ProcArrayLock, align 4
  %67 = load i32, i32* @LW_EXCLUSIVE, align 4
  %68 = call i32 @LWLockAcquire(i32 %66, i32 %67)
  %69 = load i32, i32* @PROC_IN_LOGICAL_DECODING, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyPgXact, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @ProcArrayLock, align 4
  %76 = call i32 @LWLockRelease(i32 %75)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReplicationSlotDropAcquired(...) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @ReplicationSlotsComputeRequiredXmin(i32) #1

declare dso_local i32 @ConditionVariableBroadcast(i32*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
