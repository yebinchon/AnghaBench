; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_util.c_set_realtime_priority.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_util.c_set_realtime_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@SYS_gettid = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_realtime_priority(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.sched_param, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @SYS_gettid, align 4
  %6 = call i64 @syscall(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = call i32 @memset(%struct.sched_param* %4, i32 0, i32 4)
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %4, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* @SCHED_FIFO, align 4
  %12 = call i32 @sched_setscheduler(i64 %10, i32 %11, %struct.sched_param* %4)
  ret i32 %12
}

declare dso_local i64 @syscall(i32) #1

declare dso_local i32 @memset(%struct.sched_param*, i32, i32) #1

declare dso_local i32 @sched_setscheduler(i64, i32, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
