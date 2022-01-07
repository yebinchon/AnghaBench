; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_basic_percpu_ops_test.c_test_percpu_spinlock_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_basic_percpu_ops_test.c_test_percpu_spinlock_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spinlock_test_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Error: rseq_register_current_thread(...) failed(%d): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Error: rseq_unregister_current_thread(...) failed(%d): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_percpu_spinlock_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spinlock_test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.spinlock_test_data*
  store %struct.spinlock_test_data* %7, %struct.spinlock_test_data** %3, align 8
  %8 = call i64 (...) @rseq_register_current_thread()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = load i32, i32* @errno, align 4
  %14 = call i8* @strerror(i32 %13)
  %15 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %14)
  %16 = call i32 (...) @abort() #3
  unreachable

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.spinlock_test_data*, %struct.spinlock_test_data** %3, align 8
  %21 = getelementptr inbounds %struct.spinlock_test_data, %struct.spinlock_test_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.spinlock_test_data*, %struct.spinlock_test_data** %3, align 8
  %26 = getelementptr inbounds %struct.spinlock_test_data, %struct.spinlock_test_data* %25, i32 0, i32 1
  %27 = call i32 @rseq_this_cpu_lock(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.spinlock_test_data*, %struct.spinlock_test_data** %3, align 8
  %29 = getelementptr inbounds %struct.spinlock_test_data, %struct.spinlock_test_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.spinlock_test_data*, %struct.spinlock_test_data** %3, align 8
  %38 = getelementptr inbounds %struct.spinlock_test_data, %struct.spinlock_test_data* %37, i32 0, i32 1
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @rseq_percpu_unlock(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %18

44:                                               ; preds = %18
  %45 = call i64 (...) @rseq_unregister_current_thread()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i8* @strerror(i32 %50)
  %52 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %49, i8* %51)
  %53 = call i32 (...) @abort() #3
  unreachable

54:                                               ; preds = %44
  ret i8* null
}

declare dso_local i64 @rseq_register_current_thread(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @rseq_this_cpu_lock(i32*) #1

declare dso_local i32 @rseq_percpu_unlock(i32*, i32) #1

declare dso_local i64 @rseq_unregister_current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
