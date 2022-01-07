; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/test_shm_mq/extr_worker.c_test_shm_mq_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/test_shm_mq/extr_worker.c_test_shm_mq_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SIGTERM = common dso_local global i32 0, align 4
@handle_sigterm = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unable to map dynamic shared memory segment\00", align 1
@PG_TEST_SHM_MQ_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"bad magic number in dynamic shared memory segment\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"too many message queue testing workers already\00", align 1
@MyBgworkerEntry = common dso_local global %struct.TYPE_8__* null, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"registrant backend has exited prematurely\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_shm_mq_main(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @SIGTERM, align 4
  %11 = load i32, i32* @handle_sigterm, align 4
  %12 = call i32 @pqsignal(i32 %10, i32 %11)
  %13 = call i32 (...) @BackgroundWorkerUnblockSignals()
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @DatumGetInt32(i32 %14)
  %16 = call i32* @dsm_attach(i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %22 = call i32 @errcode(i32 %21)
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @PG_TEST_SHM_MQ_MAGIC, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @dsm_segment_address(i32* %27)
  %29 = call i32* @shm_toc_attach(i32 %26, i32 %28)
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %25
  %39 = load i32*, i32** %4, align 8
  %40 = call %struct.TYPE_6__* @shm_toc_lookup(i32* %39, i32 0, i32 0)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %7, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = call i32 @SpinLockAcquire(i32* %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load volatile i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store volatile i32 %47, i32* %45, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = call i32 @SpinLockRelease(i32* %49)
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load volatile i32, i32* %53, align 4
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %38
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 @ereport(i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %38
  %63 = load i32*, i32** %3, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @attach_to_queues(i32* %63, i32* %64, i32 %65, i32** %5, i32** %6)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = call i32 @SpinLockAcquire(i32* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load volatile i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store volatile i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = call i32 @SpinLockRelease(i32* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBgworkerEntry, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_7__* @BackendPidGetProc(i32 %79)
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %9, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %82 = icmp eq %struct.TYPE_7__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %62
  %84 = load i32, i32* @DEBUG1, align 4
  %85 = call i32 @elog(i32 %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 @proc_exit(i32 1)
  br label %87

87:                                               ; preds = %83, %62
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = call i32 @SetLatch(i32* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @copy_messages(i32* %91, i32* %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @dsm_detach(i32* %94)
  %96 = call i32 @proc_exit(i32 1)
  ret void
}

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @BackgroundWorkerUnblockSignals(...) #1

declare dso_local i32* @dsm_attach(i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @shm_toc_attach(i32, i32) #1

declare dso_local i32 @dsm_segment_address(i32*) #1

declare dso_local %struct.TYPE_6__* @shm_toc_lookup(i32*, i32, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @attach_to_queues(i32*, i32*, i32, i32**, i32**) #1

declare dso_local %struct.TYPE_7__* @BackendPidGetProc(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @SetLatch(i32*) #1

declare dso_local i32 @copy_messages(i32*, i32*) #1

declare dso_local i32 @dsm_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
