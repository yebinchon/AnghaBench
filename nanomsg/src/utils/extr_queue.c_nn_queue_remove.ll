; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_queue.c_nn_queue_remove.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_queue.c_nn_queue_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_queue = type { %struct.nn_queue_item*, %struct.nn_queue_item* }
%struct.nn_queue_item = type { i64 }

@NN_QUEUE_NOTINQUEUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_queue_remove(%struct.nn_queue* %0, %struct.nn_queue_item* %1) #0 {
  %3 = alloca %struct.nn_queue*, align 8
  %4 = alloca %struct.nn_queue_item*, align 8
  %5 = alloca %struct.nn_queue_item*, align 8
  %6 = alloca %struct.nn_queue_item*, align 8
  store %struct.nn_queue* %0, %struct.nn_queue** %3, align 8
  store %struct.nn_queue_item* %1, %struct.nn_queue_item** %4, align 8
  %7 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %8 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NN_QUEUE_NOTINQUEUE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %67

13:                                               ; preds = %2
  store %struct.nn_queue_item* null, %struct.nn_queue_item** %6, align 8
  %14 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %15 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %14, i32 0, i32 1
  %16 = load %struct.nn_queue_item*, %struct.nn_queue_item** %15, align 8
  store %struct.nn_queue_item* %16, %struct.nn_queue_item** %5, align 8
  br label %17

17:                                               ; preds = %62, %13
  %18 = load %struct.nn_queue_item*, %struct.nn_queue_item** %5, align 8
  %19 = icmp ne %struct.nn_queue_item* %18, null
  br i1 %19, label %20, label %67

20:                                               ; preds = %17
  %21 = load %struct.nn_queue_item*, %struct.nn_queue_item** %5, align 8
  %22 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %23 = icmp eq %struct.nn_queue_item* %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %26 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %25, i32 0, i32 1
  %27 = load %struct.nn_queue_item*, %struct.nn_queue_item** %26, align 8
  %28 = load %struct.nn_queue_item*, %struct.nn_queue_item** %5, align 8
  %29 = icmp eq %struct.nn_queue_item* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.nn_queue_item*, %struct.nn_queue_item** %5, align 8
  %32 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.nn_queue_item*
  %35 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %36 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %35, i32 0, i32 1
  store %struct.nn_queue_item* %34, %struct.nn_queue_item** %36, align 8
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %39 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %38, i32 0, i32 0
  %40 = load %struct.nn_queue_item*, %struct.nn_queue_item** %39, align 8
  %41 = load %struct.nn_queue_item*, %struct.nn_queue_item** %5, align 8
  %42 = icmp eq %struct.nn_queue_item* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.nn_queue_item*, %struct.nn_queue_item** %6, align 8
  %45 = load %struct.nn_queue*, %struct.nn_queue** %3, align 8
  %46 = getelementptr inbounds %struct.nn_queue, %struct.nn_queue* %45, i32 0, i32 0
  store %struct.nn_queue_item* %44, %struct.nn_queue_item** %46, align 8
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.nn_queue_item*, %struct.nn_queue_item** %6, align 8
  %49 = icmp ne %struct.nn_queue_item* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.nn_queue_item*, %struct.nn_queue_item** %5, align 8
  %52 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nn_queue_item*, %struct.nn_queue_item** %6, align 8
  %55 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i64, i64* @NN_QUEUE_NOTINQUEUE, align 8
  %58 = load %struct.nn_queue_item*, %struct.nn_queue_item** %4, align 8
  %59 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %67

60:                                               ; preds = %20
  %61 = load %struct.nn_queue_item*, %struct.nn_queue_item** %5, align 8
  store %struct.nn_queue_item* %61, %struct.nn_queue_item** %6, align 8
  br label %62

62:                                               ; preds = %60
  %63 = load %struct.nn_queue_item*, %struct.nn_queue_item** %5, align 8
  %64 = getelementptr inbounds %struct.nn_queue_item, %struct.nn_queue_item* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.nn_queue_item*
  store %struct.nn_queue_item* %66, %struct.nn_queue_item** %5, align 8
  br label %17

67:                                               ; preds = %12, %56, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
