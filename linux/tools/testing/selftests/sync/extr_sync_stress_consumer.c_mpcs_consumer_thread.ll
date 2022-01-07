; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_consumer.c_mpcs_consumer_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_consumer.c_mpcs_consumer_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32 }

@test_data_mpsc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failure merging fences\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Producers did not increment as expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Counter value mismatch!\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failure releasing producer threads\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mpcs_consumer_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpcs_consumer_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 0), align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 1), align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 2), align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 3), align 8
  store i32 %14, i32* %10, align 4
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %83, %0
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %15
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @sw_sync_fence_create(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %45, %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @sw_sync_fence_create(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @sync_merge(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @sw_sync_fence_destroy(i32 %40)
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @sw_sync_fence_destroy(i32 %42)
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @sw_sync_fence_is_valid(i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ASSERT(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  %54 = srem i32 %53, 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i32, i32* %1, align 4
  %58 = call i64 @sync_wait(i32 %57, i32 -1)
  %59 = icmp sgt i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %68

62:                                               ; preds = %48
  %63 = load i32, i32* %1, align 4
  %64 = call i64 @busy_wait_on_fence(i32 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_mpsc, i32 0, i32 4), align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %70, %71
  %73 = icmp eq i32 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @sw_sync_timeline_inc(i32 %76, i32 1)
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @sw_sync_fence_destroy(i32 %81)
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %15

86:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @sw_sync_fence_create(i32, i8*, i32) #1

declare dso_local i32 @sync_merge(i8*, i32, i32) #1

declare dso_local i32 @sw_sync_fence_destroy(i32) #1

declare dso_local i32 @sw_sync_fence_is_valid(i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i64 @sync_wait(i32, i32) #1

declare dso_local i64 @busy_wait_on_fence(i32) #1

declare dso_local i64 @sw_sync_timeline_inc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
