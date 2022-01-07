; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_ProcArrayEndTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_ProcArrayEndTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@allPgXact = common dso_local global %struct.TYPE_8__* null, align 8
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidLocalTransactionId = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@PROC_VACUUM_STATE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcArrayEndTransaction(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @allPgXact, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i64 %9
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @TransactionIdIsValid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @allPgXact, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @TransactionIdIsValid(i32 %21)
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32, i32* @ProcArrayLock, align 4
  %25 = load i32, i32* @LW_EXCLUSIVE, align 4
  %26 = call i64 @LWLockConditionalAcquire(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %14
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ProcArrayEndTransactionInternal(%struct.TYPE_9__* %29, %struct.TYPE_8__* %30, i32 %31)
  %33 = load i32, i32* @ProcArrayLock, align 4
  %34 = call i32 @LWLockRelease(i32 %33)
  br label %39

35:                                               ; preds = %14
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ProcArrayGroupClearXid(%struct.TYPE_9__* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %28
  br label %81

40:                                               ; preds = %2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @allPgXact, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @TransactionIdIsValid(i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load i32, i32* @InvalidLocalTransactionId, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @InvalidTransactionId, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @PROC_VACUUM_STATE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @Assert(i32 %79)
  br label %81

81:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @LWLockConditionalAcquire(i32, i32) #1

declare dso_local i32 @ProcArrayEndTransactionInternal(%struct.TYPE_9__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ProcArrayGroupClearXid(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
