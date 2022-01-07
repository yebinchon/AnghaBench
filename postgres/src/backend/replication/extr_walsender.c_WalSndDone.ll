; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndDone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@MyWalSnd = common dso_local global %struct.TYPE_2__* null, align 8
@WalSndCaughtUp = common dso_local global i64 0, align 8
@sentPtr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"COPY 0\00", align 1
@DestRemote = common dso_local global i32 0, align 4
@waiting_for_ping_response = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (...)*)* @WalSndDone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WalSndDone(i32 (...)* %0) #0 {
  %2 = alloca i32 (...)*, align 8
  %3 = alloca i64, align 8
  store i32 (...)* %0, i32 (...)** %2, align 8
  %4 = load i32 (...)*, i32 (...)** %2, align 8
  %5 = call i32 (...) %4()
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyWalSnd, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @XLogRecPtrIsInvalid(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyWalSnd, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyWalSnd, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i64 [ %14, %11 ], [ %18, %15 ]
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* @WalSndCaughtUp, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i64, i64* @sentPtr, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = call i32 (...) @pq_is_send_pending()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @DestRemote, align 4
  %32 = call i32 @EndCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 (...) @pq_flush()
  %34 = call i32 @proc_exit(i32 0)
  br label %35

35:                                               ; preds = %30, %27, %23, %19
  %36 = load i32, i32* @waiting_for_ping_response, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 @WalSndKeepalive(i32 1)
  store i32 1, i32* @waiting_for_ping_response, align 4
  br label %40

40:                                               ; preds = %38, %35
  ret void
}

declare dso_local i64 @XLogRecPtrIsInvalid(i64) #1

declare dso_local i32 @pq_is_send_pending(...) #1

declare dso_local i32 @EndCommand(i8*, i32) #1

declare dso_local i32 @pq_flush(...) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @WalSndKeepalive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
