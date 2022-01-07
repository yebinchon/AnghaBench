; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotReserveWal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_ReplicationSlotReserveWal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@MyReplicationSlot = common dso_local global %struct.TYPE_6__* null, align 8
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@wal_segment_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReplicationSlotReserveWal() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyReplicationSlot, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %1, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @InvalidXLogRecPtr, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  br label %18

18:                                               ; preds = %0, %67
  %19 = call i32 (...) @RecoveryInProgress()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %23 = call i64 @SlotIsLogical(%struct.TYPE_6__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = call i8* (...) @GetXLogInsertRecPtr()
  store i8* %26, i8** %3, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = call i32 @SpinLockAcquire(i32* %28)
  %30 = load i8*, i8** %3, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = call i32 @SpinLockRelease(i32* %36)
  %38 = call i8* (...) @LogStandbySnapshot()
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @XLogFlush(i8* %39)
  br label %54

41:                                               ; preds = %21, %18
  %42 = call i8* (...) @GetRedoRecPtr()
  store i8* %42, i8** %3, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @SpinLockAcquire(i32* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @SpinLockRelease(i32* %52)
  br label %54

54:                                               ; preds = %41, %25
  %55 = call i32 (...) @ReplicationSlotsComputeRequiredLSN()
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %2, align 8
  %61 = load i32, i32* @wal_segment_size, align 4
  %62 = call i32 @XLByteToSeg(i64 %59, i64 %60, i32 %61)
  %63 = call i64 (...) @XLogGetLastRemovedSegno()
  %64 = load i64, i64* %2, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %68

67:                                               ; preds = %54
  br label %18

68:                                               ; preds = %66
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i64 @SlotIsLogical(%struct.TYPE_6__*) #1

declare dso_local i8* @GetXLogInsertRecPtr(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i8* @LogStandbySnapshot(...) #1

declare dso_local i32 @XLogFlush(i8*) #1

declare dso_local i8* @GetRedoRecPtr(...) #1

declare dso_local i32 @ReplicationSlotsComputeRequiredLSN(...) #1

declare dso_local i32 @XLByteToSeg(i64, i64, i32) #1

declare dso_local i64 @XLogGetLastRemovedSegno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
