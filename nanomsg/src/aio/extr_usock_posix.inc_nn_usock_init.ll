; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i64, i64, i32*, i64, i32* }
%struct.nn_fsm = type { i32 }

@nn_usock_handler = common dso_local global i32 0, align 4
@nn_usock_shutdown = common dso_local global i32 0, align 4
@NN_USOCK_STATE_IDLE = common dso_local global i32 0, align 4
@NN_USOCK_SRC_FD = common dso_local global i32 0, align 4
@NN_USOCK_SRC_TASK_CONNECTING = common dso_local global i32 0, align 4
@NN_USOCK_SRC_TASK_CONNECTED = common dso_local global i32 0, align 4
@NN_USOCK_SRC_TASK_ACCEPT = common dso_local global i32 0, align 4
@NN_USOCK_SRC_TASK_SEND = common dso_local global i32 0, align 4
@NN_USOCK_SRC_TASK_RECV = common dso_local global i32 0, align 4
@NN_USOCK_SRC_TASK_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_usock_init(%struct.nn_usock* %0, i32 %1, %struct.nn_fsm* %2) #0 {
  %4 = alloca %struct.nn_usock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nn_fsm*, align 8
  store %struct.nn_usock* %0, %struct.nn_usock** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nn_fsm* %2, %struct.nn_fsm** %6, align 8
  %7 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %8 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %7, i32 0, i32 6
  %9 = load i32, i32* @nn_usock_handler, align 4
  %10 = load i32, i32* @nn_usock_shutdown, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %13 = load %struct.nn_fsm*, %struct.nn_fsm** %6, align 8
  %14 = call i32 @nn_fsm_init(i32* %8, i32 %9, i32 %10, i32 %11, %struct.nn_usock* %12, %struct.nn_fsm* %13)
  %15 = load i32, i32* @NN_USOCK_STATE_IDLE, align 4
  %16 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %17 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %16, i32 0, i32 18
  store i32 %15, i32* %17, align 4
  %18 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %19 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %18, i32 0, i32 6
  %20 = call i32 @nn_fsm_choose_worker(i32* %19)
  %21 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %22 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %21, i32 0, i32 17
  store i32 %20, i32* %22, align 8
  %23 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %24 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %26 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %25, i32 0, i32 16
  store i64 0, i64* %26, align 8
  %27 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %28 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %27, i32 0, i32 15
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %31 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %30, i32 0, i32 15
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %34 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %37 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %36, i32 0, i32 15
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %40 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %39, i32 0, i32 15
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %43 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %42, i32 0, i32 15
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %46 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %45, i32 0, i32 14
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  %49 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %50 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %49, i32 0, i32 13
  %51 = load i32, i32* @NN_USOCK_SRC_FD, align 4
  %52 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %53 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %52, i32 0, i32 6
  %54 = call i32 @nn_worker_fd_init(i32* %50, i32 %51, i32* %53)
  %55 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %56 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %55, i32 0, i32 12
  %57 = load i32, i32* @NN_USOCK_SRC_TASK_CONNECTING, align 4
  %58 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %59 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %58, i32 0, i32 6
  %60 = call i32 @nn_worker_task_init(i32* %56, i32 %57, i32* %59)
  %61 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %62 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %61, i32 0, i32 11
  %63 = load i32, i32* @NN_USOCK_SRC_TASK_CONNECTED, align 4
  %64 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %65 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %64, i32 0, i32 6
  %66 = call i32 @nn_worker_task_init(i32* %62, i32 %63, i32* %65)
  %67 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %68 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %67, i32 0, i32 10
  %69 = load i32, i32* @NN_USOCK_SRC_TASK_ACCEPT, align 4
  %70 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %71 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %70, i32 0, i32 6
  %72 = call i32 @nn_worker_task_init(i32* %68, i32 %69, i32* %71)
  %73 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %74 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %73, i32 0, i32 9
  %75 = load i32, i32* @NN_USOCK_SRC_TASK_SEND, align 4
  %76 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %77 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %76, i32 0, i32 6
  %78 = call i32 @nn_worker_task_init(i32* %74, i32 %75, i32* %77)
  %79 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %80 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %79, i32 0, i32 8
  %81 = load i32, i32* @NN_USOCK_SRC_TASK_RECV, align 4
  %82 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %83 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %82, i32 0, i32 6
  %84 = call i32 @nn_worker_task_init(i32* %80, i32 %81, i32* %83)
  %85 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %86 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %85, i32 0, i32 7
  %87 = load i32, i32* @NN_USOCK_SRC_TASK_STOP, align 4
  %88 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %89 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %88, i32 0, i32 6
  %90 = call i32 @nn_worker_task_init(i32* %86, i32 %87, i32* %89)
  %91 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %92 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %91, i32 0, i32 5
  %93 = call i32 @nn_fsm_event_init(i32* %92)
  %94 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %95 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %94, i32 0, i32 4
  %96 = call i32 @nn_fsm_event_init(i32* %95)
  %97 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %98 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %97, i32 0, i32 3
  %99 = call i32 @nn_fsm_event_init(i32* %98)
  %100 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %101 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %100, i32 0, i32 2
  %102 = call i32 @nn_fsm_event_init(i32* %101)
  %103 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %104 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %103, i32 0, i32 1
  store i32* null, i32** %104, align 8
  ret void
}

declare dso_local i32 @nn_fsm_init(i32*, i32, i32, i32, %struct.nn_usock*, %struct.nn_fsm*) #1

declare dso_local i32 @nn_fsm_choose_worker(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nn_worker_fd_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_worker_task_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_fsm_event_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
