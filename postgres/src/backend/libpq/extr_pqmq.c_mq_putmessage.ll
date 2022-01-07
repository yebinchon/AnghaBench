; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqmq.c_mq_putmessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqmq.c_mq_putmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@pq_mq_busy = common dso_local global i32 0, align 4
@pq_mq_handle = common dso_local global i32* null, align 8
@EOF = common dso_local global i32 0, align 4
@pq_mq_parallel_master_pid = common dso_local global i64 0, align 8
@PROCSIG_PARALLEL_MESSAGE = common dso_local global i32 0, align 4
@pq_mq_parallel_master_backend_id = common dso_local global i32 0, align 4
@SHM_MQ_WOULD_BLOCK = common dso_local global i64 0, align 8
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_MQ_PUT_MESSAGE = common dso_local global i32 0, align 4
@SHM_MQ_SUCCESS = common dso_local global i64 0, align 8
@SHM_MQ_DETACHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i64)* @mq_putmessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_putmessage(i8 signext %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x %struct.TYPE_3__], align 16
  %9 = alloca i64, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @pq_mq_busy, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32*, i32** @pq_mq_handle, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** @pq_mq_handle, align 8
  %17 = call i32 @shm_mq_detach(i32* %16)
  br label %18

18:                                               ; preds = %15, %12
  store i32* null, i32** @pq_mq_handle, align 8
  %19 = load i32, i32* @EOF, align 4
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load i32*, i32** @pq_mq_handle, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %84

24:                                               ; preds = %20
  store i32 1, i32* @pq_mq_busy, align 4
  %25 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i8* %5, i8** %26, align 16
  %27 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %8, i64 0, i64 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 16
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %8, i64 0, i64 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** @pq_mq_handle, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  br label %40

40:                                               ; preds = %56, %24
  %41 = load i32*, i32** @pq_mq_handle, align 8
  %42 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %43 = call i64 @shm_mq_sendv(i32* %41, %struct.TYPE_3__* %42, i32 2, i32 1)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* @pq_mq_parallel_master_pid, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i64, i64* @pq_mq_parallel_master_pid, align 8
  %48 = load i32, i32* @PROCSIG_PARALLEL_MESSAGE, align 4
  %49 = load i32, i32* @pq_mq_parallel_master_backend_id, align 4
  %50 = call i32 @SendProcSignal(i64 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @SHM_MQ_WOULD_BLOCK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %66

56:                                               ; preds = %51
  %57 = load i32, i32* @MyLatch, align 4
  %58 = load i32, i32* @WL_LATCH_SET, align 4
  %59 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @WAIT_EVENT_MQ_PUT_MESSAGE, align 4
  %62 = call i32 @WaitLatch(i32 %57, i32 %60, i32 0, i32 %61)
  %63 = load i32, i32* @MyLatch, align 4
  %64 = call i32 @ResetLatch(i32 %63)
  %65 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %40

66:                                               ; preds = %55
  store i32 0, i32* @pq_mq_busy, align 4
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @SHM_MQ_DETACHED, align 8
  %73 = icmp eq i64 %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ true, %66 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @EOF, align 4
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %81, %23, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @shm_mq_detach(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @shm_mq_sendv(i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @SendProcSignal(i64, i32, i32) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
