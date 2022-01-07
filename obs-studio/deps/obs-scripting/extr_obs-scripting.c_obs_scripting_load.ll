; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_obs_scripting_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_obs_scripting_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@defer_call_queue = common dso_local global i32 0, align 4
@detach_mutex = common dso_local global i32 0, align 4
@defer_call_mutex = common dso_local global i32 0, align 4
@defer_call_semaphore = common dso_local global i32 0, align 4
@defer_call_thread = common dso_local global i32 0, align 4
@defer_thread = common dso_local global i32 0, align 4
@scripting_loaded = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_scripting_load() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @circlebuf_init(i32* @defer_call_queue)
  %3 = call i64 @pthread_mutex_init(i32* @detach_mutex, i32* null)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %27

6:                                                ; preds = %0
  %7 = call i64 @pthread_mutex_init(i32* @defer_call_mutex, i32* null)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @pthread_mutex_destroy(i32* @detach_mutex)
  store i32 0, i32* %1, align 4
  br label %27

11:                                               ; preds = %6
  %12 = call i64 @os_sem_init(i32* @defer_call_semaphore, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call i32 @pthread_mutex_destroy(i32* @defer_call_mutex)
  %16 = call i32 @pthread_mutex_destroy(i32* @detach_mutex)
  store i32 0, i32* %1, align 4
  br label %27

17:                                               ; preds = %11
  %18 = load i32, i32* @defer_thread, align 4
  %19 = call i64 @pthread_create(i32* @defer_call_thread, i32* null, i32 %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @defer_call_semaphore, align 4
  %23 = call i32 @os_sem_destroy(i32 %22)
  %24 = call i32 @pthread_mutex_destroy(i32* @defer_call_mutex)
  %25 = call i32 @pthread_mutex_destroy(i32* @detach_mutex)
  store i32 0, i32* %1, align 4
  br label %27

26:                                               ; preds = %17
  store i32 1, i32* @scripting_loaded, align 4
  store i32 1, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %21, %14, %9, %5
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @circlebuf_init(i32*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i64 @os_sem_init(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @os_sem_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
