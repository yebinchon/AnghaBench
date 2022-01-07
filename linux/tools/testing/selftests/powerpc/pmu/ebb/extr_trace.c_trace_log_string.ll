; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_log_string.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_log_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_buffer = type { i32 }
%struct.trace_entry = type { i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@TRACE_TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_log_string(%struct.trace_buffer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.trace_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.trace_buffer* %0, %struct.trace_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, 1
  %14 = call %struct.trace_entry* @trace_alloc_entry(%struct.trace_buffer* %11, i32 %13)
  store %struct.trace_entry* %14, %struct.trace_entry** %6, align 8
  %15 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %16 = icmp ne %struct.trace_entry* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOSPC, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load i32, i32* @TRACE_TYPE_STRING, align 4
  %22 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %23 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.trace_entry*, %struct.trace_entry** %6, align 8
  %25 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @memcpy(i8* %28, i8* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  store i8 0, i8* %36, align 1
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %20, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.trace_entry* @trace_alloc_entry(%struct.trace_buffer*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
