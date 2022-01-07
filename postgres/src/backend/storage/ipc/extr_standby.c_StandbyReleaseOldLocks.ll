; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_StandbyReleaseOldLocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_StandbyReleaseOldLocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@RecoveryLockLists = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StandbyReleaseOldLocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @RecoveryLockLists, align 4
  %6 = call i32 @hash_seq_init(i32* %3, i32 %5)
  br label %7

7:                                                ; preds = %30, %29, %21, %1
  %8 = call %struct.TYPE_4__* @hash_seq_search(i32* %3)
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @TransactionIdIsValid(i32 %13)
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @StandbyTransactionIdIsPrepared(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %7

22:                                               ; preds = %10
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @TransactionIdPrecedes(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %7

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @StandbyReleaseLockList(i32 %33)
  %35 = load i32, i32* @RecoveryLockLists, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = load i32, i32* @HASH_REMOVE, align 4
  %38 = call i32 @hash_search(i32 %35, %struct.TYPE_4__* %36, i32 %37, i32* null)
  br label %7

39:                                               ; preds = %7
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @hash_seq_search(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @StandbyTransactionIdIsPrepared(i32) #1

declare dso_local i32 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @StandbyReleaseLockList(i32) #1

declare dso_local i32 @hash_search(i32, %struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
