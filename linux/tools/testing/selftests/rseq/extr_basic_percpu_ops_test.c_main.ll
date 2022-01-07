; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_basic_percpu_ops_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_basic_percpu_ops_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Error: rseq_register_current_thread(...) failed(%d): %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"spinlock\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"percpu_list\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Error: rseq_unregister_current_thread(...) failed(%d): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 (...) @rseq_register_current_thread()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* @errno, align 4
  %11 = load i32, i32* @errno, align 4
  %12 = call i8* @strerror(i32 %11)
  %13 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %12)
  br label %28

14:                                               ; preds = %2
  %15 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (...) @test_percpu_spinlock()
  %17 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 (...) @test_percpu_list()
  %19 = call i64 (...) @rseq_unregister_current_thread()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = call i8* @strerror(i32 %24)
  %26 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %23, i8* %25)
  br label %28

27:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %29

28:                                               ; preds = %21, %8
  store i32 -1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @rseq_register_current_thread(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @test_percpu_spinlock(...) #1

declare dso_local i32 @test_percpu_list(...) #1

declare dso_local i64 @rseq_unregister_current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
