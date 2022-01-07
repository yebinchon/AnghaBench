; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_ProcessRepliesIfAny.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_ProcessRepliesIfAny.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_processing = common dso_local global i32 0, align 4
@COMMERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unexpected EOF on standby connection\00", align 1
@reply_message = common dso_local global i32 0, align 4
@streamingDoneReceiving = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"unexpected standby message type \22%c\22, after receiving CopyDone\00", align 1
@streamingDoneSending = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid standby message type \22%c\22\00", align 1
@last_reply_timestamp = common dso_local global i32 0, align 4
@waiting_for_ping_response = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProcessRepliesIfAny to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessRepliesIfAny() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @GetCurrentTimestamp()
  store i32 %4, i32* @last_processing, align 4
  br label %5

5:                                                ; preds = %69, %0
  %6 = call i32 (...) @pq_startmsgread()
  %7 = call i32 @pq_getbyte_if_available(i8* %1)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load i32, i32* @COMMERROR, align 4
  %12 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %13 = call i32 @errcode(i32 %12)
  %14 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @ereport(i32 %11, i32 %14)
  %16 = call i32 @proc_exit(i32 0)
  br label %17

17:                                               ; preds = %10, %5
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @pq_endmsgread()
  br label %70

22:                                               ; preds = %17
  %23 = call i32 @resetStringInfo(i32* @reply_message)
  %24 = call i64 @pq_getmessage(i32* @reply_message, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* @COMMERROR, align 4
  %28 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  %32 = call i32 @proc_exit(i32 0)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i32, i32* @streamingDoneReceiving, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i8, i8* %1, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 88
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* @FATAL, align 4
  %42 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load i8, i8* %1, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 @ereport(i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %40, %36, %33
  %49 = load i8, i8* %1, align 1
  %50 = zext i8 %49 to i32
  switch i32 %50, label %61 [
    i32 100, label %51
    i32 99, label %53
    i32 88, label %59
  ]

51:                                               ; preds = %48
  %52 = call i32 (...) @ProcessStandbyMessage()
  store i32 1, i32* %3, align 4
  br label %69

53:                                               ; preds = %48
  %54 = load i32, i32* @streamingDoneSending, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 @pq_putmessage_noblock(i8 signext 99, i32* null, i32 0)
  store i32 1, i32* @streamingDoneSending, align 4
  br label %58

58:                                               ; preds = %56, %53
  store i32 1, i32* @streamingDoneReceiving, align 4
  store i32 1, i32* %3, align 4
  br label %69

59:                                               ; preds = %48
  %60 = call i32 @proc_exit(i32 0)
  br label %61

61:                                               ; preds = %48, %59
  %62 = load i32, i32* @FATAL, align 4
  %63 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = load i8, i8* %1, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = call i32 @ereport(i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %61, %58, %51
  br label %5

70:                                               ; preds = %20
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @last_processing, align 4
  store i32 %74, i32* @last_reply_timestamp, align 4
  store i32 0, i32* @waiting_for_ping_response, align 4
  br label %75

75:                                               ; preds = %73, %70
  ret void
}

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @pq_startmsgread(...) #1

declare dso_local i32 @pq_getbyte_if_available(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @pq_endmsgread(...) #1

declare dso_local i32 @resetStringInfo(i32*) #1

declare dso_local i64 @pq_getmessage(i32*, i32) #1

declare dso_local i32 @ProcessStandbyMessage(...) #1

declare dso_local i32 @pq_putmessage_noblock(i8 signext, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
