; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_ExtendCommitTs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_commit_ts.c_ExtendCommitTs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InRecovery = common dso_local global i32 0, align 4
@commitTsShared = common dso_local global %struct.TYPE_2__* null, align 8
@FirstNormalTransactionId = common dso_local global i32 0, align 4
@CommitTsControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExtendCommitTs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @InRecovery, align 4
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commitTsShared, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @TransactionIdToCTsEntry(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @FirstNormalTransactionId, align 4
  %21 = call i32 @TransactionIdEquals(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %38

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @TransactionIdToCTsPage(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @CommitTsControlLock, align 4
  %28 = load i32, i32* @LW_EXCLUSIVE, align 4
  %29 = call i32 @LWLockAcquire(i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @InRecovery, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @ZeroCommitTsPage(i32 %30, i32 %34)
  %36 = load i32, i32* @CommitTsControlLock, align 4
  %37 = call i32 @LWLockRelease(i32 %36)
  br label %38

38:                                               ; preds = %24, %23, %13
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @TransactionIdToCTsEntry(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @TransactionIdToCTsPage(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ZeroCommitTsPage(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
