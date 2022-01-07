; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3_2.c_mythread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3_2.c_mythread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@mutex = common dso_local global i32 0, align 4
@abstime = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@abstime2 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@cv = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@timedout = common dso_local global i32 0, align 4
@awoken = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mythread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i64 @pthread_mutex_lock(i32* @mutex)
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @abstime, i32 0, i32 0), align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @abstime2, i32 0, i32 0), align 4
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = trunc i64 %10 to i32
  %12 = srem i32 %11, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @abstime2, i32 0, i32 0), align 4
  %16 = add nsw i32 %15, 2
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @abstime2, i32 0, i32 0), align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = call i32 @pthread_cond_timedwait(i32* @cv, i32* @mutex, %struct.TYPE_4__* @abstime2)
  store i32 %18, i32* %3, align 4
  %19 = call i64 @pthread_mutex_unlock(i32* @mutex)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @InterlockedIncrement(i32 ptrtoint (i32* @timedout to i32))
  br label %30

28:                                               ; preds = %17
  %29 = call i32 @InterlockedIncrement(i32 ptrtoint (i32* @awoken to i32))
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i8*, i8** %2, align 8
  ret i8* %31
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @InterlockedIncrement(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
