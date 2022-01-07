; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_ProcessIncomingNotify.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_ProcessIncomingNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@notifyInterruptPending = common dso_local global i32 0, align 4
@listenChannels = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@Trace_notify = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ProcessIncomingNotify\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"notify interrupt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ProcessIncomingNotify: done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProcessIncomingNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessIncomingNotify() #0 {
  store i32 0, i32* @notifyInterruptPending, align 4
  %1 = load i64, i64* @listenChannels, align 8
  %2 = load i64, i64* @NIL, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %23

5:                                                ; preds = %0
  %6 = load i64, i64* @Trace_notify, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @DEBUG1, align 4
  %10 = call i32 @elog(i32 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %5
  %12 = call i32 @set_ps_display(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %13 = call i32 (...) @StartTransactionCommand()
  %14 = call i32 (...) @asyncQueueReadAllNotifications()
  %15 = call i32 (...) @CommitTransactionCommand()
  %16 = call i32 (...) @pq_flush()
  %17 = call i32 @set_ps_display(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %18 = load i64, i64* @Trace_notify, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* @DEBUG1, align 4
  %22 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %4, %20, %11
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @set_ps_display(i8*, i32) #1

declare dso_local i32 @StartTransactionCommand(...) #1

declare dso_local i32 @asyncQueueReadAllNotifications(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @pq_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
