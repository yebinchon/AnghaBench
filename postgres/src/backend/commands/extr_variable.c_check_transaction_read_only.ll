; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_variable.c_check_transaction_read_only.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_variable.c_check_transaction_read_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XactReadOnly = common dso_local global i64 0, align 8
@InitializingParallelWorker = common dso_local global i32 0, align 4
@ERRCODE_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"cannot set transaction read-write mode inside a read-only transaction\00", align 1
@FirstSnapshotSet = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"transaction read-write mode must be set before any query\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"cannot set transaction read-write mode during recovery\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_transaction_read_only(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %3
  %12 = load i64, i64* @XactReadOnly, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = call i64 (...) @IsTransactionState()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i32, i32* @InitializingParallelWorker, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %17
  %21 = call i64 (...) @IsSubTransaction()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %25 = call i32 @GUC_check_errcode(i32 %24)
  %26 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %43

27:                                               ; preds = %20
  %28 = load i64, i64* @FirstSnapshotSet, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %32 = call i32 @GUC_check_errcode(i32 %31)
  %33 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %43

34:                                               ; preds = %27
  %35 = call i64 (...) @RecoveryInProgress()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %39 = call i32 @GUC_check_errcode(i32 %38)
  %40 = call i32 @GUC_check_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %43

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %17, %14, %11, %3
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %37, %30, %23
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i64 @IsSubTransaction(...) #1

declare dso_local i32 @GUC_check_errcode(i32) #1

declare dso_local i32 @GUC_check_errmsg(i8*) #1

declare dso_local i64 @RecoveryInProgress(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
