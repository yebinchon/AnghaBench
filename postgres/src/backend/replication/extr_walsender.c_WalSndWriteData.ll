; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndWriteData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndWriteData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }

@tmpbuf = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@last_reply_timestamp = common dso_local global i32 0, align 4
@wal_sender_timeout = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@MyProcPort = common dso_local global %struct.TYPE_11__* null, align 8
@WAIT_EVENT_WAL_SENDER_WRITE_DATA = common dso_local global i32 0, align 4
@ConfigReloadPending = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i32)* @WalSndWriteData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WalSndWriteData(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call i32 @resetStringInfo(%struct.TYPE_10__* @tmpbuf)
  %13 = call i64 (...) @GetCurrentTimestamp()
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @pq_sendint64(%struct.TYPE_10__* @tmpbuf, i64 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 9
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tmpbuf, i32 0, i32 0), align 4
  %23 = call i32 @memcpy(i32* %21, i32 %22, i32 4)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pq_putmessage_noblock(i8 signext 100, i32* %28, i32 %33)
  %35 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %36 = call i64 (...) @pq_flush_if_writable()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = call i32 (...) @WalSndShutdown()
  br label %40

40:                                               ; preds = %38, %4
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* @last_reply_timestamp, align 4
  %43 = load i32, i32* @wal_sender_timeout, align 4
  %44 = sdiv i32 %43, 2
  %45 = call i64 @TimestampTzPlusMilliseconds(i32 %42, i32 %44)
  %46 = icmp slt i64 %41, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call i32 (...) @pq_is_send_pending()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %97

51:                                               ; preds = %47, %40
  br label %52

52:                                               ; preds = %93, %51
  %53 = call i32 (...) @ProcessRepliesIfAny()
  %54 = call i32 (...) @WalSndCheckTimeOut()
  %55 = call i32 (...) @WalSndKeepaliveIfNecessary()
  %56 = call i32 (...) @pq_is_send_pending()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %94

59:                                               ; preds = %52
  %60 = call i64 (...) @GetCurrentTimestamp()
  %61 = call i64 @WalSndComputeSleeptime(i64 %60)
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* @WL_LATCH_SET, align 4
  %63 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @WL_TIMEOUT, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @MyLatch, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @MyProcPort, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* @WAIT_EVENT_WAL_SENDER_WRITE_DATA, align 4
  %78 = call i32 @WaitLatchOrSocket(i32 %71, i32 %72, i32 %75, i64 %76, i32 %77)
  %79 = load i32, i32* @MyLatch, align 4
  %80 = call i32 @ResetLatch(i32 %79)
  %81 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %82 = load i32, i32* @ConfigReloadPending, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %59
  store i32 0, i32* @ConfigReloadPending, align 4
  %85 = load i32, i32* @PGC_SIGHUP, align 4
  %86 = call i32 @ProcessConfigFile(i32 %85)
  %87 = call i32 (...) @SyncRepInitConfig()
  br label %88

88:                                               ; preds = %84, %59
  %89 = call i64 (...) @pq_flush_if_writable()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (...) @WalSndShutdown()
  br label %93

93:                                               ; preds = %91, %88
  br label %52

94:                                               ; preds = %58
  %95 = load i32, i32* @MyLatch, align 4
  %96 = call i32 @SetLatch(i32 %95)
  br label %97

97:                                               ; preds = %94, %50
  ret void
}

declare dso_local i32 @resetStringInfo(%struct.TYPE_10__*) #1

declare dso_local i64 @GetCurrentTimestamp(...) #1

declare dso_local i32 @pq_sendint64(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @pq_putmessage_noblock(i8 signext, i32*, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @pq_flush_if_writable(...) #1

declare dso_local i32 @WalSndShutdown(...) #1

declare dso_local i64 @TimestampTzPlusMilliseconds(i32, i32) #1

declare dso_local i32 @pq_is_send_pending(...) #1

declare dso_local i32 @ProcessRepliesIfAny(...) #1

declare dso_local i32 @WalSndCheckTimeOut(...) #1

declare dso_local i32 @WalSndKeepaliveIfNecessary(...) #1

declare dso_local i64 @WalSndComputeSleeptime(i64) #1

declare dso_local i32 @WaitLatchOrSocket(i32, i32, i32, i64, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @SyncRepInitConfig(...) #1

declare dso_local i32 @SetLatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
