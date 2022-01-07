; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_StartLogicalReplication.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_StartLogicalReplication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MyReplicationSlot = common dso_local global %struct.TYPE_9__* null, align 8
@am_cascading_walsender = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"terminating walsender process after promotion\00", align 1
@got_STOPPING = common dso_local global i32 0, align 4
@logical_read_xlog_page = common dso_local global i32 0, align 4
@WalSndPrepareWrite = common dso_local global i32 0, align 4
@WalSndWriteData = common dso_local global i32 0, align 4
@WalSndUpdateProgress = common dso_local global i32 0, align 4
@logical_decoding_ctx = common dso_local global i32 0, align 4
@WALSNDSTATE_CATCHUP = common dso_local global i32 0, align 4
@logical_startptr = common dso_local global i32 0, align 4
@sentPtr = common dso_local global i32 0, align 4
@MyWalSnd = common dso_local global %struct.TYPE_8__* null, align 8
@replication_active = common dso_local global i32 0, align 4
@XLogSendLogical = common dso_local global i32 0, align 4
@WALSNDSTATE_STARTUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"COPY 0\00", align 1
@DestRemote = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @StartLogicalReplication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StartLogicalReplication(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = call i32 (...) @CheckLogicalDecodingRequirements()
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MyReplicationSlot, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ReplicationSlotAcquire(i32 %12, i32 1)
  %14 = load i64, i64* @am_cascading_walsender, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = call i32 (...) @RecoveryInProgress()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @LOG, align 4
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @ereport(i32 %20, i32 %21)
  store i32 1, i32* @got_STOPPING, align 4
  br label %23

23:                                               ; preds = %19, %16, %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @logical_read_xlog_page, align 4
  %31 = load i32, i32* @WalSndPrepareWrite, align 4
  %32 = load i32, i32* @WalSndWriteData, align 4
  %33 = load i32, i32* @WalSndUpdateProgress, align 4
  %34 = call i32 @CreateDecodingContext(i32 %26, i32 %29, i32 0, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* @logical_decoding_ctx, align 4
  %35 = load i32, i32* @WALSNDSTATE_CATCHUP, align 4
  %36 = call i32 @WalSndSetState(i32 %35)
  %37 = call i32 @pq_beginmessage(i32* %3, i8 signext 87)
  %38 = call i32 @pq_sendbyte(i32* %3, i32 0)
  %39 = call i32 @pq_sendint16(i32* %3, i32 0)
  %40 = call i32 @pq_endmessage(i32* %3)
  %41 = call i32 (...) @pq_flush()
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MyReplicationSlot, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* @logical_startptr, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MyReplicationSlot, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* @sentPtr, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyWalSnd, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = call i32 @SpinLockAcquire(i32* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @MyReplicationSlot, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyWalSnd, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyWalSnd, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call i32 @SpinLockRelease(i32* %60)
  store i32 1, i32* @replication_active, align 4
  %62 = call i32 (...) @SyncRepInitConfig()
  %63 = load i32, i32* @XLogSendLogical, align 4
  %64 = call i32 @WalSndLoop(i32 %63)
  %65 = load i32, i32* @logical_decoding_ctx, align 4
  %66 = call i32 @FreeDecodingContext(i32 %65)
  %67 = call i32 (...) @ReplicationSlotRelease()
  store i32 0, i32* @replication_active, align 4
  %68 = load i32, i32* @got_STOPPING, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %23
  %71 = call i32 @proc_exit(i32 0)
  br label %72

72:                                               ; preds = %70, %23
  %73 = load i32, i32* @WALSNDSTATE_STARTUP, align 4
  %74 = call i32 @WalSndSetState(i32 %73)
  %75 = load i32, i32* @DestRemote, align 4
  %76 = call i32 @EndCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  ret void
}

declare dso_local i32 @CheckLogicalDecodingRequirements(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ReplicationSlotAcquire(i32, i32) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @CreateDecodingContext(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WalSndSetState(i32) #1

declare dso_local i32 @pq_beginmessage(i32*, i8 signext) #1

declare dso_local i32 @pq_sendbyte(i32*, i32) #1

declare dso_local i32 @pq_sendint16(i32*, i32) #1

declare dso_local i32 @pq_endmessage(i32*) #1

declare dso_local i32 @pq_flush(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @SyncRepInitConfig(...) #1

declare dso_local i32 @WalSndLoop(i32) #1

declare dso_local i32 @FreeDecodingContext(i32) #1

declare dso_local i32 @ReplicationSlotRelease(...) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @EndCommand(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
