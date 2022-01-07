; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_thread_tools.c_mp_waiter_wait.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_thread_tools.c_mp_waiter_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_waiter = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_waiter_wait(%struct.mp_waiter* %0) #0 {
  %2 = alloca %struct.mp_waiter*, align 8
  %3 = alloca i64, align 8
  store %struct.mp_waiter* %0, %struct.mp_waiter** %2, align 8
  %4 = load %struct.mp_waiter*, %struct.mp_waiter** %2, align 8
  %5 = getelementptr inbounds %struct.mp_waiter, %struct.mp_waiter* %4, i32 0, i32 2
  %6 = call i32 @pthread_mutex_lock(i32* %5)
  br label %7

7:                                                ; preds = %13, %1
  %8 = load %struct.mp_waiter*, %struct.mp_waiter** %2, align 8
  %9 = getelementptr inbounds %struct.mp_waiter, %struct.mp_waiter* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct.mp_waiter*, %struct.mp_waiter** %2, align 8
  %15 = getelementptr inbounds %struct.mp_waiter, %struct.mp_waiter* %14, i32 0, i32 1
  %16 = load %struct.mp_waiter*, %struct.mp_waiter** %2, align 8
  %17 = getelementptr inbounds %struct.mp_waiter, %struct.mp_waiter* %16, i32 0, i32 2
  %18 = call i32 @pthread_cond_wait(i32* %15, i32* %17)
  br label %7

19:                                               ; preds = %7
  %20 = load %struct.mp_waiter*, %struct.mp_waiter** %2, align 8
  %21 = getelementptr inbounds %struct.mp_waiter, %struct.mp_waiter* %20, i32 0, i32 2
  %22 = call i32 @pthread_mutex_unlock(i32* %21)
  %23 = load %struct.mp_waiter*, %struct.mp_waiter** %2, align 8
  %24 = getelementptr inbounds %struct.mp_waiter, %struct.mp_waiter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  %26 = load %struct.mp_waiter*, %struct.mp_waiter** %2, align 8
  %27 = getelementptr inbounds %struct.mp_waiter, %struct.mp_waiter* %26, i32 0, i32 2
  %28 = call i32 @pthread_mutex_destroy(i32* %27)
  %29 = load %struct.mp_waiter*, %struct.mp_waiter** %2, align 8
  %30 = getelementptr inbounds %struct.mp_waiter, %struct.mp_waiter* %29, i32 0, i32 1
  %31 = call i32 @pthread_cond_destroy(i32* %30)
  %32 = load %struct.mp_waiter*, %struct.mp_waiter** %2, align 8
  %33 = call i32 @memset(%struct.mp_waiter* %32, i32 202, i32 24)
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @memset(%struct.mp_waiter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
