; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_atcp.c_nn_atcp_start.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/tcp/extr_atcp.c_nn_atcp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_atcp = type { i32, %struct.TYPE_2__, %struct.nn_usock* }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.nn_usock = type { i32 }

@NN_ATCP_STATE_IDLE = common dso_local global i32 0, align 4
@NN_ATCP_SRC_LISTENER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_atcp_start(%struct.nn_atcp* %0, %struct.nn_usock* %1) #0 {
  %3 = alloca %struct.nn_atcp*, align 8
  %4 = alloca %struct.nn_usock*, align 8
  store %struct.nn_atcp* %0, %struct.nn_atcp** %3, align 8
  store %struct.nn_usock* %1, %struct.nn_usock** %4, align 8
  %5 = load %struct.nn_atcp*, %struct.nn_atcp** %3, align 8
  %6 = load i32, i32* @NN_ATCP_STATE_IDLE, align 4
  %7 = call i32 @nn_assert_state(%struct.nn_atcp* %5, i32 %6)
  %8 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %9 = load %struct.nn_atcp*, %struct.nn_atcp** %3, align 8
  %10 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %9, i32 0, i32 2
  store %struct.nn_usock* %8, %struct.nn_usock** %10, align 8
  %11 = load i32, i32* @NN_ATCP_SRC_LISTENER, align 4
  %12 = load %struct.nn_atcp*, %struct.nn_atcp** %3, align 8
  %13 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.nn_atcp*, %struct.nn_atcp** %3, align 8
  %16 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %15, i32 0, i32 0
  %17 = load %struct.nn_atcp*, %struct.nn_atcp** %3, align 8
  %18 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* %16, i32** %19, align 8
  %20 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %21 = load %struct.nn_atcp*, %struct.nn_atcp** %3, align 8
  %22 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %21, i32 0, i32 1
  %23 = call i32 @nn_usock_swap_owner(%struct.nn_usock* %20, %struct.TYPE_2__* %22)
  %24 = load %struct.nn_atcp*, %struct.nn_atcp** %3, align 8
  %25 = getelementptr inbounds %struct.nn_atcp, %struct.nn_atcp* %24, i32 0, i32 0
  %26 = call i32 @nn_fsm_start(i32* %25)
  ret void
}

declare dso_local i32 @nn_assert_state(%struct.nn_atcp*, i32) #1

declare dso_local i32 @nn_usock_swap_owner(%struct.nn_usock*, %struct.TYPE_2__*) #1

declare dso_local i32 @nn_fsm_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
