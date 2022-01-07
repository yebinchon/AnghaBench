; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetSafeSnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetSafeSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@XactReadOnly = common dso_local global i64 0, align 8
@XactDeferrable = common dso_local global i64 0, align 8
@InvalidPid = common dso_local global i32 0, align 4
@MySerializableXact = common dso_local global %struct.TYPE_5__* null, align 8
@InvalidSerializableXact = common dso_local global %struct.TYPE_5__* null, align 8
@SerializableXactHashLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@SXACT_FLAG_DEFERRABLE_WAITING = common dso_local global i32 0, align 4
@WAIT_EVENT_SAFE_SNAPSHOT = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"deferrable snapshot was unsafe; trying a new one\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetSafeSnapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSafeSnapshot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @XactReadOnly, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @XactDeferrable, align 8
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i1 [ false, %1 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  br label %14

14:                                               ; preds = %10, %65
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @InvalidPid, align 4
  %17 = call i32 @GetSerializableTransactionSnapshotInt(i32 %15, i32* null, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MySerializableXact, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @InvalidSerializableXact, align 8
  %20 = icmp eq %struct.TYPE_5__* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %80

23:                                               ; preds = %14
  %24 = load i32, i32* @SerializableXactHashLock, align 4
  %25 = load i32, i32* @LW_EXCLUSIVE, align 4
  %26 = call i32 @LWLockAcquire(i32 %24, i32 %25)
  %27 = load i32, i32* @SXACT_FLAG_DEFERRABLE_WAITING, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MySerializableXact, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %44, %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MySerializableXact, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = call i64 @SHMQueueEmpty(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MySerializableXact, align 8
  %39 = call i64 @SxactIsROUnsafe(%struct.TYPE_5__* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ true, %32 ], [ %40, %37 ]
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* @SerializableXactHashLock, align 4
  %46 = call i32 @LWLockRelease(i32 %45)
  %47 = load i32, i32* @WAIT_EVENT_SAFE_SNAPSHOT, align 4
  %48 = call i32 @ProcWaitForSignal(i32 %47)
  %49 = load i32, i32* @SerializableXactHashLock, align 4
  %50 = load i32, i32* @LW_EXCLUSIVE, align 4
  %51 = call i32 @LWLockAcquire(i32 %49, i32 %50)
  br label %32

52:                                               ; preds = %41
  %53 = load i32, i32* @SXACT_FLAG_DEFERRABLE_WAITING, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MySerializableXact, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MySerializableXact, align 8
  %60 = call i64 @SxactIsROUnsafe(%struct.TYPE_5__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @SerializableXactHashLock, align 4
  %64 = call i32 @LWLockRelease(i32 %63)
  br label %74

65:                                               ; preds = %52
  %66 = load i32, i32* @SerializableXactHashLock, align 4
  %67 = call i32 @LWLockRelease(i32 %66)
  %68 = load i32, i32* @DEBUG2, align 4
  %69 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %70 = call i32 @errcode(i32 %69)
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @ereport(i32 %68, i32 %71)
  %73 = call i32 @ReleasePredicateLocks(i32 0, i32 0)
  br label %14

74:                                               ; preds = %62
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MySerializableXact, align 8
  %76 = call i32 @SxactIsROSafe(%struct.TYPE_5__* %75)
  %77 = call i32 @Assert(i32 %76)
  %78 = call i32 @ReleasePredicateLocks(i32 0, i32 1)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %74, %21
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GetSerializableTransactionSnapshotInt(i32, i32*, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @SHMQueueEmpty(i32*) #1

declare dso_local i64 @SxactIsROUnsafe(%struct.TYPE_5__*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ProcWaitForSignal(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ReleasePredicateLocks(i32, i32) #1

declare dso_local i32 @SxactIsROSafe(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
