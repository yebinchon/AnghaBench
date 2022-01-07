; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_merge.c_test_fence_merge_same_fence.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_merge.c_test_fence_merge_same_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Failure allocating timeline\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"allocFence\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failure allocating fence\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mergeFence\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Failure merging fence\0A\00", align 1
@FENCE_STATUS_SIGNALED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"fence signaled too early!\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"fence did not signal!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_fence_merge_same_fence() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @sw_sync_timeline_create()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @sw_sync_timeline_is_valid(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ASSERT(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @sw_sync_fence_create(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 5)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @sw_sync_fence_is_valid(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ASSERT(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @sync_merge(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @sw_sync_fence_is_valid(i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @ASSERT(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @FENCE_STATUS_SIGNALED, align 4
  %25 = call i32 @sync_fence_count_with_status(i32 %23, i32 %24)
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @sw_sync_timeline_inc(i32 %29, i32 5)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @FENCE_STATUS_SIGNALED, align 4
  %33 = call i32 @sync_fence_count_with_status(i32 %31, i32 %32)
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @sw_sync_fence_destroy(i32 %37)
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @sw_sync_fence_destroy(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @sw_sync_timeline_destroy(i32 %41)
  ret i32 0
}

declare dso_local i32 @sw_sync_timeline_create(...) #1

declare dso_local i32 @sw_sync_timeline_is_valid(i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i32 @sw_sync_fence_create(i32, i8*, i32) #1

declare dso_local i32 @sw_sync_fence_is_valid(i32) #1

declare dso_local i32 @sync_merge(i8*, i32, i32) #1

declare dso_local i32 @sync_fence_count_with_status(i32, i32) #1

declare dso_local i32 @sw_sync_timeline_inc(i32, i32) #1

declare dso_local i32 @sw_sync_fence_destroy(i32) #1

declare dso_local i32 @sw_sync_timeline_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
