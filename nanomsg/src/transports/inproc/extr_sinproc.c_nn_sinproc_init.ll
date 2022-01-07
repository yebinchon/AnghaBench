; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_sinproc.c_nn_sinproc_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/inproc/extr_sinproc.c_nn_sinproc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sinproc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32 }
%struct.nn_ep = type { i32 }
%struct.nn_fsm = type { i32 }

@nn_sinproc_handler = common dso_local global i32 0, align 4
@nn_sinproc_shutdown = common dso_local global i32 0, align 4
@NN_SINPROC_STATE_IDLE = common dso_local global i32 0, align 4
@nn_sinproc_pipebase_vfptr = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sinproc_init(%struct.nn_sinproc* %0, i32 %1, %struct.nn_ep* %2, %struct.nn_fsm* %3) #0 {
  %5 = alloca %struct.nn_sinproc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_ep*, align 8
  %8 = alloca %struct.nn_fsm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.nn_sinproc* %0, %struct.nn_sinproc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nn_ep* %2, %struct.nn_ep** %7, align 8
  store %struct.nn_fsm* %3, %struct.nn_fsm** %8, align 8
  %11 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %12 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %11, i32 0, i32 11
  %13 = load i32, i32* @nn_sinproc_handler, align 4
  %14 = load i32, i32* @nn_sinproc_shutdown, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %17 = load %struct.nn_fsm*, %struct.nn_fsm** %8, align 8
  %18 = call i32 @nn_fsm_init(i32* %12, i32 %13, i32 %14, i32 %15, %struct.nn_sinproc* %16, %struct.nn_fsm* %17)
  %19 = load i32, i32* @NN_SINPROC_STATE_IDLE, align 4
  %20 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %21 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %23 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %22, i32 0, i32 9
  store i64 0, i64* %23, align 8
  %24 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %25 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %24, i32 0, i32 8
  store i32* null, i32** %25, align 8
  %26 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %27 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %26, i32 0, i32 7
  %28 = load %struct.nn_ep*, %struct.nn_ep** %7, align 8
  %29 = call i32 @nn_pipebase_init(i32* %27, i32* @nn_sinproc_pipebase_vfptr, %struct.nn_ep* %28)
  store i64 4, i64* %10, align 8
  %30 = load %struct.nn_ep*, %struct.nn_ep** %7, align 8
  %31 = load i32, i32* @NN_SOL_SOCKET, align 4
  %32 = load i32, i32* @NN_RCVBUF, align 4
  %33 = call i32 @nn_ep_getopt(%struct.nn_ep* %30, i32 %31, i32 %32, i32* %9, i64* %10)
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 4
  %36 = zext i1 %35 to i32
  %37 = call i32 @nn_assert(i32 %36)
  %38 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %39 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %38, i32 0, i32 6
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @nn_msgqueue_init(i32* %39, i32 %40)
  %42 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %43 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %42, i32 0, i32 5
  %44 = call i32 @nn_msg_init(i32* %43, i32 0)
  %45 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %46 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %45, i32 0, i32 4
  %47 = call i32 @nn_fsm_event_init(i32* %46)
  %48 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %49 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %48, i32 0, i32 3
  %50 = call i32 @nn_fsm_event_init(i32* %49)
  %51 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %52 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %51, i32 0, i32 2
  %53 = call i32 @nn_fsm_event_init(i32* %52)
  %54 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %55 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %54, i32 0, i32 1
  %56 = call i32 @nn_fsm_event_init(i32* %55)
  %57 = load %struct.nn_sinproc*, %struct.nn_sinproc** %5, align 8
  %58 = getelementptr inbounds %struct.nn_sinproc, %struct.nn_sinproc* %57, i32 0, i32 0
  %59 = call i32 @nn_list_item_init(i32* %58)
  ret void
}

declare dso_local i32 @nn_fsm_init(i32*, i32, i32, i32, %struct.nn_sinproc*, %struct.nn_fsm*) #1

declare dso_local i32 @nn_pipebase_init(i32*, i32*, %struct.nn_ep*) #1

declare dso_local i32 @nn_ep_getopt(%struct.nn_ep*, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_msgqueue_init(i32*, i32) #1

declare dso_local i32 @nn_msg_init(i32*, i32) #1

declare dso_local i32 @nn_fsm_event_init(i32*) #1

declare dso_local i32 @nn_list_item_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
