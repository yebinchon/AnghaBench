; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_ipc.c_proc_exit_prepare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_ipc.c_proc_exit_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@proc_exit_inprogress = common dso_local global i32 0, align 4
@InterruptPending = common dso_local global i32 0, align 4
@ProcDiePending = common dso_local global i32 0, align 4
@QueryCancelPending = common dso_local global i32 0, align 4
@InterruptHoldoffCount = common dso_local global i32 0, align 4
@CritSectionCount = common dso_local global i64 0, align 8
@error_context_stack = common dso_local global i32* null, align 8
@debug_query_string = common dso_local global i32* null, align 8
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"proc_exit(%d): %d callbacks to make\00", align 1
@on_proc_exit_index = common dso_local global i64 0, align 8
@on_proc_exit_list = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @proc_exit_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_exit_prepare(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @proc_exit_inprogress, align 4
  store i32 0, i32* @InterruptPending, align 4
  store i32 0, i32* @ProcDiePending, align 4
  store i32 0, i32* @QueryCancelPending, align 4
  store i32 1, i32* @InterruptHoldoffCount, align 4
  store i64 0, i64* @CritSectionCount, align 8
  store i32* null, i32** @error_context_stack, align 8
  store i32* null, i32** @debug_query_string, align 8
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @shmem_exit(i32 %3)
  %5 = load i32, i32* @DEBUG3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i64, i64* @on_proc_exit_index, align 8
  %8 = call i32 @elog(i32 %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %6, i64 %7)
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i64, i64* @on_proc_exit_index, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* @on_proc_exit_index, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @on_proc_exit_list, align 8
  %15 = load i64, i64* @on_proc_exit_index, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @on_proc_exit_list, align 8
  %21 = load i64, i64* @on_proc_exit_index, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %18(i32 %19, i32 %24)
  br label %9

26:                                               ; preds = %9
  store i64 0, i64* @on_proc_exit_index, align 8
  ret void
}

declare dso_local i32 @shmem_exit(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
