; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipe_recv.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_pipe.c_nn_pipe_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipe = type { i32 }
%struct.nn_msg = type { i32 }
%struct.nn_pipebase = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nn_pipebase*, %struct.nn_msg*)* }

@NN_PIPEBASE_INSTATE_IDLE = common dso_local global i64 0, align 8
@NN_PIPEBASE_INSTATE_RECEIVING = common dso_local global i64 0, align 8
@NN_PIPEBASE_INSTATE_RECEIVED = common dso_local global i64 0, align 8
@NN_PIPEBASE_INSTATE_ASYNC = common dso_local global i64 0, align 8
@NN_PIPEBASE_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_pipe_recv(%struct.nn_pipe* %0, %struct.nn_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_pipe*, align 8
  %5 = alloca %struct.nn_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nn_pipebase*, align 8
  store %struct.nn_pipe* %0, %struct.nn_pipe** %4, align 8
  store %struct.nn_msg* %1, %struct.nn_msg** %5, align 8
  %8 = load %struct.nn_pipe*, %struct.nn_pipe** %4, align 8
  %9 = bitcast %struct.nn_pipe* %8 to %struct.nn_pipebase*
  store %struct.nn_pipebase* %9, %struct.nn_pipebase** %7, align 8
  %10 = load %struct.nn_pipebase*, %struct.nn_pipebase** %7, align 8
  %11 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NN_PIPEBASE_INSTATE_IDLE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @nn_assert(i32 %15)
  %17 = load i64, i64* @NN_PIPEBASE_INSTATE_RECEIVING, align 8
  %18 = load %struct.nn_pipebase*, %struct.nn_pipebase** %7, align 8
  %19 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.nn_pipebase*, %struct.nn_pipebase** %7, align 8
  %21 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.nn_pipebase*, %struct.nn_msg*)*, i32 (%struct.nn_pipebase*, %struct.nn_msg*)** %23, align 8
  %25 = load %struct.nn_pipebase*, %struct.nn_pipebase** %7, align 8
  %26 = load %struct.nn_msg*, %struct.nn_msg** %5, align 8
  %27 = call i32 %24(%struct.nn_pipebase* %25, %struct.nn_msg* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32 @errnum_assert(i32 %30, i32 %32)
  %34 = load %struct.nn_pipebase*, %struct.nn_pipebase** %7, align 8
  %35 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NN_PIPEBASE_INSTATE_RECEIVED, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @nn_fast(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load i64, i64* @NN_PIPEBASE_INSTATE_IDLE, align 8
  %44 = load %struct.nn_pipebase*, %struct.nn_pipebase** %7, align 8
  %45 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %61

47:                                               ; preds = %2
  %48 = load %struct.nn_pipebase*, %struct.nn_pipebase** %7, align 8
  %49 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NN_PIPEBASE_INSTATE_RECEIVING, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @nn_assert(i32 %53)
  %55 = load i64, i64* @NN_PIPEBASE_INSTATE_ASYNC, align 8
  %56 = load %struct.nn_pipebase*, %struct.nn_pipebase** %7, align 8
  %57 = getelementptr inbounds %struct.nn_pipebase, %struct.nn_pipebase* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @NN_PIPEBASE_RELEASE, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %47, %42
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i64 @nn_fast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
