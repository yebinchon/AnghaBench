; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_varsup.c_AdvanceNextFullTransactionIdPastXid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_varsup.c_AdvanceNextFullTransactionIdPastXid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@IsUnderPostmaster = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_2__* null, align 8
@XidGenLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AdvanceNextFullTransactionIdPastXid(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = call i64 (...) @AmStartupProcess()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @IsUnderPostmaster, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @XidFromFullTransactionId(i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @TransactionIdFollowsOrEquals(i64 %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  br label %53

25:                                               ; preds = %12
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @TransactionIdAdvance(i64 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @EpochFromFullTransactionId(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp slt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %25
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %2, align 8
  %44 = call i32 @FullTransactionIdFromEpochAndXid(i32 %42, i64 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @XidGenLock, align 4
  %46 = load i32, i32* @LW_EXCLUSIVE, align 4
  %47 = call i32 @LWLockAcquire(i32 %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @XidGenLock, align 4
  %52 = call i32 @LWLockRelease(i32 %51)
  br label %53

53:                                               ; preds = %41, %24
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @AmStartupProcess(...) #1

declare dso_local i64 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @TransactionIdFollowsOrEquals(i64, i64) #1

declare dso_local i32 @TransactionIdAdvance(i64) #1

declare dso_local i32 @EpochFromFullTransactionId(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @FullTransactionIdFromEpochAndXid(i32, i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
