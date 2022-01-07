; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_obs_scripting_unload.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting.c_obs_scripting_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.script_callback = type { %struct.script_callback* }

@scripting_loaded = common dso_local global i32 0, align 4
@file_filter = common dso_local global i32 0, align 4
@detach_mutex = common dso_local global i32 0, align 4
@detached_callbacks = common dso_local global %struct.script_callback* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"[Scripting] Total detached callbacks: %d\00", align 1
@defer_call_mutex = common dso_local global i32 0, align 4
@defer_call_exit = common dso_local global i32 0, align 4
@defer_call_queue = common dso_local global i32 0, align 4
@defer_call_semaphore = common dso_local global i32 0, align 4
@defer_call_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_scripting_unload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.script_callback*, align 8
  %3 = alloca %struct.script_callback*, align 8
  %4 = load i32, i32* @scripting_loaded, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %39

7:                                                ; preds = %0
  %8 = call i32 @dstr_free(i32* @file_filter)
  store i32 0, i32* %1, align 4
  %9 = call i32 @pthread_mutex_lock(i32* @detach_mutex)
  %10 = load %struct.script_callback*, %struct.script_callback** @detached_callbacks, align 8
  store %struct.script_callback* %10, %struct.script_callback** %2, align 8
  br label %11

11:                                               ; preds = %14, %7
  %12 = load %struct.script_callback*, %struct.script_callback** %2, align 8
  %13 = icmp ne %struct.script_callback* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.script_callback*, %struct.script_callback** %2, align 8
  %16 = getelementptr inbounds %struct.script_callback, %struct.script_callback* %15, i32 0, i32 0
  %17 = load %struct.script_callback*, %struct.script_callback** %16, align 8
  store %struct.script_callback* %17, %struct.script_callback** %3, align 8
  %18 = load %struct.script_callback*, %struct.script_callback** %2, align 8
  %19 = call i32 @just_free_script_callback(%struct.script_callback* %18)
  %20 = load %struct.script_callback*, %struct.script_callback** %3, align 8
  store %struct.script_callback* %20, %struct.script_callback** %2, align 8
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %11

23:                                               ; preds = %11
  %24 = call i32 @pthread_mutex_unlock(i32* @detach_mutex)
  %25 = call i32 @pthread_mutex_destroy(i32* @detach_mutex)
  %26 = load i32, i32* @LOG_INFO, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @blog(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = call i32 @pthread_mutex_lock(i32* @defer_call_mutex)
  store i32 1, i32* @defer_call_exit, align 4
  %30 = call i32 @circlebuf_free(i32* @defer_call_queue)
  %31 = call i32 @pthread_mutex_unlock(i32* @defer_call_mutex)
  %32 = load i32, i32* @defer_call_semaphore, align 4
  %33 = call i32 @os_sem_post(i32 %32)
  %34 = load i32, i32* @defer_call_thread, align 4
  %35 = call i32 @pthread_join(i32 %34, i32* null)
  %36 = call i32 @pthread_mutex_destroy(i32* @defer_call_mutex)
  %37 = load i32, i32* @defer_call_semaphore, align 4
  %38 = call i32 @os_sem_destroy(i32 %37)
  store i32 0, i32* @scripting_loaded, align 4
  br label %39

39:                                               ; preds = %23, %6
  ret void
}

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @just_free_script_callback(%struct.script_callback*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @os_sem_post(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @os_sem_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
