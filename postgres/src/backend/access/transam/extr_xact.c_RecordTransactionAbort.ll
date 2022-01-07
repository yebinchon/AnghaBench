; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_RecordTransactionAbort.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xact.c_RecordTransactionAbort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XactLastRecEnd = common dso_local global i64 0, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"cannot abort transaction %u, it was already committed\00", align 1
@xactStopTimestamp = common dso_local global i32 0, align 4
@MyXactFlags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @RecordTransactionAbort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RecordTransactionAbort(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = call i32 (...) @GetCurrentTransactionIdIfAny()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TransactionIdIsValid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i64 0, i64* @XactLastRecEnd, align 8
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %20, i32* %2, align 4
  br label %84

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @TransactionIdDidCommit(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @PANIC, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = call i32 @smgrGetPendingDeletes(i32 0, i32** %7)
  store i32 %30, i32* %6, align 4
  %31 = call i32 @xactGetCommittedChildren(i32** %9)
  store i32 %31, i32* %8, align 4
  %32 = call i32 (...) @START_CRIT_SECTION()
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 (...) @GetCurrentTimestamp()
  store i32 %36, i32* %10, align 4
  br label %40

37:                                               ; preds = %29
  %38 = call i32 (...) @SetCurrentTransactionStopTimestamp()
  %39 = load i32, i32* @xactStopTimestamp, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @MyXactFlags, align 4
  %47 = load i32, i32* @InvalidTransactionId, align 4
  %48 = call i32 @XactLogAbortRecord(i32 %41, i32 %42, i32* %43, i32 %44, i32* %45, i32 %46, i32 %47, i32* null)
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load i64, i64* @XactLastRecEnd, align 8
  %53 = call i32 @XLogSetAsyncXactLSN(i64 %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @TransactionIdAbortTree(i32 %55, i32 %56, i32* %57)
  %59 = call i32 (...) @END_CRIT_SECTION()
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @TransactionIdLatest(i32 %60, i32 %61, i32* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @XidCacheRemoveRunningXids(i32 %67, i32 %68, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %54
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i64 0, i64* @XactLastRecEnd, align 8
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32*, i32** %7, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @pfree(i32* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %19
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @GetCurrentTransactionIdIfAny(...) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @smgrGetPendingDeletes(i32, i32**) #1

declare dso_local i32 @xactGetCommittedChildren(i32**) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @SetCurrentTransactionStopTimestamp(...) #1

declare dso_local i32 @XactLogAbortRecord(i32, i32, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @XLogSetAsyncXactLSN(i64) #1

declare dso_local i32 @TransactionIdAbortTree(i32, i32, i32*) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @TransactionIdLatest(i32, i32, i32*) #1

declare dso_local i32 @XidCacheRemoveRunningXids(i32, i32, i32*, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
