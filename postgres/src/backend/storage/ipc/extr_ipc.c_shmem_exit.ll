; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_ipc.c_shmem_exit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_ipc.c_shmem_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }
%struct.TYPE_3__ = type { i32, i32 (i32, i32)* }

@shmem_exit_inprogress = common dso_local global i32 0, align 4
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"shmem_exit(%d): %d before_shmem_exit callbacks to make\00", align 1
@before_shmem_exit_index = common dso_local global i64 0, align 8
@before_shmem_exit_list = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"shmem_exit(%d): %d on_shmem_exit callbacks to make\00", align 1
@on_shmem_exit_index = common dso_local global i64 0, align 8
@on_shmem_exit_list = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shmem_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @shmem_exit_inprogress, align 4
  %3 = load i32, i32* @DEBUG3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i64, i64* @before_shmem_exit_index, align 8
  %6 = call i32 @elog(i32 %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %4, i64 %5)
  br label %7

7:                                                ; preds = %11, %1
  %8 = load i64, i64* @before_shmem_exit_index, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* @before_shmem_exit_index, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @before_shmem_exit_list, align 8
  %13 = load i64, i64* @before_shmem_exit_index, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %15, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @before_shmem_exit_list, align 8
  %19 = load i64, i64* @before_shmem_exit_index, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %16(i32 %17, i32 %22)
  br label %7

24:                                               ; preds = %7
  store i64 0, i64* @before_shmem_exit_index, align 8
  %25 = call i32 (...) @dsm_backend_shutdown()
  %26 = load i32, i32* @DEBUG3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i64, i64* @on_shmem_exit_index, align 8
  %29 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %34, %24
  %31 = load i64, i64* @on_shmem_exit_index, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* @on_shmem_exit_index, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @on_shmem_exit_list, align 8
  %36 = load i64, i64* @on_shmem_exit_index, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @on_shmem_exit_list, align 8
  %42 = load i64, i64* @on_shmem_exit_index, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %39(i32 %40, i32 %45)
  br label %30

47:                                               ; preds = %30
  store i64 0, i64* @on_shmem_exit_index, align 8
  store i32 0, i32* @shmem_exit_inprogress, align 4
  ret void
}

declare dso_local i32 @elog(i32, i8*, i32, i64) #1

declare dso_local i32 @dsm_backend_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
