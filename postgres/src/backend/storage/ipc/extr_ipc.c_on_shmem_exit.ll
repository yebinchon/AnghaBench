; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_ipc.c_on_shmem_exit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_ipc.c_on_shmem_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@on_shmem_exit_index = common dso_local global i64 0, align 8
@MAX_ON_EXITS = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"out of on_shmem_exit slots\00", align 1
@on_shmem_exit_list = common dso_local global %struct.TYPE_2__* null, align 8
@atexit_callback_setup = common dso_local global i32 0, align 4
@atexit_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_shmem_exit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @on_shmem_exit_index, align 8
  %6 = load i64, i64* @MAX_ON_EXITS, align 8
  %7 = icmp uge i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @FATAL, align 4
  %10 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %11 = call i32 @errcode(i32 %10)
  %12 = call i32 @errmsg_internal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ereport(i32 %9, i32 %12)
  br label %14

14:                                               ; preds = %8, %2
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @on_shmem_exit_list, align 8
  %17 = load i64, i64* @on_shmem_exit_index, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @on_shmem_exit_list, align 8
  %22 = load i64, i64* @on_shmem_exit_index, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load i64, i64* @on_shmem_exit_index, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* @on_shmem_exit_index, align 8
  %27 = load i32, i32* @atexit_callback_setup, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %14
  %30 = load i32, i32* @atexit_callback, align 4
  %31 = call i32 @atexit(i32 %30)
  store i32 1, i32* @atexit_callback_setup, align 4
  br label %32

32:                                               ; preds = %29, %14
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*) #1

declare dso_local i32 @atexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
