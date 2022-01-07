; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lmgr.c_XactLockTableWait.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lmgr.c_XactLockTableWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@XLTW_None = common dso_local global i64 0, align 8
@XactLockTableWaitErrorCb = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_5__* null, align 8
@ShareLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XactLockTableWait(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 1, i32* %12, align 4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @XLTW_None, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @RelationIsValid(i32 %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ItemPointerIsValid(i32 %20)
  %22 = call i32 @Assert(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @XactLockTableWaitErrorCb, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @error_context_stack, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** @error_context_stack, align 8
  br label %34

34:                                               ; preds = %16, %4
  br label %35

35:                                               ; preds = %62, %34
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @TransactionIdIsValid(i32 %36)
  %38 = call i32 @Assert(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (...) @GetTopTransactionIdIfAny()
  %41 = call i32 @TransactionIdEquals(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @SET_LOCKTAG_TRANSACTION(i32 %46, i32 %47)
  %49 = load i32, i32* @ShareLock, align 4
  %50 = call i32 @LockAcquire(i32* %9, i32 %49, i32 0, i32 0)
  %51 = load i32, i32* @ShareLock, align 4
  %52 = call i32 @LockRelease(i32* %9, i32 %51, i32 0)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @TransactionIdIsInProgress(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %35
  br label %65

57:                                               ; preds = %35
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @pg_usleep(i64 1000)
  br label %62

62:                                               ; preds = %60, %57
  store i32 0, i32* %12, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @SubTransGetTopmostTransaction(i32 %63)
  store i32 %64, i32* %5, align 4
  br label %35

65:                                               ; preds = %56
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @XLTW_None, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** @error_context_stack, align 8
  br label %72

72:                                               ; preds = %69, %65
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RelationIsValid(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @GetTopTransactionIdIfAny(...) #1

declare dso_local i32 @SET_LOCKTAG_TRANSACTION(i32, i32) #1

declare dso_local i32 @LockAcquire(i32*, i32, i32, i32) #1

declare dso_local i32 @LockRelease(i32*, i32, i32) #1

declare dso_local i32 @TransactionIdIsInProgress(i32) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @SubTransGetTopmostTransaction(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
