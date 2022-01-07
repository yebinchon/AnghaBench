; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_queue.c_nn_queue_push.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_queue.c_nn_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_queue_item = type { %struct.nn_queue_item* }
%struct.nn_queue = type { %struct.nn_queue_item*, %struct.nn_queue_item* }

@NN_QUEUE_NOTINQUEUE = common dso_local global %struct.nn_queue_item* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_queue_push(%struct.nn_queue* %0, %struct.nn_queue_item* %1) #0 {
  %3 = alloca %struct.nn_queue*, align 8
  %4 = alloca %struct.nn_queue_item*, align 8
  store %struct.nn_queue* %0, %struct.nn_queue** %3, align 8
  store %struct.nn_queue_item* %1, %struct.nn_queue_item** %4, align 8
  %5 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %6 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %5, i32 0, i32 0
  %7 = load %struct.nn_queue_item*, %struct.nn_queue_item** %6, align 8
  %8 = load %struct.nn_queue_item*, %struct.nn_queue_item** @NN_QUEUE_NOTINQUEUE, align 8
  %9 = icmp eq %struct.nn_queue_item* %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @nn_assert(i32 %10)
  %12 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %13 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %12, i32 0, i32 0
  store %struct.nn_queue_item* null, %struct.nn_queue_item** %13, align 8
  %14 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %15 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %14, i32 0, i32 1
  %16 = load %struct.nn_queue_item*, %struct.nn_queue_item** %15, align 8
  %17 = icmp ne %struct.nn_queue_item* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %20 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %21 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %20, i32 0, i32 1
  store %struct.nn_queue_item* %19, %struct.nn_queue_item** %21, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %24 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %23, i32 0, i32 0
  %25 = load %struct.nn_queue_item*, %struct.nn_queue_item** %24, align 8
  %26 = icmp ne %struct.nn_queue_item* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %29 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %30 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %29, i32 0, i32 0
  %31 = load %struct.nn_queue_item*, %struct.nn_queue_item** %30, align 8
  %32 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %31, i32 0, i32 0
  store %struct.nn_queue_item* %28, %struct.nn_queue_item** %32, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %35 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %36 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %35, i32 0, i32 0
  store %struct.nn_queue_item* %34, %struct.nn_queue_item** %36, align 8
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
