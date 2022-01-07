; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_unlock.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_dispatch_queue = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_dispatch_unlock(%struct.mp_dispatch_queue* %0) #0 {
  %2 = alloca %struct.mp_dispatch_queue*, align 8
  store %struct.mp_dispatch_queue* %0, %struct.mp_dispatch_queue** %2, align 8
  %3 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %4 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %3, i32 0, i32 3
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  %6 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %7 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %11 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %15 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (...) @pthread_self()
  %18 = call i32 @pthread_equal(i32 %16, i32 %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %21 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %23 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %25 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %29 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %28, i32 0, i32 4
  %30 = call i32 @pthread_cond_broadcast(i32* %29)
  %31 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %2, align 8
  %32 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %31, i32 0, i32 3
  %33 = call i32 @pthread_mutex_unlock(i32* %32)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_equal(i32, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
