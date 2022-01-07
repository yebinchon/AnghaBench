; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_Exec_UnlistenAllCommit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_Exec_UnlistenAllCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Trace_notify = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Exec_UnlistenAllCommit(%d)\00", align 1
@MyProcPid = common dso_local global i32 0, align 4
@listenChannels = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Exec_UnlistenAllCommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Exec_UnlistenAllCommit() #0 {
  %1 = load i64, i64* @Trace_notify, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @DEBUG1, align 4
  %5 = load i32, i32* @MyProcPid, align 4
  %6 = call i32 @elog(i32 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %7

7:                                                ; preds = %3, %0
  %8 = load i32, i32* @listenChannels, align 4
  %9 = call i32 @list_free_deep(i32 %8)
  %10 = load i32, i32* @NIL, align 4
  store i32 %10, i32* @listenChannels, align 4
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @list_free_deep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
