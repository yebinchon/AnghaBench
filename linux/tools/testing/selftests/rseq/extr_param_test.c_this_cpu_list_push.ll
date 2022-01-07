; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_this_cpu_list_push.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_this_cpu_list_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_list = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.percpu_list_node = type { %struct.percpu_list_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @this_cpu_list_push(%struct.percpu_list* %0, %struct.percpu_list_node* %1, i32* %2) #0 {
  %4 = alloca %struct.percpu_list*, align 8
  %5 = alloca %struct.percpu_list_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.percpu_list* %0, %struct.percpu_list** %4, align 8
  store %struct.percpu_list_node* %1, %struct.percpu_list_node** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %12

12:                                               ; preds = %49, %3
  %13 = call i32 (...) @rseq_cpu_start()
  store i32 %13, i32* %7, align 4
  %14 = load %struct.percpu_list*, %struct.percpu_list** %4, align 8
  %15 = getelementptr inbounds %struct.percpu_list, %struct.percpu_list* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @RSEQ_READ_ONCE(i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.percpu_list_node*, %struct.percpu_list_node** %5, align 8
  %24 = ptrtoint %struct.percpu_list_node* %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load %struct.percpu_list*, %struct.percpu_list** %4, align 8
  %26 = getelementptr inbounds %struct.percpu_list, %struct.percpu_list* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast i32* %31 to i64*
  store i64* %32, i64** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = inttoptr i64 %33 to %struct.percpu_list_node*
  %35 = load %struct.percpu_list_node*, %struct.percpu_list_node** %5, align 8
  %36 = getelementptr inbounds %struct.percpu_list_node, %struct.percpu_list_node* %35, i32 0, i32 0
  store %struct.percpu_list_node* %34, %struct.percpu_list_node** %36, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @rseq_cmpeqv_storev(i64* %37, i64 %38, i64 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @rseq_likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %12
  br label %50

49:                                               ; preds = %12
  br label %12

50:                                               ; preds = %48
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  ret void
}

declare dso_local i32 @rseq_cpu_start(...) #1

declare dso_local i64 @RSEQ_READ_ONCE(i32) #1

declare dso_local i32 @rseq_cmpeqv_storev(i64*, i64, i64, i32) #1

declare dso_local i64 @rseq_likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
