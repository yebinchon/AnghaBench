; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_count_instructions.c_test_body.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_count_instructions.c_test_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@PERF_COUNT_HW_INSTRUCTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"instructions\00", align 1
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"cycles\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"perf_event_open\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Overhead of null loop: %llu instructions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_body() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x %struct.event], align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %5 = load i32, i32* @PERF_COUNT_HW_INSTRUCTIONS, align 4
  %6 = call i32 @setup_event(%struct.event* %4, i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 1
  %8 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  %9 = call i32 @setup_event(%struct.event* %7, i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %11 = call i64 @event_open(%struct.event* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %57

15:                                               ; preds = %0
  %16 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 1
  %17 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %18 = getelementptr inbounds %struct.event, %struct.event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @event_open_with_group(%struct.event* %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %57

24:                                               ; preds = %15
  %25 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %26 = call i32 @determine_overhead(%struct.event* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @do_count_loop(%struct.event* %29, i32 1000000, i32 %30, i32 1)
  %32 = call i32 @FAIL_IF(i32 %31)
  %33 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @do_count_loop(%struct.event* %33, i32 10000000, i32 %34, i32 1)
  %36 = call i32 @FAIL_IF(i32 %35)
  %37 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @do_count_loop(%struct.event* %37, i32 100000000, i32 %38, i32 1)
  %40 = call i32 @FAIL_IF(i32 %39)
  %41 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @do_count_loop(%struct.event* %41, i32 1000000000, i32 %42, i32 1)
  %44 = call i32 @FAIL_IF(i32 %43)
  %45 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @do_count_loop(%struct.event* %45, i32 -1179869184, i32 %46, i32 1)
  %48 = call i32 @FAIL_IF(i32 %47)
  %49 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @do_count_loop(%struct.event* %49, i32 -424509440, i32 %50, i32 1)
  %52 = call i32 @FAIL_IF(i32 %51)
  %53 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 0
  %54 = call i32 @event_close(%struct.event* %53)
  %55 = getelementptr inbounds [2 x %struct.event], [2 x %struct.event]* %2, i64 0, i64 1
  %56 = call i32 @event_close(%struct.event* %55)
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %24, %22, %13
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @setup_event(%struct.event*, i32, i8*) #1

declare dso_local i64 @event_open(%struct.event*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @event_open_with_group(%struct.event*, i32) #1

declare dso_local i32 @determine_overhead(%struct.event*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @do_count_loop(%struct.event*, i32, i32, i32) #1

declare dso_local i32 @event_close(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
