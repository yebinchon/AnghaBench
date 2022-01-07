; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_send_timeout.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_reliable.c_reliable_send_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reliable = type { i32, %struct.reliable_entry* }
%struct.reliable_entry = type { i64, i64 }
%struct.gc_arena = type { i32 }

@BIG_TIMEOUT = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@D_REL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ACK reliable_send_timeout %d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @reliable_send_timeout(%struct.reliable* %0) #0 {
  %2 = alloca %struct.reliable*, align 8
  %3 = alloca %struct.gc_arena, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.reliable_entry*, align 8
  store %struct.reliable* %0, %struct.reliable** %2, align 8
  %8 = call i32 (...) @gc_new()
  %9 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i64, i64* @BIG_TIMEOUT, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* @now, align 8
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.reliable*, %struct.reliable** %2, align 8
  %15 = getelementptr inbounds %struct.reliable, %struct.reliable* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load %struct.reliable*, %struct.reliable** %2, align 8
  %20 = getelementptr inbounds %struct.reliable, %struct.reliable* %19, i32 0, i32 1
  %21 = load %struct.reliable_entry*, %struct.reliable_entry** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %21, i64 %23
  store %struct.reliable_entry* %24, %struct.reliable_entry** %7, align 8
  %25 = load %struct.reliable_entry*, %struct.reliable_entry** %7, align 8
  %26 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %18
  %30 = load %struct.reliable_entry*, %struct.reliable_entry** %7, align 8
  %31 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i64 0, i64* %4, align 8
  br label %49

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.reliable_entry*, %struct.reliable_entry** %7, align 8
  %39 = getelementptr inbounds %struct.reliable_entry, %struct.reliable_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub nsw i64 %40, %41
  %43 = call i64 @min_int(i64 %37, i64 %42)
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %18
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %12

49:                                               ; preds = %35, %12
  %50 = load i32, i32* @D_REL_DEBUG, align 4
  %51 = load i64, i64* %4, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.reliable*, %struct.reliable** %2, align 8
  %54 = call i32 @reliable_print_ids(%struct.reliable* %53, %struct.gc_arena* %3)
  %55 = call i32 @dmsg(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %54)
  %56 = call i32 @gc_free(%struct.gc_arena* %3)
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i64 @min_int(i64, i64) #1

declare dso_local i32 @dmsg(i32, i8*, i32, i32) #1

declare dso_local i32 @reliable_print_ids(%struct.reliable*, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
