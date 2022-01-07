; ModuleID = '/home/carl/AnghaBench/mpv/osdep/win32/extr_pthread.c_pthread_detach.c'
source_filename = "/home/carl/AnghaBench/mpv/osdep/win32/extr_pthread.c_pthread_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_thread_info = type { %struct.m_thread_info* }

@pthread_table_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m_thread_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (...) @pthread_self()
  %6 = call i32 @pthread_equal(i32 %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (...) @abort() #3
  unreachable

10:                                               ; preds = %1
  %11 = call i32 @pthread_mutex_lock(i32* @pthread_table_lock)
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.m_thread_info* @find_thread_info(i32 %12)
  store %struct.m_thread_info* %13, %struct.m_thread_info** %3, align 8
  %14 = load %struct.m_thread_info*, %struct.m_thread_info** %3, align 8
  %15 = call i32 @assert(%struct.m_thread_info* %14)
  %16 = load %struct.m_thread_info*, %struct.m_thread_info** %3, align 8
  %17 = getelementptr inbounds %struct.m_thread_info, %struct.m_thread_info* %16, i32 0, i32 0
  %18 = load %struct.m_thread_info*, %struct.m_thread_info** %17, align 8
  %19 = call i32 @assert(%struct.m_thread_info* %18)
  %20 = load %struct.m_thread_info*, %struct.m_thread_info** %3, align 8
  %21 = getelementptr inbounds %struct.m_thread_info, %struct.m_thread_info* %20, i32 0, i32 0
  %22 = load %struct.m_thread_info*, %struct.m_thread_info** %21, align 8
  %23 = call i32 @CloseHandle(%struct.m_thread_info* %22)
  %24 = load %struct.m_thread_info*, %struct.m_thread_info** %3, align 8
  %25 = getelementptr inbounds %struct.m_thread_info, %struct.m_thread_info* %24, i32 0, i32 0
  store %struct.m_thread_info* null, %struct.m_thread_info** %25, align 8
  %26 = call i32 @pthread_mutex_unlock(i32* @pthread_table_lock)
  ret i32 0
}

declare dso_local i32 @pthread_equal(i32, i32) #1

declare dso_local i32 @pthread_self(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.m_thread_info* @find_thread_info(i32) #1

declare dso_local i32 @assert(%struct.m_thread_info*) #1

declare dso_local i32 @CloseHandle(%struct.m_thread_info*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
