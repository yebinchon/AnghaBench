; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_GetTransactionSnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_GetTransactionSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@FirstSnapshotSet = common dso_local global i32 0, align 4
@HistoricSnapshot = common dso_local global %struct.TYPE_10__* null, align 8
@RegisteredSnapshots = common dso_local global i32 0, align 4
@FirstXactSnapshot = common dso_local global %struct.TYPE_10__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"cannot take query snapshot during a parallel operation\00", align 1
@CurrentSnapshotData = common dso_local global i32 0, align 4
@CurrentSnapshot = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @GetTransactionSnapshot() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = call i64 (...) @HistoricSnapshotActive()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @FirstSnapshotSet, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @HistoricSnapshot, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %1, align 8
  br label %61

11:                                               ; preds = %0
  %12 = load i32, i32* @FirstSnapshotSet, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %11
  %15 = call i32 (...) @InvalidateCatalogSnapshot()
  %16 = call i32 @pairingheap_is_empty(i32* @RegisteredSnapshots)
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @FirstXactSnapshot, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = call i64 (...) @IsInParallelMode()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %14
  %28 = call i64 (...) @IsolationUsesXactSnapshot()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = call i64 (...) @IsolationIsSerializable()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call %struct.TYPE_10__* @GetSerializableTransactionSnapshot(i32* @CurrentSnapshotData)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** @CurrentSnapshot, align 8
  br label %37

35:                                               ; preds = %30
  %36 = call %struct.TYPE_10__* @GetSnapshotData(i32* @CurrentSnapshotData)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** @CurrentSnapshot, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CurrentSnapshot, align 8
  %39 = call %struct.TYPE_10__* @CopySnapshot(%struct.TYPE_10__* %38)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** @CurrentSnapshot, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CurrentSnapshot, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** @FirstXactSnapshot, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @FirstXactSnapshot, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @FirstXactSnapshot, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i32 @pairingheap_add(i32* @RegisteredSnapshots, i32* %46)
  br label %50

48:                                               ; preds = %27
  %49 = call %struct.TYPE_10__* @GetSnapshotData(i32* @CurrentSnapshotData)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** @CurrentSnapshot, align 8
  br label %50

50:                                               ; preds = %48, %37
  store i32 1, i32* @FirstSnapshotSet, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CurrentSnapshot, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %1, align 8
  br label %61

52:                                               ; preds = %11
  %53 = call i64 (...) @IsolationUsesXactSnapshot()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CurrentSnapshot, align 8
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %1, align 8
  br label %61

57:                                               ; preds = %52
  %58 = call i32 (...) @InvalidateCatalogSnapshot()
  %59 = call %struct.TYPE_10__* @GetSnapshotData(i32* @CurrentSnapshotData)
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** @CurrentSnapshot, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CurrentSnapshot, align 8
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %1, align 8
  br label %61

61:                                               ; preds = %57, %55, %50, %4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  ret %struct.TYPE_10__* %62
}

declare dso_local i64 @HistoricSnapshotActive(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @InvalidateCatalogSnapshot(...) #1

declare dso_local i32 @pairingheap_is_empty(i32*) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @IsolationUsesXactSnapshot(...) #1

declare dso_local i64 @IsolationIsSerializable(...) #1

declare dso_local %struct.TYPE_10__* @GetSerializableTransactionSnapshot(i32*) #1

declare dso_local %struct.TYPE_10__* @GetSnapshotData(i32*) #1

declare dso_local %struct.TYPE_10__* @CopySnapshot(%struct.TYPE_10__*) #1

declare dso_local i32 @pairingheap_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
