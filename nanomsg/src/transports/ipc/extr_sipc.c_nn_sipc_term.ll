; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_sipc.c_nn_sipc_term.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/ipc/extr_sipc.c_nn_sipc_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sipc = type { i32, i32, i32, i32, i32, i32 }

@NN_SIPC_STATE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sipc_term(%struct.nn_sipc* %0) #0 {
  %2 = alloca %struct.nn_sipc*, align 8
  store %struct.nn_sipc* %0, %struct.nn_sipc** %2, align 8
  %3 = load %struct.nn_sipc*, %struct.nn_sipc** %2, align 8
  %4 = load i32, i32* @NN_SIPC_STATE_IDLE, align 4
  %5 = call i32 @nn_assert_state(%struct.nn_sipc* %3, i32 %4)
  %6 = load %struct.nn_sipc*, %struct.nn_sipc** %2, align 8
  %7 = getelementptr inbounds %struct.nn_sipc, %struct.nn_sipc* %6, i32 0, i32 5
  %8 = call i32 @nn_fsm_event_term(i32* %7)
  %9 = load %struct.nn_sipc*, %struct.nn_sipc** %2, align 8
  %10 = getelementptr inbounds %struct.nn_sipc, %struct.nn_sipc* %9, i32 0, i32 4
  %11 = call i32 @nn_msg_term(i32* %10)
  %12 = load %struct.nn_sipc*, %struct.nn_sipc** %2, align 8
  %13 = getelementptr inbounds %struct.nn_sipc, %struct.nn_sipc* %12, i32 0, i32 3
  %14 = call i32 @nn_msg_term(i32* %13)
  %15 = load %struct.nn_sipc*, %struct.nn_sipc** %2, align 8
  %16 = getelementptr inbounds %struct.nn_sipc, %struct.nn_sipc* %15, i32 0, i32 2
  %17 = call i32 @nn_pipebase_term(i32* %16)
  %18 = load %struct.nn_sipc*, %struct.nn_sipc** %2, align 8
  %19 = getelementptr inbounds %struct.nn_sipc, %struct.nn_sipc* %18, i32 0, i32 1
  %20 = call i32 @nn_streamhdr_term(i32* %19)
  %21 = load %struct.nn_sipc*, %struct.nn_sipc** %2, align 8
  %22 = getelementptr inbounds %struct.nn_sipc, %struct.nn_sipc* %21, i32 0, i32 0
  %23 = call i32 @nn_fsm_term(i32* %22)
  ret void
}

declare dso_local i32 @nn_assert_state(%struct.nn_sipc*, i32) #1

declare dso_local i32 @nn_fsm_event_term(i32*) #1

declare dso_local i32 @nn_msg_term(i32*) #1

declare dso_local i32 @nn_pipebase_term(i32*) #1

declare dso_local i32 @nn_streamhdr_term(i32*) #1

declare dso_local i32 @nn_fsm_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
