; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_count_instructions.c_do_count_loop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_count_instructions.c_do_count_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PR_TASK_PERF_EVENTS_ENABLE = common dso_local global i32 0, align 4
@PR_TASK_PERF_EVENTS_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Looped for %llu instructions, overhead %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Expected %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Actual   %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Delta    %lld, %f%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event*, i32, i32, i32)* @do_count_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_count_loop(%struct.event* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store %struct.event* %0, %struct.event** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @PR_TASK_PERF_EVENTS_ENABLE, align 4
  %14 = call i32 @prctl(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 5
  %17 = call i32 @thirty_two_instruction_loop(i32 %16)
  %18 = load i32, i32* @PR_TASK_PERF_EVENTS_DISABLE, align 4
  %19 = call i32 @prctl(i32 %18)
  %20 = load %struct.event*, %struct.event** %6, align 8
  %21 = getelementptr inbounds %struct.event, %struct.event* %20, i64 0
  %22 = call i32 @event_read(%struct.event* %21)
  %23 = load %struct.event*, %struct.event** %6, align 8
  %24 = getelementptr inbounds %struct.event, %struct.event* %23, i64 1
  %25 = call i32 @event_read(%struct.event* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.event*, %struct.event** %6, align 8
  %30 = getelementptr inbounds %struct.event, %struct.event* %29, i64 0
  %31 = getelementptr inbounds %struct.event, %struct.event* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sitofp i32 %36 to double
  %38 = load %struct.event*, %struct.event** %6, align 8
  %39 = getelementptr inbounds %struct.event, %struct.event* %38, i64 0
  %40 = getelementptr inbounds %struct.event, %struct.event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %37, %43
  %45 = fmul double %44, 1.000000e+02
  store double %45, double* %12, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %4
  %49 = load %struct.event*, %struct.event** %6, align 8
  %50 = getelementptr inbounds %struct.event, %struct.event* %49, i64 0
  %51 = call i32 @event_report(%struct.event* %50)
  %52 = load %struct.event*, %struct.event** %6, align 8
  %53 = getelementptr inbounds %struct.event, %struct.event* %52, i64 1
  %54 = call i32 @event_report(%struct.event* %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.event*, %struct.event** %6, align 8
  %61 = getelementptr inbounds %struct.event, %struct.event* %60, i64 0
  %62 = getelementptr inbounds %struct.event, %struct.event* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load double, double* %12, align 8
  %68 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %66, double %67)
  br label %69

69:                                               ; preds = %48, %4
  %70 = load %struct.event*, %struct.event** %6, align 8
  %71 = getelementptr inbounds %struct.event, %struct.event* %70, i64 0
  %72 = call i32 @event_reset(%struct.event* %71)
  %73 = load %struct.event*, %struct.event** %6, align 8
  %74 = getelementptr inbounds %struct.event, %struct.event* %73, i64 1
  %75 = call i32 @event_reset(%struct.event* %74)
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %69
  %82 = load i32, i32* %10, align 4
  %83 = mul nsw i32 %82, 1000000
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.event*, %struct.event** %6, align 8
  %86 = getelementptr inbounds %struct.event, %struct.event* %85, i64 0
  %87 = getelementptr inbounds %struct.event, %struct.event* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %84, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i32 -1, i32* %5, align 4
  br label %94

93:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @prctl(i32) #1

declare dso_local i32 @thirty_two_instruction_loop(i32) #1

declare dso_local i32 @event_read(%struct.event*) #1

declare dso_local i32 @event_report(%struct.event*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @event_reset(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
