; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepReleaseWaiters.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepReleaseWaiters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }

@WalSndCtl = common dso_local global %struct.TYPE_5__* null, align 8
@MyWalSnd = common dso_local global %struct.TYPE_7__* null, align 8
@WALSNDSTATE_STREAMING = common dso_local global i64 0, align 8
@WALSNDSTATE_STOPPING = common dso_local global i64 0, align 8
@announce_next_takeover = common dso_local global i32 0, align 4
@SyncRepLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@SyncRepConfig = common dso_local global %struct.TYPE_6__* null, align 8
@SYNC_REP_PRIORITY = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"standby \22%s\22 is now a synchronous standby with priority %u\00", align 1
@application_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"standby \22%s\22 is now a candidate for quorum synchronous standby\00", align 1
@SYNC_REP_WAIT_WRITE = common dso_local global i64 0, align 8
@SYNC_REP_WAIT_FLUSH = common dso_local global i64 0, align 8
@SYNC_REP_WAIT_APPLY = common dso_local global i64 0, align 8
@DEBUG3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [92 x i8] c"released %d procs up to write %X/%X, %d procs up to flush %X/%X, %d procs up to apply %X/%X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SyncRepReleaseWaiters() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @WalSndCtl, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %1, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyWalSnd, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyWalSnd, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WALSNDSTATE_STREAMING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyWalSnd, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WALSNDSTATE_STOPPING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyWalSnd, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @XLogRecPtrIsInvalid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21, %0
  store i32 1, i32* @announce_next_takeover, align 4
  br label %148

34:                                               ; preds = %27
  %35 = load i32, i32* @SyncRepLock, align 4
  %36 = load i32, i32* @LW_EXCLUSIVE, align 4
  %37 = call i32 @LWLockAcquire(i32 %35, i32 %36)
  %38 = call i32 @SyncRepGetSyncRecPtr(i32* %2, i32* %3, i32* %4, i32* %6)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @announce_next_takeover, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  store i32 0, i32* @announce_next_takeover, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SyncRepConfig, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SYNC_REP_PRIORITY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* @LOG, align 4
  %52 = load i32, i32* @application_name, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyWalSnd, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %55)
  %57 = call i32 @ereport(i32 %51, i32 %56)
  br label %63

58:                                               ; preds = %44
  %59 = load i32, i32* @LOG, align 4
  %60 = load i32, i32* @application_name, align 4
  %61 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = call i32 @ereport(i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %50
  br label %64

64:                                               ; preds = %63, %41, %34
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* @SyncRepLock, align 4
  %72 = call i32 @LWLockRelease(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* @announce_next_takeover, align 4
  br label %148

77:                                               ; preds = %67
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load volatile i32*, i32** %79, align 8
  %81 = load i64, i64* @SYNC_REP_WAIT_WRITE, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %2, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load i32, i32* %2, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load volatile i32*, i32** %89, align 8
  %91 = load i64, i64* @SYNC_REP_WAIT_WRITE, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load i64, i64* @SYNC_REP_WAIT_WRITE, align 8
  %94 = call i32 @SyncRepWakeQueue(i32 0, i64 %93)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %86, %77
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load volatile i32*, i32** %97, align 8
  %99 = load i64, i64* @SYNC_REP_WAIT_FLUSH, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %95
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load volatile i32*, i32** %107, align 8
  %109 = load i64, i64* @SYNC_REP_WAIT_FLUSH, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i64, i64* @SYNC_REP_WAIT_FLUSH, align 8
  %112 = call i32 @SyncRepWakeQueue(i32 0, i64 %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %104, %95
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load volatile i32*, i32** %115, align 8
  %117 = load i64, i64* @SYNC_REP_WAIT_APPLY, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %113
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load volatile i32*, i32** %125, align 8
  %127 = load i64, i64* @SYNC_REP_WAIT_APPLY, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load i64, i64* @SYNC_REP_WAIT_APPLY, align 8
  %130 = call i32 @SyncRepWakeQueue(i32 0, i64 %129)
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %122, %113
  %132 = load i32, i32* @SyncRepLock, align 4
  %133 = call i32 @LWLockRelease(i32 %132)
  %134 = load i32, i32* @DEBUG3, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %2, align 4
  %137 = ashr i32 %136, 32
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %3, align 4
  %141 = ashr i32 %140, 32
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %4, align 4
  %145 = ashr i32 %144, 32
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @elog(i32 %134, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %137, i32 %138, i32 %139, i32 %141, i32 %142, i32 %143, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %131, %70, %33
  ret void
}

declare dso_local i64 @XLogRecPtrIsInvalid(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @SyncRepGetSyncRecPtr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @SyncRepWakeQueue(i32, i64) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
