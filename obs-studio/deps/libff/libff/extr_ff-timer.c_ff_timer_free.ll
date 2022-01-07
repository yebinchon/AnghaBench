; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-timer.c_ff_timer_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-timer.c_ff_timer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_timer = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_timer_free(%struct.ff_timer* %0) #0 {
  %2 = alloca %struct.ff_timer*, align 8
  %3 = alloca i8*, align 8
  store %struct.ff_timer* %0, %struct.ff_timer** %2, align 8
  %4 = load %struct.ff_timer*, %struct.ff_timer** %2, align 8
  %5 = icmp ne %struct.ff_timer* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.ff_timer*, %struct.ff_timer** %2, align 8
  %9 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %8, i32 0, i32 3
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load %struct.ff_timer*, %struct.ff_timer** %2, align 8
  %12 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.ff_timer*, %struct.ff_timer** %2, align 8
  %14 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %13, i32 0, i32 1
  %15 = call i32 @pthread_cond_signal(i32* %14)
  %16 = load %struct.ff_timer*, %struct.ff_timer** %2, align 8
  %17 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %16, i32 0, i32 3
  %18 = call i32 @pthread_mutex_unlock(i32* %17)
  %19 = load %struct.ff_timer*, %struct.ff_timer** %2, align 8
  %20 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pthread_join(i32 %21, i8** %3)
  %23 = load %struct.ff_timer*, %struct.ff_timer** %2, align 8
  %24 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %23, i32 0, i32 3
  %25 = call i32 @pthread_mutex_destroy(i32* %24)
  %26 = load %struct.ff_timer*, %struct.ff_timer** %2, align 8
  %27 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %26, i32 0, i32 2
  %28 = call i32 @pthread_mutexattr_destroy(i32* %27)
  %29 = load %struct.ff_timer*, %struct.ff_timer** %2, align 8
  %30 = getelementptr inbounds %struct.ff_timer, %struct.ff_timer* %29, i32 0, i32 1
  %31 = call i32 @pthread_cond_destroy(i32* %30)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
