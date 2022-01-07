; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiverfuncs.c_ShutdownWalRcv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiverfuncs.c_ShutdownWalRcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@WalRcv = common dso_local global %struct.TYPE_3__* null, align 8
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShutdownWalRcv() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @WalRcv, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  store i64 0, i64* %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %6 = call i32 @SpinLockAcquire(i32* %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %21 [
    i32 131, label %10
    i32 132, label %11
    i32 129, label %14
    i32 128, label %14
    i32 133, label %14
    i32 130, label %17
  ]

10:                                               ; preds = %0
  br label %21

11:                                               ; preds = %0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 131, i32* %13, align 8
  br label %21

14:                                               ; preds = %0, %0, %0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 130, i32* %16, align 8
  br label %17

17:                                               ; preds = %0, %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %0, %17, %11, %10
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = call i32 @SpinLockRelease(i32* %23)
  %25 = load i64, i64* %2, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* %2, align 8
  %29 = load i32, i32* @SIGTERM, align 4
  %30 = call i32 @kill(i64 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %35, %31
  %33 = call i64 (...) @WalRcvRunning()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 (...) @HandleStartupProcInterrupts()
  %37 = call i32 @pg_usleep(i32 100000)
  br label %32

38:                                               ; preds = %32
  ret void
}

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i64 @WalRcvRunning(...) #1

declare dso_local i32 @HandleStartupProcInterrupts(...) #1

declare dso_local i32 @pg_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
