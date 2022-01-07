; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_test_percpu_spinlock_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_test_percpu_spinlock_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock_thread_test_data = type { i64, i64, %struct.spinlock_test_data* }
%struct.spinlock_test_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@opt_disable_rseq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"tid %d: count %lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"tid %d: number of rseq abort: %d, signals delivered: %u\0A\00", align 1
@nr_abort = common dso_local global i32 0, align 4
@signals_delivered = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_percpu_spinlock_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spinlock_thread_test_data*, align 8
  %4 = alloca %struct.spinlock_test_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.spinlock_thread_test_data*
  store %struct.spinlock_thread_test_data* %9, %struct.spinlock_thread_test_data** %3, align 8
  %10 = load %struct.spinlock_thread_test_data*, %struct.spinlock_thread_test_data** %3, align 8
  %11 = getelementptr inbounds %struct.spinlock_thread_test_data, %struct.spinlock_thread_test_data* %10, i32 0, i32 2
  %12 = load %struct.spinlock_test_data*, %struct.spinlock_test_data** %11, align 8
  store %struct.spinlock_test_data* %12, %struct.spinlock_test_data** %4, align 8
  %13 = load i32, i32* @opt_disable_rseq, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.spinlock_thread_test_data*, %struct.spinlock_thread_test_data** %3, align 8
  %17 = getelementptr inbounds %struct.spinlock_thread_test_data, %struct.spinlock_thread_test_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = call i64 (...) @rseq_register_current_thread()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @abort() #3
  unreachable

25:                                               ; preds = %20, %15, %1
  %26 = load %struct.spinlock_thread_test_data*, %struct.spinlock_thread_test_data** %3, align 8
  %27 = getelementptr inbounds %struct.spinlock_thread_test_data, %struct.spinlock_thread_test_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %65, %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = call i32 (...) @rseq_cpu_start()
  store i32 %34, i32* %7, align 4
  %35 = load %struct.spinlock_test_data*, %struct.spinlock_test_data** %4, align 8
  %36 = getelementptr inbounds %struct.spinlock_test_data, %struct.spinlock_test_data* %35, i32 0, i32 0
  %37 = call i32 @rseq_this_cpu_lock(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.spinlock_test_data*, %struct.spinlock_test_data** %4, align 8
  %39 = getelementptr inbounds %struct.spinlock_test_data, %struct.spinlock_test_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.spinlock_test_data*, %struct.spinlock_test_data** %4, align 8
  %48 = getelementptr inbounds %struct.spinlock_test_data, %struct.spinlock_test_data* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @rseq_percpu_unlock(i32* %48, i32 %49)
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %33
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sdiv i64 %55, 10
  %57 = srem i64 %54, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = call i64 (...) @gettid()
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* %5, align 8
  %63 = call i32 (i8*, i32, i64, ...) @printf_verbose(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %53, %33
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %5, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %29

68:                                               ; preds = %29
  %69 = call i64 (...) @gettid()
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @nr_abort, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* @signals_delivered, align 4
  %74 = call i32 (i8*, i32, i64, ...) @printf_verbose(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %70, i64 %72, i32 %73)
  %75 = load i32, i32* @opt_disable_rseq, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %68
  %78 = load %struct.spinlock_thread_test_data*, %struct.spinlock_thread_test_data** %3, align 8
  %79 = getelementptr inbounds %struct.spinlock_thread_test_data, %struct.spinlock_thread_test_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = call i64 (...) @rseq_unregister_current_thread()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 (...) @abort() #3
  unreachable

87:                                               ; preds = %82, %77, %68
  ret i8* null
}

declare dso_local i64 @rseq_register_current_thread(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @rseq_cpu_start(...) #1

declare dso_local i32 @rseq_this_cpu_lock(i32*) #1

declare dso_local i32 @rseq_percpu_unlock(i32*, i32) #1

declare dso_local i32 @printf_verbose(i8*, i32, i64, ...) #1

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
