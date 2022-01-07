; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_XLogSendLogical.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_XLogSendLogical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }

@WalSndCaughtUp = common dso_local global i32 0, align 4
@logical_decoding_ctx = common dso_local global %struct.TYPE_8__* null, align 8
@logical_startptr = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sentPtr = common dso_local global i64 0, align 8
@got_STOPPING = common dso_local global i64 0, align 8
@got_SIGUSR2 = common dso_local global i32 0, align 4
@MyWalSnd = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @XLogSendLogical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogSendLogical() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* @WalSndCaughtUp, align 4
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @logical_decoding_ctx, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = load i32, i32* @logical_startptr, align 4
  %9 = call i32* @XLogReadRecord(%struct.TYPE_9__* %7, i32 %8, i8** %2)
  store i32* %9, i32** %1, align 8
  %10 = load i32, i32* @InvalidXLogRecPtr, align 4
  store i32 %10, i32* @logical_startptr, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @ERROR, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @elog(i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %13, %0
  %18 = call i64 (...) @GetFlushRecPtr()
  store i64 %18, i64* %3, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @logical_decoding_ctx, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @logical_decoding_ctx, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = call i32 @LogicalDecodingProcessRecord(%struct.TYPE_8__* %22, %struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @logical_decoding_ctx, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* @sentPtr, align 8
  br label %32

32:                                               ; preds = %21, %17
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @logical_decoding_ctx, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* @WalSndCaughtUp, align 4
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* @WalSndCaughtUp, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* @got_STOPPING, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* @got_SIGUSR2, align 4
  br label %48

48:                                               ; preds = %47, %44, %41
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyWalSnd, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = call i32 @SpinLockAcquire(i32* %51)
  %53 = load i64, i64* @sentPtr, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = call i32 @SpinLockRelease(i32* %57)
  ret void
}

declare dso_local i32* @XLogReadRecord(%struct.TYPE_9__*, i32, i8**) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i64 @GetFlushRecPtr(...) #1

declare dso_local i32 @LogicalDecodingProcessRecord(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
