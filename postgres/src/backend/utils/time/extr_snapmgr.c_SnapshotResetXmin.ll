; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_SnapshotResetXmin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_SnapshotResetXmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ActiveSnapshot = common dso_local global i32* null, align 8
@RegisteredSnapshots = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@MyPgXact = common dso_local global %struct.TYPE_5__* null, align 8
@SnapshotData = common dso_local global i32 0, align 4
@ph_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SnapshotResetXmin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SnapshotResetXmin() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i32*, i32** @ActiveSnapshot, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %31

5:                                                ; preds = %0
  %6 = call i64 @pairingheap_is_empty(i32* @RegisteredSnapshots)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* @InvalidTransactionId, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyPgXact, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  br label %31

12:                                               ; preds = %5
  %13 = load i32, i32* @SnapshotData, align 4
  %14 = load i32, i32* @ph_node, align 4
  %15 = call i32 @pairingheap_first(i32* @RegisteredSnapshots)
  %16 = call %struct.TYPE_4__* @pairingheap_container(i32 %13, i32 %14, i32 %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %1, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyPgXact, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @TransactionIdPrecedes(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyPgXact, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %4, %8, %25, %12
  ret void
}

declare dso_local i64 @pairingheap_is_empty(i32*) #1

declare dso_local %struct.TYPE_4__* @pairingheap_container(i32, i32, i32) #1

declare dso_local i32 @pairingheap_first(i32*) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
