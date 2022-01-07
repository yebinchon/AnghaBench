; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_OldSerXidSetActiveSerXmin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_OldSerXidSetActiveSerXmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i8* }

@OldSerXidLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i8* null, align 8
@oldSerXidControl = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @OldSerXidSetActiveSerXmin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OldSerXidSetActiveSerXmin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @OldSerXidLock, align 4
  %4 = load i32, i32* @LW_EXCLUSIVE, align 4
  %5 = call i32 @LWLockAcquire(i32 %3, i32 %4)
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @TransactionIdIsValid(i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** @InvalidTransactionId, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSerXidControl, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @InvalidTransactionId, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSerXidControl, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @OldSerXidLock, align 4
  %17 = call i32 @LWLockRelease(i32 %16)
  br label %69

18:                                               ; preds = %1
  %19 = call i64 (...) @RecoveryInProgress()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSerXidControl, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSerXidControl, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @TransactionIdIsValid(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load i8*, i8** %2, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSerXidControl, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @TransactionIdPrecedes(i8* %34, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33, %21
  %41 = load i8*, i8** %2, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSerXidControl, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* @OldSerXidLock, align 4
  %46 = call i32 @LWLockRelease(i32 %45)
  br label %69

47:                                               ; preds = %18
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSerXidControl, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @TransactionIdIsValid(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i8*, i8** %2, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSerXidControl, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @TransactionIdFollows(i8* %54, i8* %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %53, %47
  %61 = phi i1 [ true, %47 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @Assert(i32 %62)
  %64 = load i8*, i8** %2, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSerXidControl, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @OldSerXidLock, align 4
  %68 = call i32 @LWLockRelease(i32 %67)
  br label %69

69:                                               ; preds = %60, %44, %9
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @TransactionIdIsValid(i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i8*, i8*) #1

declare dso_local i64 @TransactionIdFollows(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
