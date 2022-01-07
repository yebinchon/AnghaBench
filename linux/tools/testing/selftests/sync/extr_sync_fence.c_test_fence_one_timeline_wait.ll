; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_fence.c_test_fence_one_timeline_wait.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_fence.c_test_fence_one_timeline_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Failure allocating timeline\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"allocFence\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failure allocating fence\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failure waiting on fence until timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failure advancing timeline\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failure signaling the fence\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Failure waiting on fence\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Failure going further\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Failure waiting ahead\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_fence_one_timeline_wait() #0 {
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
  %17 = call i32 @sync_wait(i32 %16, i32 0)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sw_sync_timeline_inc(i32 %22, i32 1)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @sync_wait(i32 %28, i32 0)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @sw_sync_timeline_inc(i32 %34, i32 4)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @sync_wait(i32 %40, i32 0)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @sw_sync_timeline_inc(i32 %46, i32 10)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @sync_wait(i32 %52, i32 0)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp sgt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @sw_sync_fence_destroy(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @sw_sync_timeline_destroy(i32 %60)
  ret i32 0
}

declare dso_local i32 @sw_sync_timeline_create(...) #1

declare dso_local i32 @sw_sync_timeline_is_valid(i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i32 @sw_sync_fence_create(i32, i8*, i32) #1

declare dso_local i32 @sw_sync_fence_is_valid(i32) #1

declare dso_local i32 @sync_wait(i32, i32) #1

declare dso_local i32 @sw_sync_timeline_inc(i32, i32) #1

declare dso_local i32 @sw_sync_fence_destroy(i32) #1

declare dso_local i32 @sw_sync_timeline_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
