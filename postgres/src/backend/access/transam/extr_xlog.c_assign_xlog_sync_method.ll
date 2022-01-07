; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_assign_xlog_sync_method.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_assign_xlog_sync_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sync_method = common dso_local global i32 0, align 4
@openLogFile = common dso_local global i64 0, align 8
@WAIT_EVENT_WAL_SYNC_METHOD_ASSIGN = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@ThisTimeLineID = common dso_local global i32 0, align 4
@openLogSegNo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assign_xlog_sync_method(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @sync_method, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = load i64, i64* @openLogFile, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load i32, i32* @WAIT_EVENT_WAL_SYNC_METHOD_ASSIGN, align 4
  %13 = call i32 @pgstat_report_wait_start(i32 %12)
  %14 = load i64, i64* @openLogFile, align 8
  %15 = call i64 @pg_fsync(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32, i32* @PANIC, align 4
  %19 = call i32 (...) @errcode_for_file_access()
  %20 = load i32, i32* @ThisTimeLineID, align 4
  %21 = load i32, i32* @openLogSegNo, align 4
  %22 = call i32 @XLogFileNameP(i32 %20, i32 %21)
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @ereport(i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %17, %11
  %26 = call i32 (...) @pgstat_report_wait_end()
  %27 = load i32, i32* @sync_method, align 4
  %28 = call i64 @get_sync_bit(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @get_sync_bit(i32 %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (...) @XLogFileClose()
  br label %34

34:                                               ; preds = %32, %25
  br label %35

35:                                               ; preds = %34, %8
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i64 @pg_fsync(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @XLogFileNameP(i32, i32) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

declare dso_local i64 @get_sync_bit(i32) #1

declare dso_local i32 @XLogFileClose(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
