; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_GetNonHistoricCatalogSnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_GetNonHistoricCatalogSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CatalogSnapshot = common dso_local global %struct.TYPE_5__* null, align 8
@CatalogSnapshotData = common dso_local global i32 0, align 4
@RegisteredSnapshots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @GetNonHistoricCatalogSnapshot(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CatalogSnapshot, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @RelationInvalidatesSnapshotsOnly(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @RelationHasSysCache(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (...) @InvalidateCatalogSnapshot()
  br label %15

15:                                               ; preds = %13, %9, %5, %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CatalogSnapshot, align 8
  %17 = icmp eq %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = call %struct.TYPE_5__* @GetSnapshotData(i32* @CatalogSnapshotData)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** @CatalogSnapshot, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CatalogSnapshot, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @pairingheap_add(i32* @RegisteredSnapshots, i32* %21)
  br label %23

23:                                               ; preds = %18, %15
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CatalogSnapshot, align 8
  ret %struct.TYPE_5__* %24
}

declare dso_local i32 @RelationInvalidatesSnapshotsOnly(i32) #1

declare dso_local i32 @RelationHasSysCache(i32) #1

declare dso_local i32 @InvalidateCatalogSnapshot(...) #1

declare dso_local %struct.TYPE_5__* @GetSnapshotData(i32*) #1

declare dso_local i32 @pairingheap_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
