; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"[RUN]\09Testing sync framework\0A\00", align 1
@test_alloc_timeline = common dso_local global i32 0, align 4
@test_alloc_fence = common dso_local global i32 0, align 4
@test_alloc_fence_negative = common dso_local global i32 0, align 4
@test_fence_one_timeline_wait = common dso_local global i32 0, align 4
@test_fence_one_timeline_merge = common dso_local global i32 0, align 4
@test_fence_merge_same_fence = common dso_local global i32 0, align 4
@test_fence_multi_timeline_wait = common dso_local global i32 0, align 4
@test_stress_two_threads_shared_timeline = common dso_local global i32 0, align 4
@test_consumer_stress_multi_producer_single_consumer = common dso_local global i32 0, align 4
@test_merge_stress_random_merge = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%d out of %d sync tests failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 (...) @ksft_print_header()
  %4 = call i32 @ksft_set_plan(i32 10)
  %5 = call i32 (...) @sync_api_supported()
  %6 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @test_alloc_timeline, align 4
  %8 = call i32 @RUN_TEST(i32 %7)
  %9 = load i32, i32* @test_alloc_fence, align 4
  %10 = call i32 @RUN_TEST(i32 %9)
  %11 = load i32, i32* @test_alloc_fence_negative, align 4
  %12 = call i32 @RUN_TEST(i32 %11)
  %13 = load i32, i32* @test_fence_one_timeline_wait, align 4
  %14 = call i32 @RUN_TEST(i32 %13)
  %15 = load i32, i32* @test_fence_one_timeline_merge, align 4
  %16 = call i32 @RUN_TEST(i32 %15)
  %17 = load i32, i32* @test_fence_merge_same_fence, align 4
  %18 = call i32 @RUN_TEST(i32 %17)
  %19 = load i32, i32* @test_fence_multi_timeline_wait, align 4
  %20 = call i32 @RUN_TEST(i32 %19)
  %21 = load i32, i32* @test_stress_two_threads_shared_timeline, align 4
  %22 = call i32 @RUN_TEST(i32 %21)
  %23 = load i32, i32* @test_consumer_stress_multi_producer_single_consumer, align 4
  %24 = call i32 @RUN_TEST(i32 %23)
  %25 = load i32, i32* @test_merge_stress_random_merge, align 4
  %26 = call i32 @RUN_TEST(i32 %25)
  %27 = call i32 (...) @ksft_get_fail_cnt()
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %0
  %31 = load i32, i32* %2, align 4
  %32 = call i32 (...) @ksft_test_num()
  %33 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %0
  %35 = call i32 (...) @ksft_exit_pass()
  ret i32 %35
}

declare dso_local i32 @ksft_print_header(...) #1

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @sync_api_supported(...) #1

declare dso_local i32 @ksft_print_msg(i8*) #1

declare dso_local i32 @RUN_TEST(i32) #1

declare dso_local i32 @ksft_get_fail_cnt(...) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i32, i32) #1

declare dso_local i32 @ksft_test_num(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
