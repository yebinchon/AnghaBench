; ModuleID = '/home/carl/AnghaBench/mpv/osdep/win32/extr_pthread.c_pthread_exit.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/win32/extr_pthread.c_pthread_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_thread_info = type { i32, i8* }

@pthread_table_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pthread_exit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.m_thread_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @pthread_mutex_lock(i32* @pthread_table_lock)
  %5 = call i32 (...) @pthread_self()
  %6 = call %struct.m_thread_info* @find_thread_info(i32 %5)
  store %struct.m_thread_info* %6, %struct.m_thread_info** %3, align 8
  %7 = load %struct.m_thread_info*, %struct.m_thread_info** %3, align 8
  %8 = call i32 @assert(%struct.m_thread_info* %7)
  %9 = load i8*, i8** %2, align 8
  %10 = load %struct.m_thread_info*, %struct.m_thread_info** %3, align 8
  %11 = getelementptr inbounds %struct.m_thread_info, %struct.m_thread_info* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.m_thread_info*, %struct.m_thread_info** %3, align 8
  %13 = getelementptr inbounds %struct.m_thread_info, %struct.m_thread_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.m_thread_info*, %struct.m_thread_info** %3, align 8
  %18 = call i32 @remove_thread_info(%struct.m_thread_info* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = call i32 @pthread_mutex_unlock(i32* @pthread_table_lock)
  %21 = call i32 @ExitThread(i32 0)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.m_thread_info* @find_thread_info(i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @assert(%struct.m_thread_info*) #1

declare dso_local i32 @remove_thread_info(%struct.m_thread_info*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ExitThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
