; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_this_cpu_buffer_pop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_this_cpu_buffer_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_buffer_node = type { i32 }
%struct.percpu_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.percpu_buffer_node* @this_cpu_buffer_pop(%struct.percpu_buffer* %0, i32* %1) #0 {
  %3 = alloca %struct.percpu_buffer*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.percpu_buffer_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.percpu_buffer* %0, %struct.percpu_buffer** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %11

11:                                               ; preds = %76, %2
  %12 = call i32 (...) @rseq_cpu_start()
  store i32 %12, i32* %6, align 4
  %13 = load %struct.percpu_buffer*, %struct.percpu_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.percpu_buffer, %struct.percpu_buffer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.percpu_buffer_node* @RSEQ_READ_ONCE(i32 %20)
  %22 = ptrtoint %struct.percpu_buffer_node* %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  store %struct.percpu_buffer_node* null, %struct.percpu_buffer_node** %5, align 8
  br label %77

26:                                               ; preds = %11
  %27 = load %struct.percpu_buffer*, %struct.percpu_buffer** %3, align 8
  %28 = getelementptr inbounds %struct.percpu_buffer, %struct.percpu_buffer* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub nsw i64 %35, 1
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.percpu_buffer_node* @RSEQ_READ_ONCE(i32 %38)
  store %struct.percpu_buffer_node* %39, %struct.percpu_buffer_node** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* %8, align 8
  %42 = load %struct.percpu_buffer*, %struct.percpu_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.percpu_buffer, %struct.percpu_buffer* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to i64*
  store i64* %49, i64** %7, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.percpu_buffer*, %struct.percpu_buffer** %3, align 8
  %53 = getelementptr inbounds %struct.percpu_buffer, %struct.percpu_buffer* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub nsw i64 %60, 1
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = bitcast i32* %62 to i64*
  %64 = load %struct.percpu_buffer_node*, %struct.percpu_buffer_node** %5, align 8
  %65 = ptrtoint %struct.percpu_buffer_node* %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @rseq_cmpeqv_cmpeqv_storev(i64* %50, i64 %51, i64* %63, i64 %65, i64 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @rseq_likely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %26
  br label %77

76:                                               ; preds = %26
  br label %11

77:                                               ; preds = %75, %25
  %78 = load i32*, i32** %4, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = load i32*, i32** %4, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.percpu_buffer_node*, %struct.percpu_buffer_node** %5, align 8
  ret %struct.percpu_buffer_node* %84
}

declare dso_local i32 @rseq_cpu_start(...) #1

declare dso_local %struct.percpu_buffer_node* @RSEQ_READ_ONCE(i32) #1

declare dso_local i32 @rseq_cmpeqv_cmpeqv_storev(i64*, i64, i64*, i64, i64, i32) #1

declare dso_local i64 @rseq_likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
