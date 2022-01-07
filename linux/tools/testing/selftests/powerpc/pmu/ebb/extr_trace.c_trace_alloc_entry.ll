; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_alloc_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_alloc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_entry = type { i32 }
%struct.trace_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trace_entry* (%struct.trace_buffer*, i32)* @trace_alloc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trace_entry* @trace_alloc_entry(%struct.trace_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.trace_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_entry*, align 8
  store %struct.trace_buffer* %0, %struct.trace_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.trace_buffer*, %struct.trace_buffer** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = add i64 4, %8
  %10 = trunc i64 %9 to i32
  %11 = call %struct.trace_entry* @trace_alloc(%struct.trace_buffer* %6, i32 %10)
  store %struct.trace_entry* %11, %struct.trace_entry** %5, align 8
  %12 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %13 = icmp ne %struct.trace_entry* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %17 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  ret %struct.trace_entry* %19
}

declare dso_local %struct.trace_entry* @trace_alloc(%struct.trace_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
