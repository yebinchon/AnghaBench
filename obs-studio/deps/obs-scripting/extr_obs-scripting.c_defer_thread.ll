; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_defer_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_defer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.defer_call = type { i32, i32 (i32)* }

@defer_call_semaphore = common dso_local global i32 0, align 4
@defer_call_mutex = common dso_local global i32 0, align 4
@defer_call_exit = common dso_local global i64 0, align 8
@defer_call_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @defer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @defer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.defer_call, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @UNUSED_PARAMETER(i8* %5)
  br label %7

7:                                                ; preds = %17, %1
  %8 = load i32, i32* @defer_call_semaphore, align 4
  %9 = call i64 @os_sem_wait(i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = call i32 @pthread_mutex_lock(i32* @defer_call_mutex)
  %13 = load i64, i64* @defer_call_exit, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @pthread_mutex_unlock(i32* @defer_call_mutex)
  store i8* null, i8** %2, align 8
  br label %26

17:                                               ; preds = %11
  %18 = call i32 @circlebuf_pop_front(i32* @defer_call_queue, %struct.defer_call* %4, i32 16)
  %19 = call i32 @pthread_mutex_unlock(i32* @defer_call_mutex)
  %20 = getelementptr inbounds %struct.defer_call, %struct.defer_call* %4, i32 0, i32 1
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = getelementptr inbounds %struct.defer_call, %struct.defer_call* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %21(i32 %23)
  br label %7

25:                                               ; preds = %7
  store i8* null, i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i64 @os_sem_wait(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @circlebuf_pop_front(i32*, %struct.defer_call*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
