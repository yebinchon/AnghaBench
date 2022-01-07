; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndLoop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@last_reply_timestamp = common dso_local global i32 0, align 4
@waiting_for_ping_response = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@ConfigReloadPending = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@streamingDoneReceiving = common dso_local global i64 0, align 8
@streamingDoneSending = common dso_local global i64 0, align 8
@WalSndCaughtUp = common dso_local global i32 0, align 4
@MyWalSnd = common dso_local global %struct.TYPE_3__* null, align 8
@WALSNDSTATE_CATCHUP = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"\22%s\22 has now caught up with upstream server\00", align 1
@application_name = common dso_local global i32 0, align 4
@WALSNDSTATE_STREAMING = common dso_local global i32 0, align 4
@got_SIGUSR2 = common dso_local global i64 0, align 8
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@MyProcPort = common dso_local global %struct.TYPE_4__* null, align 8
@WAIT_EVENT_WAL_SENDER_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (...)*)* @WalSndLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WalSndLoop(i32 (...)* %0) #0 {
  %2 = alloca i32 (...)*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 (...)* %0, i32 (...)** %2, align 8
  %5 = call i32 (...) @GetCurrentTimestamp()
  store i32 %5, i32* @last_reply_timestamp, align 4
  store i32 0, i32* @waiting_for_ping_response, align 4
  br label %6

6:                                                ; preds = %101, %1
  %7 = load i32, i32* @MyLatch, align 4
  %8 = call i32 @ResetLatch(i32 %7)
  %9 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %10 = load i32, i32* @ConfigReloadPending, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  store i32 0, i32* @ConfigReloadPending, align 4
  %13 = load i32, i32* @PGC_SIGHUP, align 4
  %14 = call i32 @ProcessConfigFile(i32 %13)
  %15 = call i32 (...) @SyncRepInitConfig()
  br label %16

16:                                               ; preds = %12, %6
  %17 = call i32 (...) @ProcessRepliesIfAny()
  %18 = load i64, i64* @streamingDoneReceiving, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i64, i64* @streamingDoneSending, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = call i64 (...) @pq_is_send_pending()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %102

27:                                               ; preds = %23, %20, %16
  %28 = call i64 (...) @pq_is_send_pending()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32 (...)*, i32 (...)** %2, align 8
  %32 = call i32 (...) %31()
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* @WalSndCaughtUp, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = call i64 (...) @pq_flush_if_writable()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @WalSndShutdown()
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* @WalSndCaughtUp, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = call i64 (...) @pq_is_send_pending()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyWalSnd, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WALSNDSTATE_CATCHUP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @DEBUG1, align 4
  %53 = load i32, i32* @application_name, align 4
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = call i32 @ereport(i32 %52, i32 %54)
  %56 = load i32, i32* @WALSNDSTATE_STREAMING, align 4
  %57 = call i32 @WalSndSetState(i32 %56)
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i64, i64* @got_SIGUSR2, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32 (...)*, i32 (...)** %2, align 8
  %63 = call i32 @WalSndDone(i32 (...)* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %42, %39
  %66 = call i32 (...) @WalSndCheckTimeOut()
  %67 = call i32 (...) @WalSndKeepaliveIfNecessary()
  %68 = load i32, i32* @WalSndCaughtUp, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* @streamingDoneSending, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70, %65
  %74 = call i64 (...) @pq_is_send_pending()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @WL_LATCH_SET, align 4
  %78 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @WL_TIMEOUT, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %4, align 4
  %84 = call i32 (...) @GetCurrentTimestamp()
  %85 = call i64 @WalSndComputeSleeptime(i32 %84)
  store i64 %85, i64* %3, align 8
  %86 = call i64 (...) @pq_is_send_pending()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %76
  %93 = load i32, i32* @MyLatch, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProcPort, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %3, align 8
  %99 = load i32, i32* @WAIT_EVENT_WAL_SENDER_MAIN, align 4
  %100 = call i32 @WaitLatchOrSocket(i32 %93, i32 %94, i32 %97, i64 %98, i32 %99)
  br label %101

101:                                              ; preds = %92, %73
  br label %6

102:                                              ; preds = %26
  ret void
}

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @SyncRepInitConfig(...) #1

declare dso_local i32 @ProcessRepliesIfAny(...) #1

declare dso_local i64 @pq_is_send_pending(...) #1

declare dso_local i64 @pq_flush_if_writable(...) #1

declare dso_local i32 @WalSndShutdown(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @WalSndSetState(i32) #1

declare dso_local i32 @WalSndDone(i32 (...)*) #1

declare dso_local i32 @WalSndCheckTimeOut(...) #1

declare dso_local i32 @WalSndKeepaliveIfNecessary(...) #1

declare dso_local i64 @WalSndComputeSleeptime(i32) #1

declare dso_local i32 @WaitLatchOrSocket(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
