; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_parallelism.c_test_stress_two_threads_shared_timeline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_parallelism.c_test_stress_two_threads_shared_timeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failure allocating timeline\0A\00", align 1
@test_data_two_threads = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@test_stress_two_threads_shared_timeline_thread = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Counter has unexpected value\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_stress_two_threads_shared_timeline() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @sw_sync_timeline_create()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @sw_sync_timeline_is_valid(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ASSERT(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 65536, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 1), align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 2), align 4
  %11 = load i64, i64* @test_stress_two_threads_shared_timeline_thread, align 8
  %12 = inttoptr i64 %11 to i8* (i8*)*
  %13 = call i32 @pthread_create(i32* %1, i32* null, i8* (i8*)* %12, i8* null)
  %14 = load i64, i64* @test_stress_two_threads_shared_timeline_thread, align 8
  %15 = inttoptr i64 %14 to i8* (i8*)*
  %16 = call i32 @pthread_create(i32* %2, i32* null, i8* (i8*)* %15, i8* inttoptr (i64 1 to i8*))
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @pthread_join(i32 %17, i32* null)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @pthread_join(i32 %19, i32* null)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 1), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 0), align 4
  %23 = mul nsw i32 %22, 2
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @sw_sync_timeline_destroy(i32 %27)
  ret i32 0
}

declare dso_local i32 @sw_sync_timeline_create(...) #1

declare dso_local i32 @sw_sync_timeline_is_valid(i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @sw_sync_timeline_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
