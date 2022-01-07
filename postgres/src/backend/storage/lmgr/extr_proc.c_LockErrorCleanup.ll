; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_LockErrorCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_proc.c_LockErrorCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32 }

@lockAwaited = common dso_local global %struct.TYPE_9__* null, align 8
@DEADLOCK_TIMEOUT = common dso_local global i32 0, align 4
@LOCK_TIMEOUT = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_10__* null, align 8
@STATUS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LockErrorCleanup() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x %struct.TYPE_8__], align 16
  %3 = call i32 (...) @HOLD_INTERRUPTS()
  %4 = call i32 (...) @AbortStrongLockAcquire()
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lockAwaited, align 8
  %6 = icmp eq %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @RESUME_INTERRUPTS()
  br label %53

9:                                                ; preds = %0
  %10 = load i32, i32* @DEADLOCK_TIMEOUT, align 4
  %11 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %2, i64 0, i64 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %2, i64 0, i64 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 16
  %15 = load i32, i32* @LOCK_TIMEOUT, align 4
  %16 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %2, i64 0, i64 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %2, i64 0, i64 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %2, i64 0, i64 0
  %21 = call i32 @disable_timeouts(%struct.TYPE_8__* %20, i32 2)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lockAwaited, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @LockHashPartitionLock(i32 %24)
  store i32* %25, i32** %1, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* @LW_EXCLUSIVE, align 4
  %28 = call i32 @LWLockAcquire(i32* %26, i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyProc, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %9
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyProc, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lockAwaited, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @RemoveFromWaitQueue(%struct.TYPE_10__* %35, i32 %38)
  br label %49

40:                                               ; preds = %9
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyProc, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @STATUS_OK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (...) @GrantAwaitedLock()
  br label %48

48:                                               ; preds = %46, %40
  br label %49

49:                                               ; preds = %48, %34
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @lockAwaited, align 8
  %50 = load i32*, i32** %1, align 8
  %51 = call i32 @LWLockRelease(i32* %50)
  %52 = call i32 (...) @RESUME_INTERRUPTS()
  br label %53

53:                                               ; preds = %49, %7
  ret void
}

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @AbortStrongLockAcquire(...) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

declare dso_local i32 @disable_timeouts(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @LockHashPartitionLock(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @RemoveFromWaitQueue(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @GrantAwaitedLock(...) #1

declare dso_local i32 @LWLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
