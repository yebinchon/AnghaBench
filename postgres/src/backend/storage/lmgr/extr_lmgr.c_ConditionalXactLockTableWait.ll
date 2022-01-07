; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lmgr.c_ConditionalXactLockTableWait.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lmgr.c_ConditionalXactLockTableWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ShareLock = common dso_local global i32 0, align 4
@LOCKACQUIRE_NOT_AVAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConditionalXactLockTableWait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %37, %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TransactionIdIsValid(i32 %7)
  %9 = call i32 @Assert(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (...) @GetTopTransactionIdIfAny()
  %12 = call i32 @TransactionIdEquals(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SET_LOCKTAG_TRANSACTION(i32 %17, i32 %18)
  %20 = load i32, i32* @ShareLock, align 4
  %21 = call i64 @LockAcquire(i32* %4, i32 %20, i32 0, i32 1)
  %22 = load i64, i64* @LOCKACQUIRE_NOT_AVAIL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %41

25:                                               ; preds = %6
  %26 = load i32, i32* @ShareLock, align 4
  %27 = call i32 @LockRelease(i32* %4, i32 %26, i32 0)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @TransactionIdIsInProgress(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @pg_usleep(i64 1000)
  br label %37

37:                                               ; preds = %35, %32
  store i32 0, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @SubTransGetTopmostTransaction(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %6

40:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @GetTopTransactionIdIfAny(...) #1

declare dso_local i32 @SET_LOCKTAG_TRANSACTION(i32, i32) #1

declare dso_local i64 @LockAcquire(i32*, i32, i32, i32) #1

declare dso_local i32 @LockRelease(i32*, i32, i32) #1

declare dso_local i32 @TransactionIdIsInProgress(i32) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @SubTransGetTopmostTransaction(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
