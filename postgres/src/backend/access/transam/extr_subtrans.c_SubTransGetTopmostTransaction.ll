; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_SubTransGetTopmostTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_SubTransGetTopmostTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TransactionXmin = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"pg_subtrans contains invalid entry: xid %u points to parent xid %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SubTransGetTopmostTransaction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @TransactionXmin, align 4
  %9 = call i64 @TransactionIdFollowsOrEquals(i32 %7, i32 %8)
  %10 = call i32 @Assert(i64 %9)
  br label %11

11:                                               ; preds = %34, %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @TransactionIdIsValid(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TransactionXmin, align 4
  %19 = call i64 @TransactionIdPrecedes(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %35

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @SubTransGetParent(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @TransactionIdPrecedes(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @elog(i32 %30, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  br label %11

35:                                               ; preds = %21, %11
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @TransactionIdIsValid(i32 %36)
  %38 = call i32 @Assert(i64 %37)
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @Assert(i64) #1

declare dso_local i64 @TransactionIdFollowsOrEquals(i32, i32) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @SubTransGetParent(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
