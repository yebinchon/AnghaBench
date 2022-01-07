; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_StandbyReleaseLocks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_StandbyReleaseLocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@RecoveryLockLists = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @StandbyReleaseLocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StandbyReleaseLocks(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @TransactionIdIsValid(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @RecoveryLockLists, align 4
  %11 = load i32, i32* @HASH_FIND, align 4
  %12 = call %struct.TYPE_7__* @hash_search(i32 %10, %struct.TYPE_7__* %2, i32 %11, i32* null)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %3, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @StandbyReleaseLockList(i32 %17)
  %19 = load i32, i32* @RecoveryLockLists, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = load i32, i32* @HASH_REMOVE, align 4
  %22 = call %struct.TYPE_7__* @hash_search(i32 %19, %struct.TYPE_7__* %20, i32 %21, i32* null)
  br label %23

23:                                               ; preds = %14, %9
  br label %26

24:                                               ; preds = %1
  %25 = call i32 (...) @StandbyReleaseAllLocks()
  br label %26

26:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local %struct.TYPE_7__* @hash_search(i32, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @StandbyReleaseLockList(i32) #1

declare dso_local i32 @StandbyReleaseAllLocks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
