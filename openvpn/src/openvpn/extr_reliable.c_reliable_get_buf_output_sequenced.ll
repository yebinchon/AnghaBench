; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_get_buf_output_sequenced.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_get_buf_output_sequenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.reliable = type { i32, i32, %struct.reliable_entry* }
%struct.reliable_entry = type { i32, i64 }
%struct.gc_arena = type { i32 }

@D_REL_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ACK output sequence broken: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer* @reliable_get_buf_output_sequenced(%struct.reliable* %0) #0 {
  %2 = alloca %struct.reliable*, align 8
  %3 = alloca %struct.gc_arena, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer*, align 8
  %8 = alloca %struct.reliable_entry*, align 8
  store %struct.reliable* %0, %struct.reliable** %2, align 8
  %9 = call i32 (...) @gc_new()
  %10 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.buffer* null, %struct.buffer** %7, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.reliable*, %struct.reliable** %2, align 8
  %14 = getelementptr inbounds %struct.reliable, %struct.reliable* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %11
  %18 = load %struct.reliable*, %struct.reliable** %2, align 8
  %19 = getelementptr inbounds %struct.reliable, %struct.reliable* %18, i32 0, i32 2
  %20 = load %struct.reliable_entry*, %struct.reliable_entry** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %20, i64 %22
  store %struct.reliable_entry* %23, %struct.reliable_entry** %8, align 8
  %24 = load %struct.reliable_entry*, %struct.reliable_entry** %8, align 8
  %25 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.reliable_entry*, %struct.reliable_entry** %8, align 8
  %33 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @reliable_pid_min(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31, %28
  store i32 1, i32* %6, align 4
  %39 = load %struct.reliable_entry*, %struct.reliable_entry** %8, align 8
  %40 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.reliable*, %struct.reliable** %2, align 8
  %52 = getelementptr inbounds %struct.reliable, %struct.reliable* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.reliable*, %struct.reliable** %2, align 8
  %56 = getelementptr inbounds %struct.reliable, %struct.reliable* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @reliable_pid_in_range1(i32 %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50, %47
  %61 = load %struct.reliable*, %struct.reliable** %2, align 8
  %62 = call %struct.buffer* @reliable_get_buf(%struct.reliable* %61)
  store %struct.buffer* %62, %struct.buffer** %7, align 8
  br label %68

63:                                               ; preds = %50
  %64 = load i32, i32* @D_REL_LOW, align 4
  %65 = load %struct.reliable*, %struct.reliable** %2, align 8
  %66 = call i32 @reliable_print_ids(%struct.reliable* %65, %struct.gc_arena* %3)
  %67 = call i32 @dmsg(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = call i32 @gc_free(%struct.gc_arena* %3)
  %70 = load %struct.buffer*, %struct.buffer** %7, align 8
  ret %struct.buffer* %70
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i64 @reliable_pid_min(i32, i32) #1

declare dso_local i64 @reliable_pid_in_range1(i32, i32, i32) #1

declare dso_local %struct.buffer* @reliable_get_buf(%struct.reliable*) #1

declare dso_local i32 @dmsg(i32, i8*, i32) #1

declare dso_local i32 @reliable_print_ids(%struct.reliable*, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
