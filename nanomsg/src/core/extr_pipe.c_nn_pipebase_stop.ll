; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_stop.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipebase_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipebase = type { i64, i32 }
%struct.nn_pipe = type { i32 }

@NN_PIPEBASE_STATE_ACTIVE = common dso_local global i64 0, align 8
@NN_PIPEBASE_STATE_IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_pipebase_stop(%struct.nn_pipebase* %0) #0 {
  %2 = alloca %struct.nn_pipebase*, align 8
  store %struct.nn_pipebase* %0, %struct.nn_pipebase** %2, align 8
  %3 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %4 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NN_PIPEBASE_STATE_ACTIVE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %10 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %13 = bitcast %struct.nn_pipebase* %12 to %struct.nn_pipe*
  %14 = call i32 @nn_sock_rm(i32 %11, %struct.nn_pipe* %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load i64, i64* @NN_PIPEBASE_STATE_IDLE, align 8
  %17 = load %struct.nn_pipebase*, %struct.nn_pipebase** %2, align 8
  %18 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  ret void
}

declare dso_local i32 @nn_sock_rm(i32, %struct.nn_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
