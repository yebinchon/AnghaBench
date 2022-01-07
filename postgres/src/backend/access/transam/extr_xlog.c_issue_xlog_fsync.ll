; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_issue_xlog_fsync.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_issue_xlog_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WAIT_EVENT_WAL_SYNC = common dso_local global i32 0, align 4
@sync_method = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@ThisTimeLineID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unrecognized wal_sync_method: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @issue_xlog_fsync(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @WAIT_EVENT_WAL_SYNC, align 4
  %6 = call i32 @pgstat_report_wait_start(i32 %5)
  %7 = load i32, i32* @sync_method, align 4
  switch i32 %7, label %22 [
    i32 131, label %8
    i32 129, label %21
    i32 128, label %21
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pg_fsync_no_writethrough(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* @PANIC, align 4
  %14 = call i32 (...) @errcode_for_file_access()
  %15 = load i32, i32* @ThisTimeLineID, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @XLogFileNameP(i32 %15, i32 %16)
  %18 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @ereport(i32 %13, i32 %18)
  br label %20

20:                                               ; preds = %12, %8
  br label %26

21:                                               ; preds = %2, %2
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @PANIC, align 4
  %24 = load i32, i32* @sync_method, align 4
  %25 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %21, %20
  %27 = call i32 (...) @pgstat_report_wait_end()
  ret void
}

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i32 @pg_fsync_no_writethrough(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @XLogFileNameP(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
