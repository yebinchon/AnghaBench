; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_ProcessStandbyMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_ProcessStandbyMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reply_message = common dso_local global i32 0, align 4
@COMMERROR = common dso_local global i32 0, align 4
@ERRCODE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unexpected message type \22%c\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProcessStandbyMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessStandbyMessage() #0 {
  %1 = alloca i8, align 1
  %2 = call signext i8 @pq_getmsgbyte(i32* @reply_message)
  store i8 %2, i8* %1, align 1
  %3 = load i8, i8* %1, align 1
  %4 = sext i8 %3 to i32
  switch i32 %4, label %9 [
    i32 114, label %5
    i32 104, label %7
  ]

5:                                                ; preds = %0
  %6 = call i32 (...) @ProcessStandbyReplyMessage()
  br label %17

7:                                                ; preds = %0
  %8 = call i32 (...) @ProcessStandbyHSFeedbackMessage()
  br label %17

9:                                                ; preds = %0
  %10 = load i32, i32* @COMMERROR, align 4
  %11 = load i32, i32* @ERRCODE_PROTOCOL_VIOLATION, align 4
  %12 = call i32 @errcode(i32 %11)
  %13 = load i8, i8* %1, align 1
  %14 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 signext %13)
  %15 = call i32 @ereport(i32 %10, i32 %14)
  %16 = call i32 @proc_exit(i32 0)
  br label %17

17:                                               ; preds = %9, %7, %5
  ret void
}

declare dso_local signext i8 @pq_getmsgbyte(i32*) #1

declare dso_local i32 @ProcessStandbyReplyMessage(...) #1

declare dso_local i32 @ProcessStandbyHSFeedbackMessage(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8 signext) #1

declare dso_local i32 @proc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
