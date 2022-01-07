; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_WALInsertLockAcquire.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_WALInsertLockAcquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@WALInsertLockAcquire.lockToTry = internal global i32 -1, align 4
@MyProc = common dso_local global %struct.TYPE_6__* null, align 8
@NUM_XLOGINSERT_LOCKS = common dso_local global i32 0, align 4
@MyLockNo = common dso_local global i64 0, align 8
@WALInsertLocks = common dso_local global %struct.TYPE_5__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @WALInsertLockAcquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WALInsertLockAcquire() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @WALInsertLockAcquire.lockToTry, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyProc, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NUM_XLOGINSERT_LOCKS, align 4
  %9 = srem i32 %7, %8
  store i32 %9, i32* @WALInsertLockAcquire.lockToTry, align 4
  br label %10

10:                                               ; preds = %4, %0
  %11 = load i32, i32* @WALInsertLockAcquire.lockToTry, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* @MyLockNo, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @WALInsertLocks, align 8
  %14 = load i64, i64* @MyLockNo, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* @LW_EXCLUSIVE, align 4
  %19 = call i32 @LWLockAcquire(i32* %17, i32 %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %10
  %23 = load i32, i32* @WALInsertLockAcquire.lockToTry, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @NUM_XLOGINSERT_LOCKS, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* @WALInsertLockAcquire.lockToTry, align 4
  br label %27

27:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
