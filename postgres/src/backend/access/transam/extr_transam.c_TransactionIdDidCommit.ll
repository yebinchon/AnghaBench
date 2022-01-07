; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_transam.c_TransactionIdDidCommit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_transam.c_TransactionIdDidCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRANSACTION_STATUS_COMMITTED = common dso_local global i64 0, align 8
@TRANSACTION_STATUS_SUB_COMMITTED = common dso_local global i64 0, align 8
@TransactionXmin = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"no pg_subtrans entry for subcommitted XID %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TransactionIdDidCommit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @TransactionLogFetch(i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @TRANSACTION_STATUS_COMMITTED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @TRANSACTION_STATUS_SUB_COMMITTED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TransactionXmin, align 4
  %19 = call i64 @TransactionIdPrecedes(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %36

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @SubTransGetParent(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @TransactionIdIsValid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @WARNING, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @elog(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @TransactionIdDidCommit(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32, %28, %21, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @TransactionLogFetch(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @SubTransGetParent(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
