; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_basic_percpu_ops_test.c_test_percpu_list_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_basic_percpu_ops_test.c_test_percpu_list_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.percpu_list = type { i32 }
%struct.percpu_list_node = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Error: rseq_register_current_thread(...) failed(%d): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Error: rseq_unregister_current_thread(...) failed(%d): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_percpu_list_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.percpu_list*, align 8
  %5 = alloca %struct.percpu_list_node*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.percpu_list*
  store %struct.percpu_list* %7, %struct.percpu_list** %4, align 8
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
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 100000
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load %struct.percpu_list*, %struct.percpu_list** %4, align 8
  %23 = call %struct.percpu_list_node* @this_cpu_list_pop(%struct.percpu_list* %22, i32* null)
  store %struct.percpu_list_node* %23, %struct.percpu_list_node** %5, align 8
  %24 = call i32 (...) @sched_yield()
  %25 = load %struct.percpu_list_node*, %struct.percpu_list_node** %5, align 8
  %26 = icmp ne %struct.percpu_list_node* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.percpu_list*, %struct.percpu_list** %4, align 8
  %29 = load %struct.percpu_list_node*, %struct.percpu_list_node** %5, align 8
  %30 = call i32 @this_cpu_list_push(%struct.percpu_list* %28, %struct.percpu_list_node* %29, i32* null)
  br label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %18

35:                                               ; preds = %18
  %36 = call i64 (...) @rseq_unregister_current_thread()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i8* @strerror(i32 %41)
  %43 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* %42)
  %44 = call i32 (...) @abort() #3
  unreachable

45:                                               ; preds = %35
  ret i8* null
}

declare dso_local i64 @rseq_register_current_thread(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.percpu_list_node* @this_cpu_list_pop(%struct.percpu_list*, i32*) #1

declare dso_local i32 @sched_yield(...) #1

declare dso_local i32 @this_cpu_list_push(%struct.percpu_list*, %struct.percpu_list_node*, i32*) #1

declare dso_local i64 @rseq_unregister_current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
