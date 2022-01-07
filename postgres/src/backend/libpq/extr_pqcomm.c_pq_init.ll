; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PQ_SEND_BUFFER_SIZE = common dso_local global i32 0, align 4
@PqSendBufferSize = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@PqSendBuffer = common dso_local global i32 0, align 4
@PqRecvLength = common dso_local global i64 0, align 8
@PqRecvPointer = common dso_local global i64 0, align 8
@PqSendStart = common dso_local global i64 0, align 8
@PqSendPointer = common dso_local global i64 0, align 8
@PqCommBusy = common dso_local global i32 0, align 4
@PqCommReadingMsg = common dso_local global i32 0, align 4
@DoingCopyOut = common dso_local global i32 0, align 4
@socket_close = common dso_local global i32 0, align 4
@MyProcPort = common dso_local global %struct.TYPE_2__* null, align 8
@COMMERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not set socket to nonblocking mode: %m\00", align 1
@FeBeWaitSet = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32* null, align 8
@WL_POSTMASTER_DEATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pq_init() #0 {
  %1 = load i32, i32* @PQ_SEND_BUFFER_SIZE, align 4
  store i32 %1, i32* @PqSendBufferSize, align 4
  %2 = load i32, i32* @TopMemoryContext, align 4
  %3 = load i32, i32* @PqSendBufferSize, align 4
  %4 = call i32 @MemoryContextAlloc(i32 %2, i32 %3)
  store i32 %4, i32* @PqSendBuffer, align 4
  store i64 0, i64* @PqRecvLength, align 8
  store i64 0, i64* @PqRecvPointer, align 8
  store i64 0, i64* @PqSendStart, align 8
  store i64 0, i64* @PqSendPointer, align 8
  store i32 0, i32* @PqCommBusy, align 4
  store i32 0, i32* @PqCommReadingMsg, align 4
  store i32 0, i32* @DoingCopyOut, align 4
  %5 = load i32, i32* @socket_close, align 4
  %6 = call i32 @on_proc_exit(i32 %5, i32 0)
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyProcPort, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pg_set_noblock(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @COMMERROR, align 4
  %14 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @ereport(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %0
  %17 = load i32, i32* @TopMemoryContext, align 4
  %18 = call i32 @CreateWaitEventSet(i32 %17, i32 3)
  store i32 %18, i32* @FeBeWaitSet, align 4
  %19 = load i32, i32* @FeBeWaitSet, align 4
  %20 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyProcPort, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @AddWaitEventToSet(i32 %19, i32 %20, i32 %23, i32* null, i32* null)
  %25 = load i32, i32* @FeBeWaitSet, align 4
  %26 = load i32, i32* @WL_LATCH_SET, align 4
  %27 = load i32*, i32** @MyLatch, align 8
  %28 = call i32 @AddWaitEventToSet(i32 %25, i32 %26, i32 -1, i32* %27, i32* null)
  %29 = load i32, i32* @FeBeWaitSet, align 4
  %30 = load i32, i32* @WL_POSTMASTER_DEATH, align 4
  %31 = call i32 @AddWaitEventToSet(i32 %29, i32 %30, i32 -1, i32* null, i32* null)
  ret void
}

declare dso_local i32 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @on_proc_exit(i32, i32) #1

declare dso_local i32 @pg_set_noblock(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @CreateWaitEventSet(i32, i32) #1

declare dso_local i32 @AddWaitEventToSet(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
