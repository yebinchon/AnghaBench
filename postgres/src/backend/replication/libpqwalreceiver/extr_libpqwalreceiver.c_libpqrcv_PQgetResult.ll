; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_PQgetResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_PQgetResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MyLatch = common dso_local global i32 0, align 4
@WL_EXIT_ON_PM_DEATH = common dso_local global i32 0, align 4
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WAIT_EVENT_LIBPQWALRECEIVER_RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @libpqrcv_PQgetResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @libpqrcv_PQgetResult(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @PQisBusy(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = load i32, i32* @MyLatch, align 4
  %11 = load i32, i32* @WL_EXIT_ON_PM_DEATH, align 4
  %12 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WL_LATCH_SET, align 4
  %15 = or i32 %13, %14
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @PQsocket(i32* %16)
  %18 = load i32, i32* @WAIT_EVENT_LIBPQWALRECEIVER_RECEIVE, align 4
  %19 = call i32 @WaitLatchOrSocket(i32 %10, i32 %15, i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @WL_LATCH_SET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %9
  %25 = load i32, i32* @MyLatch, align 4
  %26 = call i32 @ResetLatch(i32 %25)
  %27 = call i32 (...) @ProcessWalRcvInterrupts()
  br label %28

28:                                               ; preds = %24, %9
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @PQconsumeInput(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32* null, i32** %2, align 8
  br label %37

33:                                               ; preds = %28
  br label %5

34:                                               ; preds = %5
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @PQgetResult(i32* %35)
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i64 @PQisBusy(i32*) #1

declare dso_local i32 @WaitLatchOrSocket(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PQsocket(i32*) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @ProcessWalRcvInterrupts(...) #1

declare dso_local i64 @PQconsumeInput(i32*) #1

declare dso_local i32* @PQgetResult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
