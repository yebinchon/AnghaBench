; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c___percpu_buffer_pop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c___percpu_buffer_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_buffer_node = type { i32 }
%struct.percpu_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.percpu_buffer_node** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.percpu_buffer_node* @__percpu_buffer_pop(%struct.percpu_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.percpu_buffer_node*, align 8
  %4 = alloca %struct.percpu_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.percpu_buffer_node*, align 8
  %7 = alloca i64, align 8
  store %struct.percpu_buffer* %0, %struct.percpu_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.percpu_buffer*, %struct.percpu_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.percpu_buffer, %struct.percpu_buffer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.percpu_buffer_node* null, %struct.percpu_buffer_node** %3, align 8
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.percpu_buffer*, %struct.percpu_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.percpu_buffer, %struct.percpu_buffer* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.percpu_buffer_node**, %struct.percpu_buffer_node*** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %28, 1
  %30 = getelementptr inbounds %struct.percpu_buffer_node*, %struct.percpu_buffer_node** %27, i64 %29
  %31 = load %struct.percpu_buffer_node*, %struct.percpu_buffer_node** %30, align 8
  store %struct.percpu_buffer_node* %31, %struct.percpu_buffer_node** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub nsw i64 %32, 1
  %34 = load %struct.percpu_buffer*, %struct.percpu_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.percpu_buffer, %struct.percpu_buffer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %33, i64* %40, align 8
  %41 = load %struct.percpu_buffer_node*, %struct.percpu_buffer_node** %6, align 8
  store %struct.percpu_buffer_node* %41, %struct.percpu_buffer_node** %3, align 8
  br label %42

42:                                               ; preds = %19, %18
  %43 = load %struct.percpu_buffer_node*, %struct.percpu_buffer_node** %3, align 8
  ret %struct.percpu_buffer_node* %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
