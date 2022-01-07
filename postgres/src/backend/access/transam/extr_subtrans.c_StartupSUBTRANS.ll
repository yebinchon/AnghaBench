; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_StartupSUBTRANS.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_StartupSUBTRANS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SubtransControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_2__* null, align 8
@MaxTransactionId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartupSUBTRANS(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @SubtransControlLock, align 4
  %7 = load i32, i32* @LW_EXCLUSIVE, align 4
  %8 = call i32 @LWLockAcquire(i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @TransactionIdToPage(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ShmemVariableCache, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @XidFromFullTransactionId(i32 %14)
  %16 = call i32 @TransactionIdToPage(i32 %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ZeroSUBTRANSPage(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MaxTransactionId, align 4
  %28 = call i32 @TransactionIdToPage(i32 %27)
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %21
  br label %17

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ZeroSUBTRANSPage(i32 %33)
  %35 = load i32, i32* @SubtransControlLock, align 4
  %36 = call i32 @LWLockRelease(i32 %35)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @TransactionIdToPage(i32) #1

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @ZeroSUBTRANSPage(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
