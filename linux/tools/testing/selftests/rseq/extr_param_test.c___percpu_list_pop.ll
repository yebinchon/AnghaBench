; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c___percpu_list_pop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c___percpu_list_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_list_node = type { %struct.percpu_list_node* }
%struct.percpu_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.percpu_list_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.percpu_list_node* @__percpu_list_pop(%struct.percpu_list* %0, i32 %1) #0 {
  %3 = alloca %struct.percpu_list_node*, align 8
  %4 = alloca %struct.percpu_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.percpu_list_node*, align 8
  store %struct.percpu_list* %0, %struct.percpu_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.percpu_list*, %struct.percpu_list** %4, align 8
  %8 = getelementptr inbounds %struct.percpu_list, %struct.percpu_list* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.percpu_list_node*, %struct.percpu_list_node** %13, align 8
  store %struct.percpu_list_node* %14, %struct.percpu_list_node** %6, align 8
  %15 = load %struct.percpu_list_node*, %struct.percpu_list_node** %6, align 8
  %16 = icmp ne %struct.percpu_list_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store %struct.percpu_list_node* null, %struct.percpu_list_node** %3, align 8
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.percpu_list_node*, %struct.percpu_list_node** %6, align 8
  %20 = getelementptr inbounds %struct.percpu_list_node, %struct.percpu_list_node* %19, i32 0, i32 0
  %21 = load %struct.percpu_list_node*, %struct.percpu_list_node** %20, align 8
  %22 = load %struct.percpu_list*, %struct.percpu_list** %4, align 8
  %23 = getelementptr inbounds %struct.percpu_list, %struct.percpu_list* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.percpu_list_node* %21, %struct.percpu_list_node** %28, align 8
  %29 = load %struct.percpu_list_node*, %struct.percpu_list_node** %6, align 8
  store %struct.percpu_list_node* %29, %struct.percpu_list_node** %3, align 8
  br label %30

30:                                               ; preds = %18, %17
  %31 = load %struct.percpu_list_node*, %struct.percpu_list_node** %3, align 8
  ret %struct.percpu_list_node* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
