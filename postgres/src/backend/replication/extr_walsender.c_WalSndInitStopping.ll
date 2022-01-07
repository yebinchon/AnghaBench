; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndInitStopping.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndInitStopping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@max_wal_senders = common dso_local global i32 0, align 4
@WalSndCtl = common dso_local global %struct.TYPE_4__* null, align 8
@PROCSIG_WALSND_INIT_STOPPING = common dso_local global i32 0, align 4
@InvalidBackendId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WalSndInitStopping() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %32, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @max_wal_senders, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @WalSndCtl, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %2, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i32 @SpinLockAcquire(i32* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %3, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @SpinLockRelease(i32* %22)
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  br label %32

27:                                               ; preds = %8
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* @PROCSIG_WALSND_INIT_STOPPING, align 4
  %30 = load i32, i32* @InvalidBackendId, align 4
  %31 = call i32 @SendProcSignal(i64 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %26
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %4

35:                                               ; preds = %4
  ret void
}

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @SendProcSignal(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
