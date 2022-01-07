; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_VirtualXactLockTableCleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_VirtualXactLockTableCleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MyProc = common dso_local global %struct.TYPE_6__* null, align 8
@InvalidBackendId = common dso_local global i64 0, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidLocalTransactionId = common dso_local global i32 0, align 4
@MyBackendId = common dso_local global i32 0, align 4
@LockMethods = common dso_local global i32* null, align 8
@DEFAULT_LOCKMETHOD = common dso_local global i64 0, align 8
@ExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VirtualXactLockTableCleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @InvalidBackendId, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i32, i32* @LW_EXCLUSIVE, align 4
  %15 = call i32 @LWLockAcquire(i32* %13, i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %1, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %2, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* @InvalidLocalTransactionId, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = call i32 @LWLockRelease(i32* %28)
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %0
  %33 = load i32, i32* %2, align 4
  %34 = call i64 @LocalTransactionIdIsValid(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i32, i32* @MyBackendId, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %2, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = bitcast %struct.TYPE_5__* %3 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = call i32 @SET_LOCKTAG_VIRTUALTRANSACTION(i32 %41, i64 %43)
  %45 = load i32*, i32** @LockMethods, align 8
  %46 = load i64, i64* @DEFAULT_LOCKMETHOD, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %50 = load i32, i32* @ExclusiveLock, align 4
  %51 = call i32 @LockRefindAndRelease(i32 %48, %struct.TYPE_6__* %49, i32* %4, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %36, %32, %0
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i64 @LocalTransactionIdIsValid(i32) #1

declare dso_local i32 @SET_LOCKTAG_VIRTUALTRANSACTION(i32, i64) #1

declare dso_local i32 @LockRefindAndRelease(i32, %struct.TYPE_6__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
