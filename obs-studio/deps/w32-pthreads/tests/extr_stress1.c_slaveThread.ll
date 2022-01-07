; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_stress1.c_slaveThread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_stress1.c_slaveThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.timespec = type { i32 }

@startBarrier = common dso_local global i32 0, align 4
@control = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@timeoutCount = common dso_local global i32 0, align 4
@signalsTakenCount = common dso_local global i32 0, align 4
@holdBarrier = common dso_local global i32 0, align 4
@readyBarrier = common dso_local global i32 0, align 4
@allExit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @slaveThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timespec, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @pthread_barrier_wait(i32* @startBarrier)
  br label %5

5:                                                ; preds = %28, %1
  %6 = call i64 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 0))
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 1), align 4
  %11 = call i32 @millisecondsFromNow(%struct.timespec* %3, i32 %10)
  %12 = call i64 @pthread_cond_timedwait(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 2), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 0), i32 %11)
  %13 = load i64, i64* @ETIMEDOUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @timeoutCount, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @timeoutCount, align 4
  br label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @signalsTakenCount, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @signalsTakenCount, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = call i64 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @control, i32 0, i32 0))
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i32 @pthread_barrier_wait(i32* @holdBarrier)
  %27 = call i32 @pthread_barrier_wait(i32* @readyBarrier)
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @allExit, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %5, label %32

32:                                               ; preds = %28
  ret i8* null
}

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_cond_timedwait(i32*, i32*, i32) #1

declare dso_local i32 @millisecondsFromNow(%struct.timespec*, i32) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
