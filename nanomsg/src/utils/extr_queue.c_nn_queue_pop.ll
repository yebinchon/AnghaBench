; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_queue.c_nn_queue_pop.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_queue.c_nn_queue_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_queue_item = type { %struct.nn_queue_item* }
%struct.nn_queue = type { i32*, %struct.nn_queue_item* }

@NN_QUEUE_NOTINQUEUE = common dso_local global %struct.nn_queue_item* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nn_queue_item* @nn_queue_pop(%struct.nn_queue* %0) #0 {
  %2 = alloca %struct.nn_queue_item*, align 8
  %3 = alloca %struct.nn_queue*, align 8
  %4 = alloca %struct.nn_queue_item*, align 8
  store %struct.nn_queue* %0, %struct.nn_queue** %3, align 8
  %5 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %6 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %5, i32 0, i32 1
  %7 = load %struct.nn_queue_item*, %struct.nn_queue_item** %6, align 8
  %8 = icmp ne %struct.nn_queue_item* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.nn_queue_item* null, %struct.nn_queue_item** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %12 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %11, i32 0, i32 1
  %13 = load %struct.nn_queue_item*, %struct.nn_queue_item** %12, align 8
  store %struct.nn_queue_item* %13, %struct.nn_queue_item** %4, align 8
  %14 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %15 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %14, i32 0, i32 0
  %16 = load %struct.nn_queue_item*, %struct.nn_queue_item** %15, align 8
  %17 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %18 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %17, i32 0, i32 1
  store %struct.nn_queue_item* %16, %struct.nn_queue_item** %18, align 8
  %19 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %20 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %19, i32 0, i32 1
  %21 = load %struct.nn_queue_item*, %struct.nn_queue_item** %20, align 8
  %22 = icmp ne %struct.nn_queue_item* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %10
  %24 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %25 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %23, %10
  %27 = load %struct.nn_queue_item*, %struct.nn_queue_item** @NN_QUEUE_NOTINQUEUE, align 8
  %28 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %29 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %28, i32 0, i32 0
  store %struct.nn_queue_item* %27, %struct.nn_queue_item** %29, align 8
  %30 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  store %struct.nn_queue_item* %30, %struct.nn_queue_item** %2, align 8
  br label %31

31:                                               ; preds = %26, %9
  %32 = load %struct.nn_queue_item*, %struct.nn_queue_item** %2, align 8
  ret %struct.nn_queue_item* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
