; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_InvalidateCatalogSnapshotConditionally.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_InvalidateCatalogSnapshotConditionally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CatalogSnapshot = common dso_local global i64 0, align 8
@ActiveSnapshot = common dso_local global i32* null, align 8
@RegisteredSnapshots = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InvalidateCatalogSnapshotConditionally() #0 {
  %1 = load i64, i64* @CatalogSnapshot, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i32*, i32** @ActiveSnapshot, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = call i64 @pairingheap_is_singular(i32* @RegisteredSnapshots)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (...) @InvalidateCatalogSnapshot()
  br label %11

11:                                               ; preds = %9, %6, %3, %0
  ret void
}

declare dso_local i64 @pairingheap_is_singular(i32*) #1

declare dso_local i32 @InvalidateCatalogSnapshot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
