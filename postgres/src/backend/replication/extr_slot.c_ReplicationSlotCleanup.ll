; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@MyReplicationSlot = common dso_local global i32* null, align 8
@ReplicationSlotControlLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@max_replication_slots = common dso_local global i32 0, align 4
@ReplicationSlotCtl = common dso_local global %struct.TYPE_7__* null, align 8
@MyProcPid = common dso_local global i64 0, align 8
@RS_TEMPORARY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReplicationSlotCleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load i32*, i32** @MyReplicationSlot, align 8
  %4 = icmp eq i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @Assert(i32 %5)
  br label %7

7:                                                ; preds = %36, %0
  %8 = load i32, i32* @ReplicationSlotControlLock, align 4
  %9 = load i32, i32* @LW_SHARED, align 4
  %10 = call i32 @LWLockAcquire(i32 %8, i32 %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %60, %7
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @max_replication_slots, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ReplicationSlotCtl, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %2, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %60

27:                                               ; preds = %15
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = call i32 @SpinLockAcquire(i32* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MyProcPid, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %27
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RS_TEMPORARY, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = call i32 @SpinLockRelease(i32* %46)
  %48 = load i32, i32* @ReplicationSlotControlLock, align 4
  %49 = call i32 @LWLockRelease(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = call i32 @ReplicationSlotDropPtr(%struct.TYPE_6__* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = call i32 @ConditionVariableBroadcast(i32* %53)
  br label %7

55:                                               ; preds = %27
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = call i32 @SpinLockRelease(i32* %57)
  br label %59

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %11

63:                                               ; preds = %11
  %64 = load i32, i32* @ReplicationSlotControlLock, align 4
  %65 = call i32 @LWLockRelease(i32 %64)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ReplicationSlotDropPtr(%struct.TYPE_6__*) #1

declare dso_local i32 @ConditionVariableBroadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
