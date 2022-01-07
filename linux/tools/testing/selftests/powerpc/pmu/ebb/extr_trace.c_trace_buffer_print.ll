; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_buffer_print.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_buffer_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_buffer = type { i8*, i8*, i64, i32 }
%struct.trace_entry = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Trace buffer dump:\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  address  %p \0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  tail     %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"  size     %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"  overflow %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"  Content:\0A\00", align 1
@BASE_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_buffer_print(%struct.trace_buffer* %0) #0 {
  %2 = alloca %struct.trace_buffer*, align 8
  %3 = alloca %struct.trace_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.trace_buffer* %0, %struct.trace_buffer** %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.trace_buffer*, %struct.trace_buffer** %2, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.trace_buffer* %8)
  %10 = load %struct.trace_buffer*, %struct.trace_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %14 = load %struct.trace_buffer*, %struct.trace_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = load %struct.trace_buffer*, %struct.trace_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %26 = load %struct.trace_buffer*, %struct.trace_buffer** %2, align 8
  %27 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  store i32 0, i32* %4, align 4
  %29 = load i32, i32* @BASE_PREFIX, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %43, %1
  %31 = load %struct.trace_buffer*, %struct.trace_buffer** %2, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @trace_check_bounds(%struct.trace_buffer* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.trace_buffer*, %struct.trace_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ult i8* %36, %39
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  br i1 %42, label %43, label %59

43:                                               ; preds = %41
  %44 = load i8*, i8** %6, align 8
  %45 = bitcast i8* %44 to %struct.trace_entry*
  store %struct.trace_entry* %45, %struct.trace_entry** %3, align 8
  %46 = load %struct.trace_entry*, %struct.trace_entry** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @trace_print_entry(%struct.trace_entry* %46, i32 %47, i32* %5)
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load %struct.trace_entry*, %struct.trace_entry** %3, align 8
  %52 = bitcast %struct.trace_entry* %51 to i8*
  %53 = getelementptr i8, i8* %52, i64 4
  %54 = load %struct.trace_entry*, %struct.trace_entry** %3, align 8
  %55 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %53, i64 %57
  store i8* %58, i8** %6, align 8
  br label %30

59:                                               ; preds = %41
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @trace_check_bounds(%struct.trace_buffer*, i8*) #1

declare dso_local i32 @trace_print_entry(%struct.trace_entry*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
