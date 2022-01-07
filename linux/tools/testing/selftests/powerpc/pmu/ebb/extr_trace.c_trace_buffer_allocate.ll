; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_buffer_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_trace.c_trace_buffer_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_buffer = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error: trace buffer too small\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.trace_buffer* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.trace_buffer* @trace_buffer_allocate(i32 %0) #0 {
  %2 = alloca %struct.trace_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_buffer*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 16
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.trace_buffer* null, %struct.trace_buffer** %2, align 8
  br label %37

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PROT_READ, align 4
  %14 = load i32, i32* @PROT_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MAP_ANONYMOUS, align 4
  %17 = load i32, i32* @MAP_PRIVATE, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.trace_buffer* @mmap(i32* null, i32 %12, i32 %15, i32 %18, i32 -1, i32 0)
  store %struct.trace_buffer* %19, %struct.trace_buffer** %4, align 8
  %20 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %21 = load %struct.trace_buffer*, %struct.trace_buffer** @MAP_FAILED, align 8
  %22 = icmp eq %struct.trace_buffer* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.trace_buffer* null, %struct.trace_buffer** %2, align 8
  br label %37

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.trace_buffer, %struct.trace_buffer* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.trace_buffer*, %struct.trace_buffer** %4, align 8
  store %struct.trace_buffer* %36, %struct.trace_buffer** %2, align 8
  br label %37

37:                                               ; preds = %25, %23, %8
  %38 = load %struct.trace_buffer*, %struct.trace_buffer** %2, align 8
  ret %struct.trace_buffer* %38
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.trace_buffer* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
