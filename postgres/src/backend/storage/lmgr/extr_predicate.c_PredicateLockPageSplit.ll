; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PredicateLockPageSplit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_predicate.c_PredicateLockPageSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PredXact = common dso_local global %struct.TYPE_8__* null, align 8
@SerializablePredicateLockListLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PredicateLockPageSplit(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PredXact, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @TransactionIdIsValid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %73

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 @PredicateLockingNeededForRelation(%struct.TYPE_7__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %73

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @BlockNumberIsValid(i32 %27)
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @BlockNumberIsValid(i32 %30)
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @SET_PREDICATELOCKTARGETTAG_PAGE(i32 %33, i32 %37, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @SET_PREDICATELOCKTARGETTAG_PAGE(i32 %43, i32 %47, i32 %50, i32 %51)
  %53 = load i32, i32* @SerializablePredicateLockListLock, align 4
  %54 = load i32, i32* @LW_EXCLUSIVE, align 4
  %55 = call i32 @LWLockAcquire(i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @TransferPredicateLocksToNewTarget(i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %21
  %62 = call i32 @GetParentPredicateLockTag(i32* %7, i32* %8)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @Assert(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @TransferPredicateLocksToNewTarget(i32 %65, i32 %66, i32 1)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @Assert(i32 %68)
  br label %70

70:                                               ; preds = %61, %21
  %71 = load i32, i32* @SerializablePredicateLockListLock, align 4
  %72 = call i32 @LWLockRelease(i32 %71)
  br label %73

73:                                               ; preds = %70, %20, %15
  ret void
}

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @PredicateLockingNeededForRelation(%struct.TYPE_7__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BlockNumberIsValid(i32) #1

declare dso_local i32 @SET_PREDICATELOCKTARGETTAG_PAGE(i32, i32, i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @TransferPredicateLocksToNewTarget(i32, i32, i32) #1

declare dso_local i32 @GetParentPredicateLockTag(i32*, i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
