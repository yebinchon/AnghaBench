; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_LogStandbySnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_LogStandbySnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wal_level = common dso_local global i64 0, align 8
@WAL_LEVEL_LOGICAL = common dso_local global i64 0, align 8
@ProcArrayLock = common dso_local global i32 0, align 4
@XidGenLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LogStandbySnapshot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 (...) @XLogStandbyInfoActive()
  %6 = call i32 @Assert(i32 %5)
  %7 = call i32* @GetRunningTransactionLocks(i32* %4)
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @LogAccessExclusiveLocks(i32 %11, i32* %12)
  br label %14

14:                                               ; preds = %10, %0
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @pfree(i32* %15)
  %17 = call i32 (...) @GetRunningTransactionData()
  store i32 %17, i32* %2, align 4
  %18 = load i64, i64* @wal_level, align 8
  %19 = load i64, i64* @WAL_LEVEL_LOGICAL, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @ProcArrayLock, align 4
  %23 = call i32 @LWLockRelease(i32 %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @LogCurrentRunningXacts(i32 %25)
  store i32 %26, i32* %1, align 4
  %27 = load i64, i64* @wal_level, align 8
  %28 = load i64, i64* @WAL_LEVEL_LOGICAL, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ProcArrayLock, align 4
  %32 = call i32 @LWLockRelease(i32 %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* @XidGenLock, align 4
  %35 = call i32 @LWLockRelease(i32 %34)
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogStandbyInfoActive(...) #1

declare dso_local i32* @GetRunningTransactionLocks(i32*) #1

declare dso_local i32 @LogAccessExclusiveLocks(i32, i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @GetRunningTransactionData(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @LogCurrentRunningXacts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
