; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_CheckDeadLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_CheckDeadLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32* }

@NUM_LOCK_PARTITIONS = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_8__* null, align 8
@deadlock_state = common dso_local global i64 0, align 8
@DS_HARD_DEADLOCK = common dso_local global i64 0, align 8
@Debug_deadlocks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CheckDeadLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckDeadLock() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NUM_LOCK_PARTITIONS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @LockHashPartitionLockByIndex(i32 %7)
  %9 = load i32, i32* @LW_EXCLUSIVE, align 4
  %10 = call i32 @LWLockAcquire(i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14
  br label %48

27:                                               ; preds = %20
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %29 = call i64 @DeadLockCheck(%struct.TYPE_8__* %28)
  store i64 %29, i64* @deadlock_state, align 8
  %30 = load i64, i64* @deadlock_state, align 8
  %31 = load i64, i64* @DS_HARD_DEADLOCK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @LockTagHashCode(i32* %44)
  %46 = call i32 @RemoveFromWaitQueue(%struct.TYPE_8__* %40, i32 %45)
  br label %47

47:                                               ; preds = %33, %27
  br label %48

48:                                               ; preds = %47, %26
  %49 = load i32, i32* @NUM_LOCK_PARTITIONS, align 4
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %54, %48
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %1, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @LockHashPartitionLockByIndex(i32 %55)
  %57 = call i32 @LWLockRelease(i32 %56)
  br label %50

58:                                               ; preds = %50
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LockHashPartitionLockByIndex(i32) #1

declare dso_local i64 @DeadLockCheck(%struct.TYPE_8__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RemoveFromWaitQueue(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @LockTagHashCode(i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
