; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_RecordKnownAssignedTransactionIds.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_RecordKnownAssignedTransactionIds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@standbyState = common dso_local global i64 0, align 8
@STANDBY_INITIALIZED = common dso_local global i64 0, align 8
@latestObservedXid = common dso_local global i64 0, align 8
@DEBUG4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"record known xact %u latestObservedXid %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecordKnownAssignedTransactionIds(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @standbyState, align 8
  %5 = load i64, i64* @STANDBY_INITIALIZED, align 8
  %6 = icmp sge i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @TransactionIdIsValid(i64 %9)
  %11 = call i32 @Assert(i32 %10)
  %12 = load i64, i64* @latestObservedXid, align 8
  %13 = call i32 @TransactionIdIsValid(i64 %12)
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* @DEBUG4, align 4
  %16 = call i32 @trace_recovery(i32 %15)
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @latestObservedXid, align 8
  %19 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @latestObservedXid, align 8
  %22 = call i64 @TransactionIdFollows(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %1
  %25 = load i64, i64* @latestObservedXid, align 8
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %31, %24
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @TransactionIdPrecedes(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @TransactionIdAdvance(i64 %32)
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @ExtendSUBTRANS(i64 %34)
  br label %26

36:                                               ; preds = %26
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %2, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @Assert(i32 %40)
  %42 = load i64, i64* @standbyState, align 8
  %43 = load i64, i64* @STANDBY_INITIALIZED, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %2, align 8
  store i64 %46, i64* @latestObservedXid, align 8
  br label %60

47:                                               ; preds = %36
  %48 = load i64, i64* @latestObservedXid, align 8
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @TransactionIdAdvance(i64 %49)
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* %2, align 8
  %53 = call i32 @KnownAssignedXidsAdd(i64 %51, i64 %52, i32 0)
  %54 = load i64, i64* %2, align 8
  store i64 %54, i64* @latestObservedXid, align 8
  %55 = load i64, i64* @latestObservedXid, align 8
  %56 = call i32 @AdvanceNextFullTransactionIdPastXid(i64 %55)
  %57 = load i64, i64* @latestObservedXid, align 8
  store i64 %57, i64* %3, align 8
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @TransactionIdAdvance(i64 %58)
  br label %60

60:                                               ; preds = %45, %47, %1
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsValid(i64) #1

declare dso_local i32 @elog(i32, i8*, i64, i64) #1

declare dso_local i32 @trace_recovery(i32) #1

declare dso_local i64 @TransactionIdFollows(i64, i64) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i64) #1

declare dso_local i32 @TransactionIdAdvance(i64) #1

declare dso_local i32 @ExtendSUBTRANS(i64) #1

declare dso_local i32 @KnownAssignedXidsAdd(i64, i64, i32) #1

declare dso_local i32 @AdvanceNextFullTransactionIdPastXid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
