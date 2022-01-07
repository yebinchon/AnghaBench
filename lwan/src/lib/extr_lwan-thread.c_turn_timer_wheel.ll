; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_turn_timer_wheel.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_turn_timer_wheel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeout_queue = type { i32 }
%struct.lwan_thread = type { i32 }
%struct.timespec = type { i32, i32 }

@monotonic_clock_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not get monotonic time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeout_queue*, %struct.lwan_thread*, i32)* @turn_timer_wheel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turn_timer_wheel(%struct.timeout_queue* %0, %struct.lwan_thread* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeout_queue*, align 8
  %6 = alloca %struct.lwan_thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.timespec, align 4
  store %struct.timeout_queue* %0, %struct.timeout_queue** %5, align 8
  store %struct.lwan_thread* %1, %struct.lwan_thread** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @monotonic_clock_id, align 4
  %11 = call i64 @clock_gettime(i32 %10, %struct.timespec* %9)
  %12 = icmp slt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @UNLIKELY(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @lwan_status_critical(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.lwan_thread*, %struct.lwan_thread** %6, align 8
  %20 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 1000000
  %28 = add nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = call i32 @timeouts_update(i32 %21, i64 %29)
  %31 = load %struct.lwan_thread*, %struct.lwan_thread** %6, align 8
  %32 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @timeouts_timeout(i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @UNLIKELY(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  br label %63

41:                                               ; preds = %18
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.timeout_queue*, %struct.timeout_queue** %5, align 8
  %46 = load %struct.lwan_thread*, %struct.lwan_thread** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @process_pending_timers(%struct.timeout_queue* %45, %struct.lwan_thread* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %63

51:                                               ; preds = %44
  %52 = load %struct.lwan_thread*, %struct.lwan_thread** %6, align 8
  %53 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @timeouts_timeout(i32 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i64, i64* %8, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %58, %50, %40
  store i32 -1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @lwan_status_critical(i8*) #1

declare dso_local i32 @timeouts_update(i32, i64) #1

declare dso_local i64 @timeouts_timeout(i32) #1

declare dso_local i32 @process_pending_timers(%struct.timeout_queue*, %struct.lwan_thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
