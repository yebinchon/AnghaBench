; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_sent.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipebase = type { i64, i32, i32 }

@NN_PIPEBASE_OUTSTATE_SENDING = common dso_local global i64 0, align 8
@NN_PIPEBASE_OUTSTATE_SENT = common dso_local global i64 0, align 8
@NN_PIPEBASE_OUTSTATE_ASYNC = common dso_local global i64 0, align 8
@NN_PIPEBASE_OUTSTATE_IDLE = common dso_local global i64 0, align 8
@NN_PIPE_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_sent(%struct.nn_pipebase* %0) #0 {
  %2 = alloca %struct.nn_pipebase*, align 8
  store %struct.nn_pipebase* %0, %struct.nn_pipebase** %2, align 8
  %3 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %4 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NN_PIPEBASE_OUTSTATE_SENDING, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @nn_fast(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i64, i64* @NN_PIPEBASE_OUTSTATE_SENT, align 8
  %13 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %14 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %17 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NN_PIPEBASE_OUTSTATE_ASYNC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @nn_assert(i32 %21)
  %23 = load i64, i64* @NN_PIPEBASE_OUTSTATE_IDLE, align 8
  %24 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %25 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %27 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %26, i32 0, i32 2
  %28 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %29 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %28, i32 0, i32 1
  %30 = load i32, i32* @NN_PIPE_OUT, align 4
  %31 = call i32 @nn_fsm_raise(i32* %27, i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %15, %11
  ret void
}

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_fsm_raise(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
