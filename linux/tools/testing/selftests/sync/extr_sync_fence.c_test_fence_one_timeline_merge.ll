; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_fence.c_test_fence_one_timeline_merge.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_fence.c_test_fence_one_timeline_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"allocFence\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failure allocating fences\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mergeFence\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failure merging fences\0A\00", align 1
@FENCE_STATUS_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"a has too many active fences!\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"b has too many active fences!\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"c has too many active fences!\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"d has too many active fences!\0A\00", align 1
@FENCE_STATUS_SIGNALED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"a did not signal!\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"d signaled too early!\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"b did not signal!\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"c did not signal!\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"d did not signal!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_fence_one_timeline_merge() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @sw_sync_timeline_create()
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @sw_sync_fence_create(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @sw_sync_fence_create(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @sw_sync_fence_create(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @sw_sync_fence_is_valid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @sw_sync_fence_is_valid(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @sw_sync_fence_is_valid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %17, %0
  %26 = phi i1 [ false, %17 ], [ false, %0 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ASSERT(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @sync_merge(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @sync_merge(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sw_sync_fence_is_valid(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ASSERT(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %42 = call i32 @sync_fence_count_with_status(i32 %40, i32 %41)
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %48 = call i32 @sync_fence_count_with_status(i32 %46, i32 %47)
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %54 = call i32 @sync_fence_count_with_status(i32 %52, i32 %53)
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %60 = call i32 @sync_fence_count_with_status(i32 %58, i32 %59)
  %61 = icmp eq i32 %60, 1
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @sw_sync_timeline_inc(i32 %64, i32 1)
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @FENCE_STATUS_SIGNALED, align 4
  %68 = call i32 @sync_fence_count_with_status(i32 %66, i32 %67)
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %74 = call i32 @sync_fence_count_with_status(i32 %72, i32 %73)
  %75 = icmp eq i32 %74, 1
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @sw_sync_timeline_inc(i32 %78, i32 1)
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @FENCE_STATUS_SIGNALED, align 4
  %82 = call i32 @sync_fence_count_with_status(i32 %80, i32 %81)
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %88 = call i32 @sync_fence_count_with_status(i32 %86, i32 %87)
  %89 = icmp eq i32 %88, 1
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @sw_sync_timeline_inc(i32 %92, i32 1)
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @FENCE_STATUS_SIGNALED, align 4
  %96 = call i32 @sync_fence_count_with_status(i32 %94, i32 %95)
  %97 = icmp eq i32 %96, 1
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @FENCE_STATUS_ACTIVE, align 4
  %102 = call i32 @sync_fence_count_with_status(i32 %100, i32 %101)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %25
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @FENCE_STATUS_SIGNALED, align 4
  %107 = call i32 @sync_fence_count_with_status(i32 %105, i32 %106)
  %108 = icmp eq i32 %107, 1
  br label %109

109:                                              ; preds = %104, %25
  %110 = phi i1 [ false, %25 ], [ %108, %104 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT(i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @sw_sync_fence_destroy(i32 %113)
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @sw_sync_fence_destroy(i32 %115)
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @sw_sync_fence_destroy(i32 %117)
  %119 = load i32, i32* %1, align 4
  %120 = call i32 @sw_sync_fence_destroy(i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @sw_sync_timeline_destroy(i32 %121)
  ret i32 0
}

declare dso_local i32 @sw_sync_timeline_create(...) #1

declare dso_local i32 @sw_sync_fence_create(i32, i8*, i32) #1

declare dso_local i32 @sw_sync_fence_is_valid(i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

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
