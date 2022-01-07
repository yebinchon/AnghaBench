; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_RecordTransactionAbortPrepared.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_RecordTransactionAbortPrepared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"cannot abort transaction %u, it was already committed\00", align 1
@MyXactFlags = common dso_local global i32 0, align 4
@XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32, i32*, i8*)* @RecordTransactionAbortPrepared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RecordTransactionAbortPrepared(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @TransactionIdDidCommit(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i32, i32* @PANIC, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %6
  %22 = call i32 (...) @START_CRIT_SECTION()
  %23 = call i32 (...) @GetCurrentTimestamp()
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* @MyXactFlags, align 4
  %29 = load i32, i32* @XACT_FLAGS_ACQUIREDACCESSEXCLUSIVELOCK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @XactLogAbortRecord(i32 %23, i32 %24, i32* %25, i32 %26, i32* %27, i32 %30, i32 %31, i8* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @XLogFlush(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @TransactionIdAbortTree(i32 %36, i32 %37, i32* %38)
  %40 = call i32 (...) @END_CRIT_SECTION()
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @SyncRepWaitForLSN(i32 %41, i32 0)
  ret void
}

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @XactLogAbortRecord(i32, i32, i32*, i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @XLogFlush(i32) #1

declare dso_local i32 @TransactionIdAbortTree(i32, i32, i32*) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @SyncRepWaitForLSN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
