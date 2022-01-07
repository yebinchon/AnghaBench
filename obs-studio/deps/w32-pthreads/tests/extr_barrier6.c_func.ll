; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_barrier6.c_func.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_barrier6.c_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@barrier = common dso_local global i32 0, align 4
@mx = common dso_local global i32 0, align 4
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i32 0, align 4
@serialThreadCount = common dso_local global i32 0, align 4
@otherThreadCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @pthread_barrier_wait(i32* @barrier)
  store i32 %4, i32* %3, align 4
  %5 = call i64 @pthread_mutex_lock(i32* @mx)
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PTHREAD_BARRIER_SERIAL_THREAD, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @serialThreadCount, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @serialThreadCount, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 0, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @otherThreadCount, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @otherThreadCount, align 4
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %21, %12
  %23 = call i64 @pthread_mutex_unlock(i32* @mx)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  ret i8* null
}

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
