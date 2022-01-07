; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_signal.c_pg_queue_signal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_signal.c_pg_queue_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pgwin32_signal_event = common dso_local global i32* null, align 8
@PG_SIGNAL_COUNT = common dso_local global i32 0, align 4
@pg_signal_crit_sec = common dso_local global i32 0, align 4
@pg_signal_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_queue_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @pgwin32_signal_event, align 8
  %4 = icmp ne i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @Assert(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @PG_SIGNAL_COUNT, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  br label %23

14:                                               ; preds = %10
  %15 = call i32 @EnterCriticalSection(i32* @pg_signal_crit_sec)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @sigmask(i32 %16)
  %18 = load i32, i32* @pg_signal_queue, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @pg_signal_queue, align 4
  %20 = call i32 @LeaveCriticalSection(i32* @pg_signal_crit_sec)
  %21 = load i32*, i32** @pgwin32_signal_event, align 8
  %22 = call i32 @SetEvent(i32* %21)
  br label %23

23:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @SetEvent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
