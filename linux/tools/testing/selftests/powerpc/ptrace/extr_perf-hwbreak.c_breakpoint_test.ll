; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_perf-hwbreak.c_breakpoint_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_perf-hwbreak.c_breakpoint_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i32, i32 }

@PERF_TYPE_BREAKPOINT = common dso_local global i32 0, align 4
@HW_BREAKPOINT_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @breakpoint_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @breakpoint_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event_attr, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @memset(%struct.perf_event_attr* %4, i32 0, i32 20)
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* @PERF_TYPE_BREAKPOINT, align 4
  %9 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 4
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = ptrtoint %struct.perf_event_attr* %4 to i32
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, -2048
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %4, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = call i32 @sys_perf_event_open(%struct.perf_event_attr* %4, i32 0, i32 -1, i32 -1, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @close(i32 %24)
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i32 @sys_perf_event_open(%struct.perf_event_attr*, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
