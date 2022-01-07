; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_worker_posix.inc_nn_worker_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_worker_posix.inc_nn_worker_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_worker = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@nn_worker_routine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_worker_init(%struct.nn_worker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_worker*, align 8
  %4 = alloca i32, align 4
  store %struct.nn_worker* %0, %struct.nn_worker** %3, align 8
  %5 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %6 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %5, i32 0, i32 4
  %7 = call i32 @nn_efd_init(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %14 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %13, i32 0, i32 7
  %15 = call i32 @nn_mutex_init(i32* %14)
  %16 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %17 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %16, i32 0, i32 6
  %18 = call i32 @nn_queue_init(i32* %17)
  %19 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %20 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %19, i32 0, i32 5
  %21 = call i32 @nn_queue_item_init(i32* %20)
  %22 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %23 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %22, i32 0, i32 3
  %24 = call i32 @nn_poller_init(i32* %23)
  %25 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %26 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %25, i32 0, i32 3
  %27 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %28 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %27, i32 0, i32 4
  %29 = call i32 @nn_efd_getfd(i32* %28)
  %30 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %31 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %30, i32 0, i32 2
  %32 = call i32 @nn_poller_add(i32* %26, i32 %29, i32* %31)
  %33 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %34 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %33, i32 0, i32 3
  %35 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %36 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %35, i32 0, i32 2
  %37 = call i32 @nn_poller_set_in(i32* %34, i32* %36)
  %38 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %39 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %38, i32 0, i32 1
  %40 = call i32 @nn_timerset_init(i32* %39)
  %41 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %42 = getelementptr inbounds %struct.nn_worker, %struct.nn_worker* %41, i32 0, i32 0
  %43 = load i32, i32* @nn_worker_routine, align 4
  %44 = load %struct.nn_worker*, %struct.nn_worker** %3, align 8
  %45 = call i32 @nn_thread_init(i32* %42, i32 %43, %struct.nn_worker* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %12, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @nn_efd_init(i32*) #1

declare dso_local i32 @nn_mutex_init(i32*) #1

declare dso_local i32 @nn_queue_init(i32*) #1

declare dso_local i32 @nn_queue_item_init(i32*) #1

declare dso_local i32 @nn_poller_init(i32*) #1

declare dso_local i32 @nn_poller_add(i32*, i32, i32*) #1

declare dso_local i32 @nn_efd_getfd(i32*) #1

declare dso_local i32 @nn_poller_set_in(i32*, i32*) #1

declare dso_local i32 @nn_timerset_init(i32*) #1

declare dso_local i32 @nn_thread_init(i32*, i32, %struct.nn_worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
