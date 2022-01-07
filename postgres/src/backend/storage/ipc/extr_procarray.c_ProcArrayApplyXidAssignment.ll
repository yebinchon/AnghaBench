; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_ProcArrayApplyXidAssignment.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_ProcArrayApplyXidAssignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@standbyState = common dso_local global i64 0, align 8
@STANDBY_INITIALIZED = common dso_local global i64 0, align 8
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@procArray = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcArrayApplyXidAssignment(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* @standbyState, align 8
  %10 = load i64, i64* @STANDBY_INITIALIZED, align 8
  %11 = icmp sge i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @TransactionIdLatest(i32 %14, i32 %15, i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @RecordKnownAssignedTransactionIds(i32 %18)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %32, %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SubTransSetParent(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load i64, i64* @standbyState, align 8
  %37 = load i64, i64* @STANDBY_INITIALIZED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %61

40:                                               ; preds = %35
  %41 = load i32, i32* @ProcArrayLock, align 4
  %42 = load i32, i32* @LW_EXCLUSIVE, align 4
  %43 = call i32 @LWLockAcquire(i32 %41, i32 %42)
  %44 = load i32, i32* @InvalidTransactionId, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @KnownAssignedXidsRemoveTree(i32 %44, i32 %45, i32* %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @procArray, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @TransactionIdPrecedes(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @procArray, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %40
  %59 = load i32, i32* @ProcArrayLock, align 4
  %60 = call i32 @LWLockRelease(i32 %59)
  br label %61

61:                                               ; preds = %58, %39
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdLatest(i32, i32, i32*) #1

declare dso_local i32 @RecordKnownAssignedTransactionIds(i32) #1

declare dso_local i32 @SubTransSetParent(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @KnownAssignedXidsRemoveTree(i32, i32, i32*) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
