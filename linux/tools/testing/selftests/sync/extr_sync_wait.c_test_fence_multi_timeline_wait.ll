; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_wait.c_test_fence_multi_timeline_wait.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_wait.c_test_fence_multi_timeline_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"fenceA\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fenceB\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"fenceC\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mergeFence\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Failure merging fence from various timelines\0A\00", align 1
@FENCE_STATUS_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Fence signaled too early!\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Failure waiting on fence until timeout\0A\00", align 1
@FENCE_STATUS_SIGNALED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Fence did not signal properly!\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failure waiting on signaled fence\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_fence_multi_timeline_wait() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32 (...) @sw_sync_timeline_create()
  store i32 %12, i32* %1, align 4
  %13 = call i32 (...) @sw_sync_timeline_create()
  store i32 %13, i32* %2, align 4
  %14 = call i32 (...) @sw_sync_timeline_create()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @sw_sync_fence_create(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 5)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @sw_sync_fence_create(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 5)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @sw_sync_fence_create(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sync_merge(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @sync_merge(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sw_sync_fence_is_valid(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ASSERT(i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %33 = call i32 @sync_fence_count_with_status(i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 3
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @sync_wait(i32 %38, i32 0)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @sw_sync_timeline_inc(i32 %44, i32 5)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %48 = call i32 @sync_fence_count_with_status(i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @FENCE_STATUS_SIGNALED, align 4
  %51 = call i32 @sync_fence_count_with_status(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %0
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 1
  br label %57

57:                                               ; preds = %54, %0
  %58 = phi i1 [ false, %0 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @sw_sync_timeline_inc(i32 %61, i32 5)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %65 = call i32 @sync_fence_count_with_status(i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @FENCE_STATUS_SIGNALED, align 4
  %68 = call i32 @sync_fence_count_with_status(i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 2
  br label %74

74:                                               ; preds = %71, %57
  %75 = phi i1 [ false, %57 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @sw_sync_timeline_inc(i32 %78, i32 5)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %82 = call i32 @sync_fence_count_with_status(i32 %80, i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @FENCE_STATUS_SIGNALED, align 4
  %85 = call i32 @sync_fence_count_with_status(i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %74
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 3
  br label %91

91:                                               ; preds = %88, %74
  %92 = phi i1 [ false, %74 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @sync_wait(i32 %95, i32 100)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ASSERT(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @sw_sync_fence_destroy(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @sw_sync_fence_destroy(i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @sw_sync_fence_destroy(i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @sw_sync_fence_destroy(i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @sw_sync_timeline_destroy(i32 %109)
  %111 = load i32, i32* %2, align 4
  %112 = call i32 @sw_sync_timeline_destroy(i32 %111)
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @sw_sync_timeline_destroy(i32 %113)
  ret i32 0
}

declare dso_local i32 @sw_sync_timeline_create(...) #1

declare dso_local i32 @sw_sync_fence_create(i32, i8*, i32) #1

declare dso_local i32 @sync_merge(i8*, i32, i32) #1

declare dso_local i32 @sw_sync_fence_is_valid(i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i32 @sync_fence_count_with_status(i32, i32) #1

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
