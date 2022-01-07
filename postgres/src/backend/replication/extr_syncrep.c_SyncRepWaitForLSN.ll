; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepWaitForLSN.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_syncrep.c_SyncRepWaitForLSN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i64*, i32 }

@InterruptHoldoffCount = common dso_local global i64 0, align 8
@SyncRepWaitMode = common dso_local global i32 0, align 4
@SYNC_REP_WAIT_FLUSH = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_4__* null, align 8
@WalSndCtl = common dso_local global %struct.TYPE_3__* null, align 8
@SyncRepLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@SYNC_REP_NOT_WAITING = common dso_local global i64 0, align 8
@SYNC_REP_WAITING = common dso_local global i64 0, align 8
@update_process_title = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c" waiting for %X/%X\00", align 1
@MyLatch = common dso_local global i32 0, align 4
@SYNC_REP_WAIT_COMPLETE = common dso_local global i64 0, align 8
@ProcDiePending = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_ADMIN_SHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [103 x i8] c"canceling the wait for synchronous replication and terminating connection due to administrator command\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"The transaction has already committed locally, but might not have been replicated to the standby.\00", align 1
@DestNone = common dso_local global i32 0, align 4
@whereToSendOutput = common dso_local global i32 0, align 4
@QueryCancelPending = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"canceling wait for synchronous replication due to user request\00", align 1
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4
@WAIT_EVENT_SYNC_REP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SyncRepWaitForLSN(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %10 = load i64, i64* @InterruptHoldoffCount, align 8
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @SyncRepWaitMode, align 4
  store i32 %17, i32* %7, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @SyncRepWaitMode, align 4
  %20 = load i32, i32* @SYNC_REP_WAIT_FLUSH, align 4
  %21 = call i32 @Min(i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = call i32 (...) @SyncRepRequested()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %169

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = call i32 @SHMQueueIsDetached(i32* %28)
  %30 = call i32 @Assert(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @WalSndCtl, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load i32, i32* @SyncRepLock, align 4
  %36 = load i32, i32* @LW_EXCLUSIVE, align 4
  %37 = call i32 @LWLockAcquire(i32 %35, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SYNC_REP_NOT_WAITING, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @WalSndCtl, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %26
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @WalSndCtl, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %50, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49, %26
  %60 = load i32, i32* @SyncRepLock, align 4
  %61 = call i32 @LWLockRelease(i32 %60)
  br label %169

62:                                               ; preds = %49
  %63 = load i64, i64* %3, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* @SYNC_REP_WAITING, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @SyncRepQueueInsert(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @SyncRepQueueIsOrderedByLSN(i32 %71)
  %73 = call i32 @Assert(i32 %72)
  %74 = load i32, i32* @SyncRepLock, align 4
  %75 = call i32 @LWLockRelease(i32 %74)
  %76 = load i64, i64* @update_process_title, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %62
  %79 = call i8* @get_ps_display(i32* %8)
  store i8* %79, i8** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 32
  %82 = add nsw i32 %81, 1
  %83 = call i64 @palloc(i32 %82)
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @memcpy(i8* %85, i8* %86, i32 %87)
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i64, i64* %3, align 8
  %94 = ashr i64 %93, 32
  %95 = trunc i64 %94 to i32
  %96 = load i64, i64* %3, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %97)
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @set_ps_display(i8* %99, i32 0)
  %101 = load i8*, i8** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %78, %62
  br label %106

106:                                              ; preds = %150, %105
  %107 = load i32, i32* @MyLatch, align 4
  %108 = call i32 @ResetLatch(i32 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SYNC_REP_WAIT_COMPLETE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %151

115:                                              ; preds = %106
  %116 = load i32, i32* @ProcDiePending, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load i32, i32* @WARNING, align 4
  %120 = load i32, i32* @ERRCODE_ADMIN_SHUTDOWN, align 4
  %121 = call i32 @errcode(i32 %120)
  %122 = call i32 @errmsg(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0))
  %123 = call i32 @errdetail(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0))
  %124 = call i32 @ereport(i32 %119, i32 %123)
  %125 = load i32, i32* @DestNone, align 4
  store i32 %125, i32* @whereToSendOutput, align 4
  %126 = call i32 (...) @SyncRepCancelWait()
  br label %151

127:                                              ; preds = %115
  %128 = load i32, i32* @QueryCancelPending, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  store i32 0, i32* @QueryCancelPending, align 4
  %131 = load i32, i32* @WARNING, align 4
  %132 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %133 = call i32 @errdetail(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0))
  %134 = call i32 @ereport(i32 %131, i32 %133)
  %135 = call i32 (...) @SyncRepCancelWait()
  br label %151

136:                                              ; preds = %127
  %137 = load i32, i32* @MyLatch, align 4
  %138 = load i32, i32* @WL_LATCH_SET, align 4
  %139 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @WAIT_EVENT_SYNC_REP, align 4
  %142 = call i32 @WaitLatch(i32 %137, i32 %140, i32 -1, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %136
  store i32 1, i32* @ProcDiePending, align 4
  %148 = load i32, i32* @DestNone, align 4
  store i32 %148, i32* @whereToSendOutput, align 4
  %149 = call i32 (...) @SyncRepCancelWait()
  br label %151

150:                                              ; preds = %136
  br label %106

151:                                              ; preds = %147, %130, %118, %114
  %152 = call i32 (...) @pg_read_barrier()
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = call i32 @SHMQueueIsDetached(i32* %154)
  %156 = call i32 @Assert(i32 %155)
  %157 = load i64, i64* @SYNC_REP_NOT_WAITING, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyProc, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  %162 = load i8*, i8** %5, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %151
  %165 = load i8*, i8** %5, align 8
  %166 = call i32 @set_ps_display(i8* %165, i32 0)
  %167 = load i8*, i8** %5, align 8
  %168 = call i32 @pfree(i8* %167)
  br label %169

169:                                              ; preds = %25, %59, %164, %151
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @SyncRepRequested(...) #1

declare dso_local i32 @SHMQueueIsDetached(i32*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @SyncRepQueueInsert(i32) #1

declare dso_local i32 @SyncRepQueueIsOrderedByLSN(i32) #1

declare dso_local i8* @get_ps_display(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @set_ps_display(i8*, i32) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @SyncRepCancelWait(...) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, i32) #1

declare dso_local i32 @pg_read_barrier(...) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
