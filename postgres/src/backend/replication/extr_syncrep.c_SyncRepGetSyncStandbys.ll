; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepGetSyncStandbys.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepGetSyncStandbys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SyncRepLock = common dso_local global i32 0, align 4
@SyncRepConfig = common dso_local global %struct.TYPE_2__* null, align 8
@NIL = common dso_local global i32* null, align 8
@SYNC_REP_PRIORITY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SyncRepGetSyncStandbys(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @SyncRepLock, align 4
  %5 = call i32 @LWLockHeldByMe(i32 %4)
  %6 = call i32 @Assert(i32 %5)
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SyncRepConfig, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32*, i32** @NIL, align 8
  store i32* %15, i32** %2, align 8
  br label %30

16:                                               ; preds = %11
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SyncRepConfig, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SYNC_REP_PRIORITY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @SyncRepGetSyncStandbysPriority(i32* %23)
  br label %28

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @SyncRepGetSyncStandbysQuorum(i32* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32* [ %24, %22 ], [ %27, %25 ]
  store i32* %29, i32** %2, align 8
  br label %30

30:                                               ; preds = %28, %14
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32* @SyncRepGetSyncStandbysPriority(i32*) #1

declare dso_local i32* @SyncRepGetSyncStandbysQuorum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
