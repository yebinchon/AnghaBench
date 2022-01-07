; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_test_percpu_memcpy_buffer_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_test_percpu_memcpy_buffer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_memcpy_buffer = type { i32 }
%struct.percpu_memcpy_buffer_node = type { i32 }

@opt_disable_rseq = common dso_local global i32 0, align 4
@opt_reps = common dso_local global i64 0, align 8
@opt_yield = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"tid %d: number of rseq abort: %d, signals delivered: %u\0A\00", align 1
@nr_abort = common dso_local global i32 0, align 4
@signals_delivered = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_percpu_memcpy_buffer_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.percpu_memcpy_buffer*, align 8
  %6 = alloca %struct.percpu_memcpy_buffer_node, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.percpu_memcpy_buffer*
  store %struct.percpu_memcpy_buffer* %9, %struct.percpu_memcpy_buffer** %5, align 8
  %10 = load i32, i32* @opt_disable_rseq, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = call i64 (...) @rseq_register_current_thread()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @abort() #3
  unreachable

17:                                               ; preds = %12, %1
  %18 = load i64, i64* @opt_reps, align 8
  store i64 %18, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %43, %17
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.percpu_memcpy_buffer*, %struct.percpu_memcpy_buffer** %5, align 8
  %25 = call i32 @this_cpu_memcpy_buffer_pop(%struct.percpu_memcpy_buffer* %24, %struct.percpu_memcpy_buffer_node* %6, i32* null)
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* @opt_yield, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @sched_yield()
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.percpu_memcpy_buffer*, %struct.percpu_memcpy_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.percpu_memcpy_buffer_node, %struct.percpu_memcpy_buffer_node* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @this_cpu_memcpy_buffer_push(%struct.percpu_memcpy_buffer* %34, i32 %36, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 (...) @abort() #3
  unreachable

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %3, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %19

46:                                               ; preds = %19
  %47 = call i64 (...) @gettid()
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @nr_abort, align 4
  %50 = load i32, i32* @signals_delivered, align 4
  %51 = call i32 @printf_verbose(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @opt_disable_rseq, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = call i64 (...) @rseq_unregister_current_thread()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (...) @abort() #3
  unreachable

59:                                               ; preds = %54, %46
  ret i8* null
}

declare dso_local i64 @rseq_register_current_thread(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @this_cpu_memcpy_buffer_pop(%struct.percpu_memcpy_buffer*, %struct.percpu_memcpy_buffer_node*, i32*) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @this_cpu_memcpy_buffer_push(%struct.percpu_memcpy_buffer*, i32, i32*) #1

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
