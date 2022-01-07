; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_list.c_nn_list_prev.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_list.c_nn_list_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_list = type { %struct.nn_list_item* }
%struct.nn_list_item = type { i64 }

@NN_LIST_NOTINLIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nn_list_item* @nn_list_prev(%struct.nn_list* %0, %struct.nn_list_item* %1) #0 {
  %3 = alloca %struct.nn_list_item*, align 8
  %4 = alloca %struct.nn_list*, align 8
  %5 = alloca %struct.nn_list_item*, align 8
  store %struct.nn_list* %0, %struct.nn_list** %4, align 8
  store %struct.nn_list_item* %1, %struct.nn_list_item** %5, align 8
  %6 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %7 = icmp ne %struct.nn_list_item* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.nn_list*, %struct.nn_list** %4, align 8
  %10 = getelementptr inbounds %struct.nn_list, %struct.nn_list* %9, i32 0, i32 0
  %11 = load %struct.nn_list_item*, %struct.nn_list_item** %10, align 8
  store %struct.nn_list_item* %11, %struct.nn_list_item** %3, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %14 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NN_LIST_NOTINLIST, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @nn_assert(i32 %18)
  %20 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %21 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.nn_list_item*
  store %struct.nn_list_item* %23, %struct.nn_list_item** %3, align 8
  br label %24

24:                                               ; preds = %12, %8
  %25 = load %struct.nn_list_item*, %struct.nn_list_item** %3, align 8
  ret %struct.nn_list_item* %25
}

declare dso_local i32 @nn_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
