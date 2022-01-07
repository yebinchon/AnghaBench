; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_ExtendSUBTRANS.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_subtrans.c_ExtendSUBTRANS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FirstNormalTransactionId = common dso_local global i32 0, align 4
@SubtransControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExtendSUBTRANS(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @TransactionIdToEntry(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @FirstNormalTransactionId, align 4
  %10 = call i32 @TransactionIdEquals(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %23

13:                                               ; preds = %7, %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @TransactionIdToPage(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @SubtransControlLock, align 4
  %17 = load i32, i32* @LW_EXCLUSIVE, align 4
  %18 = call i32 @LWLockAcquire(i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ZeroSUBTRANSPage(i32 %19)
  %21 = load i32, i32* @SubtransControlLock, align 4
  %22 = call i32 @LWLockRelease(i32 %21)
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @TransactionIdToEntry(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @TransactionIdToPage(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ZeroSUBTRANSPage(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
