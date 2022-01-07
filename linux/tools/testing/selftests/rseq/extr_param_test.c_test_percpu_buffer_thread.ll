; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_test_percpu_buffer_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_test_percpu_buffer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_buffer = type { i32 }
%struct.percpu_buffer_node = type { i32 }

@opt_disable_rseq = common dso_local global i32 0, align 4
@opt_reps = common dso_local global i64 0, align 8
@opt_yield = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"tid %d: number of rseq abort: %d, signals delivered: %u\0A\00", align 1
@nr_abort = common dso_local global i32 0, align 4
@signals_delivered = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_percpu_buffer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.percpu_buffer*, align 8
  %6 = alloca %struct.percpu_buffer_node*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.percpu_buffer*
  store %struct.percpu_buffer* %8, %struct.percpu_buffer** %5, align 8
  %9 = load i32, i32* @opt_disable_rseq, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = call i64 (...) @rseq_register_current_thread()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @abort() #3
  unreachable

16:                                               ; preds = %11, %1
  %17 = load i64, i64* @opt_reps, align 8
  store i64 %17, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %41, %16
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load %struct.percpu_buffer*, %struct.percpu_buffer** %5, align 8
  %24 = call %struct.percpu_buffer_node* @this_cpu_buffer_pop(%struct.percpu_buffer* %23, i32* null)
  store %struct.percpu_buffer_node* %24, %struct.percpu_buffer_node** %6, align 8
  %25 = load i64, i64* @opt_yield, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (...) @sched_yield()
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.percpu_buffer_node*, %struct.percpu_buffer_node** %6, align 8
  %31 = icmp ne %struct.percpu_buffer_node* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.percpu_buffer*, %struct.percpu_buffer** %5, align 8
  %34 = load %struct.percpu_buffer_node*, %struct.percpu_buffer_node** %6, align 8
  %35 = call i32 @this_cpu_buffer_push(%struct.percpu_buffer* %33, %struct.percpu_buffer_node* %34, i32* null)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = call i32 (...) @abort() #3
  unreachable

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %29
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %3, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %3, align 8
  br label %18

44:                                               ; preds = %18
  %45 = call i64 (...) @gettid()
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @nr_abort, align 4
  %48 = load i32, i32* @signals_delivered, align 4
  %49 = call i32 @printf_verbose(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @opt_disable_rseq, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = call i64 (...) @rseq_unregister_current_thread()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (...) @abort() #3
  unreachable

57:                                               ; preds = %52, %44
  ret i8* null
}

declare dso_local i64 @rseq_register_current_thread(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.percpu_buffer_node* @this_cpu_buffer_pop(%struct.percpu_buffer*, i32*) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @this_cpu_buffer_push(%struct.percpu_buffer*, %struct.percpu_buffer_node*, i32*) #1

declare dso_local i32 @printf_verbose(i8*, i32, i32, i32) #1

declare dso_local i64 @gettid(...) #1

declare dso_local i64 @rseq_unregister_current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
