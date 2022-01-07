; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_list.c_nn_list_erase.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_list.c_nn_list_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_list = type { %struct.TYPE_2__*, %struct.nn_list_item* }
%struct.TYPE_2__ = type { %struct.nn_list_item* }
%struct.nn_list_item = type { %struct.nn_list_item*, %struct.TYPE_2__* }

@NN_LIST_NOTINLIST = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nn_list_item* @nn_list_erase(%struct.nn_list* %0, %struct.nn_list_item* %1) #0 {
  %3 = alloca %struct.nn_list*, align 8
  %4 = alloca %struct.nn_list_item*, align 8
  %5 = alloca %struct.nn_list_item*, align 8
  store %struct.nn_list* %0, %struct.nn_list** %3, align 8
  store %struct.nn_list_item* %1, %struct.nn_list_item** %4, align 8
  %6 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %7 = call i32 @nn_list_item_isinlist(%struct.nn_list_item* %6)
  %8 = call i32 @nn_assert(i32 %7)
  %9 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %10 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %15 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %14, i32 0, i32 0
  %16 = load %struct.nn_list_item*, %struct.nn_list_item** %15, align 8
  %17 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %18 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.nn_list_item* %16, %struct.nn_list_item** %20, align 8
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %23 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %22, i32 0, i32 0
  %24 = load %struct.nn_list_item*, %struct.nn_list_item** %23, align 8
  %25 = load %struct.nn_list*, %struct.nn_list** %3, align 8
  %26 = getelementptr inbounds %struct.nn_list, %struct.nn_list* %25, i32 0, i32 1
  store %struct.nn_list_item* %24, %struct.nn_list_item** %26, align 8
  br label %27

27:                                               ; preds = %21, %13
  %28 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %29 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %28, i32 0, i32 0
  %30 = load %struct.nn_list_item*, %struct.nn_list_item** %29, align 8
  %31 = icmp ne %struct.nn_list_item* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %34 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %37 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %36, i32 0, i32 0
  %38 = load %struct.nn_list_item*, %struct.nn_list_item** %37, align 8
  %39 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %38, i32 0, i32 1
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %39, align 8
  br label %46

40:                                               ; preds = %27
  %41 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %42 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.nn_list*, %struct.nn_list** %3, align 8
  %45 = getelementptr inbounds %struct.nn_list, %struct.nn_list* %44, i32 0, i32 0
  store %struct.TYPE_2__* %43, %struct.TYPE_2__** %45, align 8
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %48 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %47, i32 0, i32 0
  %49 = load %struct.nn_list_item*, %struct.nn_list_item** %48, align 8
  store %struct.nn_list_item* %49, %struct.nn_list_item** %5, align 8
  %50 = load i8*, i8** @NN_LIST_NOTINLIST, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_2__*
  %52 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %53 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %52, i32 0, i32 1
  store %struct.TYPE_2__* %51, %struct.TYPE_2__** %53, align 8
  %54 = load i8*, i8** @NN_LIST_NOTINLIST, align 8
  %55 = bitcast i8* %54 to %struct.nn_list_item*
  %56 = load %struct.nn_list_item*, %struct.nn_list_item** %4, align 8
  %57 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %56, i32 0, i32 0
  store %struct.nn_list_item* %55, %struct.nn_list_item** %57, align 8
  %58 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  ret %struct.nn_list_item* %58
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_list_item_isinlist(%struct.nn_list_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
