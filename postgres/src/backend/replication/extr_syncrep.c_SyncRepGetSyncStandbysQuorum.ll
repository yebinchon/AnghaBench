; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepGetSyncStandbysQuorum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepGetSyncStandbysQuorum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@SyncRepConfig = common dso_local global %struct.TYPE_7__* null, align 8
@SYNC_REP_QUORUM = common dso_local global i64 0, align 8
@max_wal_senders = common dso_local global i32 0, align 4
@WalSndCtl = common dso_local global %struct.TYPE_6__* null, align 8
@WALSNDSTATE_STREAMING = common dso_local global i64 0, align 8
@WALSNDSTATE_STOPPING = common dso_local global i64 0, align 8
@MyWalSnd = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @SyncRepGetSyncStandbysQuorum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @SyncRepGetSyncStandbysQuorum(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** @NIL, align 8
  store i32* %9, i32** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SyncRepConfig, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SYNC_REP_QUORUM, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %79, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @max_wal_senders, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WalSndCtl, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = call i32 @SpinLockAcquire(i32* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load volatile i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  %36 = load volatile i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load volatile i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = call i32 @SpinLockRelease(i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %21
  br label %79

46:                                               ; preds = %21
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @WALSNDSTATE_STREAMING, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @WALSNDSTATE_STOPPING, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %79

55:                                               ; preds = %50, %46
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load volatile i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %79

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @XLogRecPtrIsInvalid(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %79

66:                                               ; preds = %61
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32* @lappend_int(i32* %67, i32 %68)
  store i32* %69, i32** %3, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyWalSnd, align 8
  %75 = icmp eq %struct.TYPE_5__* %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32*, i32** %2, align 8
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %76, %72, %66
  br label %79

79:                                               ; preds = %78, %65, %60, %54, %45
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %17

82:                                               ; preds = %17
  %83 = load i32*, i32** %3, align 8
  ret i32* %83
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i64 @XLogRecPtrIsInvalid(i32) #1

declare dso_local i32* @lappend_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
