; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_transam.c_TransactionLogFetch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_transam.c_TransactionLogFetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cachedFetchXid = common dso_local global i32 0, align 4
@cachedFetchXidStatus = common dso_local global i64 0, align 8
@BootstrapTransactionId = common dso_local global i32 0, align 4
@TRANSACTION_STATUS_COMMITTED = common dso_local global i64 0, align 8
@FrozenTransactionId = common dso_local global i32 0, align 4
@TRANSACTION_STATUS_ABORTED = common dso_local global i64 0, align 8
@TRANSACTION_STATUS_IN_PROGRESS = common dso_local global i64 0, align 8
@TRANSACTION_STATUS_SUB_COMMITTED = common dso_local global i64 0, align 8
@cachedCommitLSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @TransactionLogFetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TransactionLogFetch(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @cachedFetchXid, align 4
  %8 = call i64 @TransactionIdEquals(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @cachedFetchXidStatus, align 8
  store i64 %11, i64* %2, align 8
  br label %48

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @TransactionIdIsNormal(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @BootstrapTransactionId, align 4
  %19 = call i64 @TransactionIdEquals(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* @TRANSACTION_STATUS_COMMITTED, align 8
  store i64 %22, i64* %2, align 8
  br label %48

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @FrozenTransactionId, align 4
  %26 = call i64 @TransactionIdEquals(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* @TRANSACTION_STATUS_COMMITTED, align 8
  store i64 %29, i64* %2, align 8
  br label %48

30:                                               ; preds = %23
  %31 = load i64, i64* @TRANSACTION_STATUS_ABORTED, align 8
  store i64 %31, i64* %2, align 8
  br label %48

32:                                               ; preds = %12
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @TransactionIdGetStatus(i32 %33, i32* %5)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @TRANSACTION_STATUS_IN_PROGRESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @TRANSACTION_STATUS_SUB_COMMITTED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* @cachedFetchXid, align 4
  %44 = load i64, i64* %4, align 8
  store i64 %44, i64* @cachedFetchXidStatus, align 8
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* @cachedCommitLSN, align 4
  br label %46

46:                                               ; preds = %42, %38, %32
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %30, %28, %21, %10
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i64 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @TransactionIdIsNormal(i32) #1

declare dso_local i64 @TransactionIdGetStatus(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
