; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_log_counter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_log_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_buffer = type { i32 }
%struct.trace_entry = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@TRACE_TYPE_COUNTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_log_counter(%struct.trace_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca i32*, align 8
  store %struct.trace_buffer* %0, %struct.trace_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %9 = call %struct.trace_entry* @trace_alloc_entry(%struct.trace_buffer* %8, i32 4)
  store %struct.trace_entry* %9, %struct.trace_entry** %6, align 8
  %10 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %11 = icmp ne %struct.trace_entry* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* @TRACE_TYPE_COUNTER, align 4
  %17 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %18 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %20 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.trace_entry* @trace_alloc_entry(%struct.trace_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
