; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_SetNewSxactGlobalXmin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_SetNewSxactGlobalXmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }

@SerializableXactHashLock = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i64 0, align 8
@PredXact = common dso_local global %struct.TYPE_10__* null, align 8
@OldCommittedSxact = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SetNewSxactGlobalXmin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetNewSxactGlobalXmin() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = load i32, i32* @SerializableXactHashLock, align 4
  %3 = call i32 @LWLockHeldByMe(i32 %2)
  %4 = call i32 @Assert(i32 %3)
  %5 = load i64, i64* @InvalidTransactionId, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PredXact, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PredXact, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 0, i32* %9, align 8
  %10 = call %struct.TYPE_9__* (...) @FirstPredXact()
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %1, align 8
  br label %11

11:                                               ; preds = %73, %0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %76

14:                                               ; preds = %11
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %16 = call i32 @SxactIsRolledBack(%struct.TYPE_9__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %72, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %20 = call i32 @SxactIsCommitted(%struct.TYPE_9__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %72, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @OldCommittedSxact, align 8
  %25 = icmp ne %struct.TYPE_9__* %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @InvalidTransactionId, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PredXact, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @TransactionIdIsValid(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %26
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PredXact, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @TransactionIdPrecedes(i64 %42, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %39, %26
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PredXact, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PredXact, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  br label %71

56:                                               ; preds = %39
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PredXact, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @TransactionIdEquals(i64 %59, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PredXact, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %56
  br label %71

71:                                               ; preds = %70, %48
  br label %72

72:                                               ; preds = %71, %22, %18, %14
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %75 = call %struct.TYPE_9__* @NextPredXact(%struct.TYPE_9__* %74)
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %1, align 8
  br label %11

76:                                               ; preds = %11
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @PredXact, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @OldSerXidSetActiveSerXmin(i64 %79)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local %struct.TYPE_9__* @FirstPredXact(...) #1

declare dso_local i32 @SxactIsRolledBack(%struct.TYPE_9__*) #1

declare dso_local i32 @SxactIsCommitted(%struct.TYPE_9__*) #1

declare dso_local i32 @TransactionIdIsValid(i64) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i64) #1

declare dso_local i64 @TransactionIdEquals(i64, i64) #1

declare dso_local %struct.TYPE_9__* @NextPredXact(%struct.TYPE_9__*) #1

declare dso_local i32 @OldSerXidSetActiveSerXmin(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
