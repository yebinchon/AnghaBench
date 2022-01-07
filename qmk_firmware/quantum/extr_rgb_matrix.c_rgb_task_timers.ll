; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_task_timers.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_rgb_matrix.c_rgb_task_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64* }

@rgb_counters_buffer = common dso_local global i32 0, align 4
@g_rgb_counters = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i64 0, align 8
@last_hit_buffer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rgb_task_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb_task_timers() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @rgb_counters_buffer, align 4
  %3 = call i64 @timer_elapsed32(i32 %2)
  store i64 %3, i64* %1, align 8
  %4 = call i32 (...) @timer_read32()
  store i32 %4, i32* @rgb_counters_buffer, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_rgb_counters, i32 0, i32 0), align 8
  %6 = load i64, i64* @UINT32_MAX, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = load i64, i64* @UINT32_MAX, align 8
  %10 = load i64, i64* %1, align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_rgb_counters, i32 0, i32 0), align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i64, i64* @UINT32_MAX, align 8
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_rgb_counters, i32 0, i32 0), align 8
  br label %20

16:                                               ; preds = %8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_rgb_counters, i32 0, i32 0), align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_rgb_counters, i32 0, i32 0), align 8
  br label %20

20:                                               ; preds = %16, %14
  br label %21

21:                                               ; preds = %20, %0
  ret void
}

declare dso_local i64 @timer_elapsed32(i32) #1

declare dso_local i32 @timer_read32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
