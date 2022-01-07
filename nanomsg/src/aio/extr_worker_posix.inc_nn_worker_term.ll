; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_worker_posix.inc_nn_worker_term.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_worker_posix.inc_nn_worker_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_worker = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_worker_term(%struct.nn_worker* %0) #0 {
  %2 = alloca %struct.nn_worker*, align 8
  store %struct.nn_worker* %0, %struct.nn_worker** %2, align 8
  %3 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %4 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %3, i32 0, i32 0
  %5 = call i32 @nn_mutex_lock(i32* %4)
  %6 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %7 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %6, i32 0, i32 1
  %8 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %9 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %8, i32 0, i32 2
  %10 = call i32 @nn_queue_push(i32* %7, i32* %9)
  %11 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %12 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %11, i32 0, i32 3
  %13 = call i32 @nn_efd_signal(i32* %12)
  %14 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %15 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %14, i32 0, i32 0
  %16 = call i32 @nn_mutex_unlock(i32* %15)
  %17 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %18 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %17, i32 0, i32 6
  %19 = call i32 @nn_thread_term(i32* %18)
  %20 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %21 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %20, i32 0, i32 5
  %22 = call i32 @nn_timerset_term(i32* %21)
  %23 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %24 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %23, i32 0, i32 4
  %25 = call i32 @nn_poller_term(i32* %24)
  %26 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %27 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %26, i32 0, i32 3
  %28 = call i32 @nn_efd_term(i32* %27)
  %29 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %30 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %29, i32 0, i32 2
  %31 = call i32 @nn_queue_item_term(i32* %30)
  %32 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %33 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %32, i32 0, i32 1
  %34 = call i32 @nn_queue_term(i32* %33)
  %35 = load %struct.nn_worker*, %struct.nn_worker** %2, align 8
  %36 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %35, i32 0, i32 0
  %37 = call i32 @nn_mutex_term(i32* %36)
  ret void
}

declare dso_local i32 @nn_mutex_lock(i32*) #1

declare dso_local i32 @nn_queue_push(i32*, i32*) #1

declare dso_local i32 @nn_efd_signal(i32*) #1

declare dso_local i32 @nn_mutex_unlock(i32*) #1

declare dso_local i32 @nn_thread_term(i32*) #1

declare dso_local i32 @nn_timerset_term(i32*) #1

declare dso_local i32 @nn_poller_term(i32*) #1

declare dso_local i32 @nn_efd_term(i32*) #1

declare dso_local i32 @nn_queue_item_term(i32*) #1

declare dso_local i32 @nn_queue_term(i32*) #1

declare dso_local i32 @nn_mutex_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
