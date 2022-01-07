; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_atcp.c_nn_atcp_term.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_atcp.c_nn_atcp_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_atcp = type { i32, i32, i32, i32, i32, i32 }

@NN_ATCP_STATE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_atcp_term(%struct.nn_atcp* %0) #0 {
  %2 = alloca %struct.nn_atcp*, align 8
  store %struct.nn_atcp* %0, %struct.nn_atcp** %2, align 8
  %3 = load %struct.nn_atcp*, %struct.nn_atcp** %2, align 8
  %4 = load i32, i32* @NN_ATCP_STATE_IDLE, align 4
  %5 = call i32 @nn_assert_state(%struct.nn_atcp* %3, i32 %4)
  %6 = load %struct.nn_atcp*, %struct.nn_atcp** %2, align 8
  %7 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %6, i32 0, i32 5
  %8 = call i32 @nn_list_item_term(i32* %7)
  %9 = load %struct.nn_atcp*, %struct.nn_atcp** %2, align 8
  %10 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %9, i32 0, i32 4
  %11 = call i32 @nn_fsm_event_term(i32* %10)
  %12 = load %struct.nn_atcp*, %struct.nn_atcp** %2, align 8
  %13 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %12, i32 0, i32 3
  %14 = call i32 @nn_fsm_event_term(i32* %13)
  %15 = load %struct.nn_atcp*, %struct.nn_atcp** %2, align 8
  %16 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %15, i32 0, i32 2
  %17 = call i32 @nn_stcp_term(i32* %16)
  %18 = load %struct.nn_atcp*, %struct.nn_atcp** %2, align 8
  %19 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %18, i32 0, i32 1
  %20 = call i32 @nn_usock_term(i32* %19)
  %21 = load %struct.nn_atcp*, %struct.nn_atcp** %2, align 8
  %22 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %21, i32 0, i32 0
  %23 = call i32 @nn_fsm_term(i32* %22)
  ret void
}

declare dso_local i32 @nn_assert_state(%struct.nn_atcp*, i32) #1

declare dso_local i32 @nn_list_item_term(i32*) #1

declare dso_local i32 @nn_fsm_event_term(i32*) #1

declare dso_local i32 @nn_stcp_term(i32*) #1

declare dso_local i32 @nn_usock_term(i32*) #1

declare dso_local i32 @nn_fsm_term(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
