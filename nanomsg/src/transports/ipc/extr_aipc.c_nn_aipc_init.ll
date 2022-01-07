; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_aipc.c_nn_aipc_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_aipc.c_nn_aipc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_aipc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32, %struct.nn_ep*, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.nn_ep = type { i32 }
%struct.nn_fsm = type { i32 }

@nn_aipc_handler = common dso_local global i32 0, align 4
@nn_aipc_shutdown = common dso_local global i32 0, align 4
@NN_AIPC_STATE_IDLE = common dso_local global i32 0, align 4
@NN_AIPC_SRC_USOCK = common dso_local global i32 0, align 4
@NN_AIPC_SRC_SIPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_aipc_init(%struct.nn_aipc* %0, i32 %1, %struct.nn_ep* %2, %struct.nn_fsm* %3) #0 {
  %5 = alloca %struct.nn_aipc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_ep*, align 8
  %8 = alloca %struct.nn_fsm*, align 8
  store %struct.nn_aipc* %0, %struct.nn_aipc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nn_ep* %2, %struct.nn_ep** %7, align 8
  store %struct.nn_fsm* %3, %struct.nn_fsm** %8, align 8
  %9 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %10 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %9, i32 0, i32 3
  %11 = load i32, i32* @nn_aipc_handler, align 4
  %12 = load i32, i32* @nn_aipc_shutdown, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %15 = load %struct.nn_fsm*, %struct.nn_fsm** %8, align 8
  %16 = call i32 @nn_fsm_init(i32* %10, i32 %11, i32 %12, i32 %13, %struct.nn_aipc* %14, %struct.nn_fsm* %15)
  %17 = load i32, i32* @NN_AIPC_STATE_IDLE, align 4
  %18 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %19 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nn_ep*, %struct.nn_ep** %7, align 8
  %21 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %22 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %21, i32 0, i32 8
  store %struct.nn_ep* %20, %struct.nn_ep** %22, align 8
  %23 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %24 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %23, i32 0, i32 7
  %25 = load i32, i32* @NN_AIPC_SRC_USOCK, align 4
  %26 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %27 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %26, i32 0, i32 3
  %28 = call i32 @nn_usock_init(i32* %24, i32 %25, i32* %27)
  %29 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %30 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %29, i32 0, i32 6
  store i32* null, i32** %30, align 8
  %31 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %32 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %35 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %38 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %37, i32 0, i32 4
  %39 = load i32, i32* @NN_AIPC_SRC_SIPC, align 4
  %40 = load %struct.nn_ep*, %struct.nn_ep** %7, align 8
  %41 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %42 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %41, i32 0, i32 3
  %43 = call i32 @nn_sipc_init(i32* %38, i32 %39, %struct.nn_ep* %40, i32* %42)
  %44 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %45 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %44, i32 0, i32 2
  %46 = call i32 @nn_fsm_event_init(i32* %45)
  %47 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %48 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %47, i32 0, i32 1
  %49 = call i32 @nn_fsm_event_init(i32* %48)
  %50 = load %struct.nn_aipc*, %struct.nn_aipc** %5, align 8
  %51 = getelementptr inbounds %struct.nn_aipc, %struct.nn_aipc* %50, i32 0, i32 0
  %52 = call i32 @nn_list_item_init(i32* %51)
  ret void
}

declare dso_local i32 @nn_fsm_init(i32*, i32, i32, i32, %struct.nn_aipc*, %struct.nn_fsm*) #1

declare dso_local i32 @nn_usock_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_sipc_init(i32*, i32, %struct.nn_ep*, i32*) #1

declare dso_local i32 @nn_fsm_event_init(i32*) #1

declare dso_local i32 @nn_list_item_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
