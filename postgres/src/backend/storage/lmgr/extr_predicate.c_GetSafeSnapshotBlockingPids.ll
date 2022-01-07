; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetSafeSnapshotBlockingPids.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_GetSafeSnapshotBlockingPids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SerializableXactHashLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@RWConflictData = common dso_local global i32 0, align 4
@inLink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSafeSnapshotBlockingPids(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @SerializableXactHashLock, align 4
  %11 = load i32, i32* @LW_SHARED, align 4
  %12 = call i32 @LWLockAcquire(i32 %10, i32 %11)
  %13 = call %struct.TYPE_9__* (...) @FirstPredXact()
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  br label %14

14:                                               ; preds = %25, %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = call %struct.TYPE_9__* @NextPredXact(%struct.TYPE_9__* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %8, align 8
  br label %14

28:                                               ; preds = %23, %14
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %75

31:                                               ; preds = %28
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %33 = call i64 @SxactIsDeferrableWaiting(%struct.TYPE_9__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* @RWConflictData, align 4
  %41 = load i32, i32* @inLink, align 4
  %42 = call i32 @offsetof(i32 %40, i32 %41)
  %43 = call i64 @SHMQueueNext(i32* %37, i32* %39, i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %9, align 8
  br label %45

45:                                               ; preds = %54, %35
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %54, label %74

54:                                               ; preds = %52
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* @RWConflictData, align 4
  %70 = load i32, i32* @inLink, align 4
  %71 = call i32 @offsetof(i32 %69, i32 %70)
  %72 = call i64 @SHMQueueNext(i32* %66, i32* %68, i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %9, align 8
  br label %45

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74, %31, %28
  %76 = load i32, i32* @SerializableXactHashLock, align 4
  %77 = call i32 @LWLockRelease(i32 %76)
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local %struct.TYPE_9__* @FirstPredXact(...) #1

declare dso_local %struct.TYPE_9__* @NextPredXact(%struct.TYPE_9__*) #1

declare dso_local i64 @SxactIsDeferrableWaiting(%struct.TYPE_9__*) #1

declare dso_local i64 @SHMQueueNext(i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
