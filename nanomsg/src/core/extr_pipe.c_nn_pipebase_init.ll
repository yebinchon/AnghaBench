; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipebase = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.nn_pipebase_vfptr*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nn_pipebase_vfptr = type { i32 }
%struct.nn_ep = type { i32, %struct.TYPE_2__* }

@NN_PIPEBASE_STATE_IDLE = common dso_local global i32 0, align 4
@NN_PIPEBASE_INSTATE_DEACTIVATED = common dso_local global i32 0, align 4
@NN_PIPEBASE_OUTSTATE_DEACTIVATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_init(%struct.nn_pipebase* %0, %struct.nn_pipebase_vfptr* %1, %struct.nn_ep* %2) #0 {
  %4 = alloca %struct.nn_pipebase*, align 8
  %5 = alloca %struct.nn_pipebase_vfptr*, align 8
  %6 = alloca %struct.nn_ep*, align 8
  store %struct.nn_pipebase* %0, %struct.nn_pipebase** %4, align 8
  store %struct.nn_pipebase_vfptr* %1, %struct.nn_pipebase_vfptr** %5, align 8
  store %struct.nn_ep* %2, %struct.nn_ep** %6, align 8
  %7 = load %struct.nn_ep*, %struct.nn_ep** %6, align 8
  %8 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @nn_assert(%struct.TYPE_2__* %9)
  %11 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %12 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %11, i32 0, i32 8
  %13 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %14 = load %struct.nn_ep*, %struct.nn_ep** %6, align 8
  %15 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @nn_fsm_init(i32* %12, i32* null, i32* null, i32 0, %struct.nn_pipebase* %13, i32* %17)
  %19 = load %struct.nn_pipebase_vfptr*, %struct.nn_pipebase_vfptr** %5, align 8
  %20 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %21 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %20, i32 0, i32 7
  store %struct.nn_pipebase_vfptr* %19, %struct.nn_pipebase_vfptr** %21, align 8
  %22 = load i32, i32* @NN_PIPEBASE_STATE_IDLE, align 4
  %23 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %24 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @NN_PIPEBASE_INSTATE_DEACTIVATED, align 4
  %26 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %27 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @NN_PIPEBASE_OUTSTATE_DEACTIVATED, align 4
  %29 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %30 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nn_ep*, %struct.nn_ep** %6, align 8
  %32 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %35 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %34, i32 0, i32 3
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %35, align 8
  %36 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %37 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %36, i32 0, i32 2
  %38 = load %struct.nn_ep*, %struct.nn_ep** %6, align 8
  %39 = getelementptr inbounds %struct.nn_ep, %struct.nn_ep* %38, i32 0, i32 0
  %40 = call i32 @memcpy(i32* %37, i32* %39, i32 4)
  %41 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %42 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %41, i32 0, i32 1
  %43 = call i32 @nn_fsm_event_init(i32* %42)
  %44 = load %struct.nn_pipebase*, %struct.nn_pipebase** %4, align 8
  %45 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %44, i32 0, i32 0
  %46 = call i32 @nn_fsm_event_init(i32* %45)
  ret void
}

declare dso_local i32 @nn_assert(%struct.TYPE_2__*) #1

declare dso_local i32 @nn_fsm_init(i32*, i32*, i32*, i32, %struct.nn_pipebase*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nn_fsm_event_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
