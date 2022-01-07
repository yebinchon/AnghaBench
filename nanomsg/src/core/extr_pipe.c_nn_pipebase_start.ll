; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_start.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipebase = type { i32, i32, i32, i32, i32, i32 }
%struct.nn_pipe = type { i32 }

@NN_PIPEBASE_STATE_IDLE = common dso_local global i32 0, align 4
@NN_PIPEBASE_STATE_ACTIVE = common dso_local global i32 0, align 4
@NN_PIPEBASE_INSTATE_ASYNC = common dso_local global i32 0, align 4
@NN_PIPEBASE_OUTSTATE_IDLE = common dso_local global i32 0, align 4
@NN_PIPEBASE_STATE_FAILED = common dso_local global i32 0, align 4
@NN_PIPE_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_pipebase_start(%struct.nn_pipebase* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_pipebase*, align 8
  %4 = alloca i32, align 4
  store %struct.nn_pipebase* %0, %struct.nn_pipebase** %3, align 8
  %5 = load %struct.nn_pipebase*, %struct.nn_pipebase** %3, align 8
  %6 = load i32, i32* @NN_PIPEBASE_STATE_IDLE, align 4
  %7 = call i32 @nn_assert_state(%struct.nn_pipebase* %5, i32 %6)
  %8 = load i32, i32* @NN_PIPEBASE_STATE_ACTIVE, align 4
  %9 = load %struct.nn_pipebase*, %struct.nn_pipebase** %3, align 8
  %10 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @NN_PIPEBASE_INSTATE_ASYNC, align 4
  %12 = load %struct.nn_pipebase*, %struct.nn_pipebase** %3, align 8
  %13 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @NN_PIPEBASE_OUTSTATE_IDLE, align 4
  %15 = load %struct.nn_pipebase*, %struct.nn_pipebase** %3, align 8
  %16 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nn_pipebase*, %struct.nn_pipebase** %3, align 8
  %18 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nn_pipebase*, %struct.nn_pipebase** %3, align 8
  %21 = bitcast %struct.nn_pipebase* %20 to %struct.nn_pipe*
  %22 = call i32 @nn_sock_add(i32 %19, %struct.nn_pipe* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @nn_slow(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @NN_PIPEBASE_STATE_FAILED, align 4
  %30 = load %struct.nn_pipebase*, %struct.nn_pipebase** %3, align 8
  %31 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %1
  %34 = load %struct.nn_pipebase*, %struct.nn_pipebase** %3, align 8
  %35 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %34, i32 0, i32 1
  %36 = load %struct.nn_pipebase*, %struct.nn_pipebase** %3, align 8
  %37 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %36, i32 0, i32 0
  %38 = load i32, i32* @NN_PIPE_OUT, align 4
  %39 = call i32 @nn_fsm_raise(i32* %35, i32* %37, i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @nn_assert_state(%struct.nn_pipebase*, i32) #1

declare dso_local i32 @nn_sock_add(i32, %struct.nn_pipe*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_fsm_raise(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
