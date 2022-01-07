; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_stcp.c_nn_stcp_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_stcp.c_nn_stcp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_stcp = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.nn_ep = type { i32 }
%struct.nn_fsm = type { i32 }

@nn_stcp_handler = common dso_local global i32 0, align 4
@nn_stcp_shutdown = common dso_local global i32 0, align 4
@NN_STCP_STATE_IDLE = common dso_local global i32 0, align 4
@NN_STCP_SRC_STREAMHDR = common dso_local global i32 0, align 4
@nn_stcp_pipebase_vfptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_stcp_init(%struct.nn_stcp* %0, i32 %1, %struct.nn_ep* %2, %struct.nn_fsm* %3) #0 {
  %5 = alloca %struct.nn_stcp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_ep*, align 8
  %8 = alloca %struct.nn_fsm*, align 8
  store %struct.nn_stcp* %0, %struct.nn_stcp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nn_ep* %2, %struct.nn_ep** %7, align 8
  store %struct.nn_fsm* %3, %struct.nn_fsm** %8, align 8
  %9 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %10 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %9, i32 0, i32 8
  %11 = load i32, i32* @nn_stcp_handler, align 4
  %12 = load i32, i32* @nn_stcp_shutdown, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %15 = load %struct.nn_fsm*, %struct.nn_fsm** %8, align 8
  %16 = call i32 @nn_fsm_init(i32* %10, i32 %11, i32 %12, i32 %13, %struct.nn_stcp* %14, %struct.nn_fsm* %15)
  %17 = load i32, i32* @NN_STCP_STATE_IDLE, align 4
  %18 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %19 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %21 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %20, i32 0, i32 9
  %22 = load i32, i32* @NN_STCP_SRC_STREAMHDR, align 4
  %23 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %24 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %23, i32 0, i32 8
  %25 = call i32 @nn_streamhdr_init(i32* %21, i32 %22, i32* %24)
  %26 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %27 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %26, i32 0, i32 7
  store i32* null, i32** %27, align 8
  %28 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %29 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %32 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %35 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %34, i32 0, i32 5
  %36 = load %struct.nn_ep*, %struct.nn_ep** %7, align 8
  %37 = call i32 @nn_pipebase_init(i32* %35, i32* @nn_stcp_pipebase_vfptr, %struct.nn_ep* %36)
  %38 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %39 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %41 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %40, i32 0, i32 4
  %42 = call i32 @nn_msg_init(i32* %41, i32 0)
  %43 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %44 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %46 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %45, i32 0, i32 3
  %47 = call i32 @nn_msg_init(i32* %46, i32 0)
  %48 = load %struct.nn_stcp*, %struct.nn_stcp** %5, align 8
  %49 = getelementptr inbounds %struct.nn_stcp, %struct.nn_stcp* %48, i32 0, i32 2
  %50 = call i32 @nn_fsm_event_init(i32* %49)
  ret void
}

declare dso_local i32 @nn_fsm_init(i32*, i32, i32, i32, %struct.nn_stcp*, %struct.nn_fsm*) #1

declare dso_local i32 @nn_streamhdr_init(i32*, i32, i32*) #1

declare dso_local i32 @nn_pipebase_init(i32*, i32*, %struct.nn_ep*) #1

declare dso_local i32 @nn_msg_init(i32*, i32) #1

declare dso_local i32 @nn_fsm_event_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
