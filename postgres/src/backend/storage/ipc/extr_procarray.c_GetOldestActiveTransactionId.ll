; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetOldestActiveTransactionId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetOldestActiveTransactionId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@procArray = common dso_local global %struct.TYPE_6__* null, align 8
@XidGenLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_8__* null, align 8
@ProcArrayLock = common dso_local global i32 0, align 4
@allPgXact = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetOldestActiveTransactionId() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @procArray, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %1, align 8
  %8 = call i32 (...) @RecoveryInProgress()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i32, i32* @XidGenLock, align 4
  %14 = load i32, i32* @LW_SHARED, align 4
  %15 = call i32 @LWLockAcquire(i32 %13, i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ShmemVariableCache, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @XidFromFullTransactionId(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* @XidGenLock, align 4
  %21 = call i32 @LWLockRelease(i32 %20)
  %22 = load i32, i32* @ProcArrayLock, align 4
  %23 = load i32, i32* @LW_SHARED, align 4
  %24 = call i32 @LWLockAcquire(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %59, %0
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @allPgXact, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @UINT32_ACCESS_ONCE(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @TransactionIdIsNormal(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  br label %59

51:                                               ; preds = %31
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i64 @TransactionIdPrecedes(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58, %50
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %25

62:                                               ; preds = %25
  %63 = load i32, i32* @ProcArrayLock, align 4
  %64 = call i32 @LWLockRelease(i32 %63)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @UINT32_ACCESS_ONCE(i32) #1

declare dso_local i32 @TransactionIdIsNormal(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
