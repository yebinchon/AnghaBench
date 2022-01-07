; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_handle_commit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_handle_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@remote_final_lsn = common dso_local global i64 0, align 8
@replorigin_session_origin_lsn = common dso_local global i32 0, align 4
@replorigin_session_origin_timestamp = common dso_local global i32 0, align 4
@in_remote_transaction = common dso_local global i32 0, align 4
@STATE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @apply_handle_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_handle_commit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @logicalrep_read_commit(i32 %4, %struct.TYPE_3__* %3)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @remote_final_lsn, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = call i64 (...) @IsTransactionState()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = call i32 (...) @am_tablesync_worker()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* @replorigin_session_origin_lsn, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @replorigin_session_origin_timestamp, align 4
  %22 = call i32 (...) @CommitTransactionCommand()
  %23 = call i32 @pgstat_report_stat(i32 0)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @store_flush_position(i32 %25)
  br label %30

27:                                               ; preds = %14, %1
  %28 = call i32 (...) @AcceptInvalidationMessages()
  %29 = call i32 (...) @maybe_reread_subscription()
  br label %30

30:                                               ; preds = %27, %17
  store i32 0, i32* @in_remote_transaction, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @process_syncing_tables(i32 %32)
  %34 = load i32, i32* @STATE_IDLE, align 4
  %35 = call i32 @pgstat_report_activity(i32 %34, i32* null)
  ret void
}

declare dso_local i32 @logicalrep_read_commit(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i32 @am_tablesync_worker(...) #1

declare dso_local i32 @CommitTransactionCommand(...) #1

declare dso_local i32 @pgstat_report_stat(i32) #1

declare dso_local i32 @store_flush_position(i32) #1

declare dso_local i32 @AcceptInvalidationMessages(...) #1

declare dso_local i32 @maybe_reread_subscription(...) #1

declare dso_local i32 @process_syncing_tables(i32) #1

declare dso_local i32 @pgstat_report_activity(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
