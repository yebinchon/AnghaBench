; ModuleID = '/home/carl/AnghaBench/netdata/health/extr_health.c_check_if_resumed_from_suspention.c'
source_filename = "/home/carl/AnghaBench/netdata/health/extr_health.c_check_if_resumed_from_suspention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_if_resumed_from_suspention.last_realtime = internal global i32 0, align 4
@check_if_resumed_from_suspention.last_monotonic = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_if_resumed_from_suspention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_if_resumed_from_suspention() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @now_realtime_usec()
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @now_monotonic_usec()
  store i32 %5, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @check_if_resumed_from_suspention.last_realtime, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = load i32, i32* @check_if_resumed_from_suspention.last_monotonic, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @check_if_resumed_from_suspention.last_realtime, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @check_if_resumed_from_suspention.last_monotonic, align 4
  %17 = sub nsw i32 %15, %16
  %18 = mul nsw i32 2, %17
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %11, %8, %0
  %22 = load i32, i32* %1, align 4
  store i32 %22, i32* @check_if_resumed_from_suspention.last_realtime, align 4
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* @check_if_resumed_from_suspention.last_monotonic, align 4
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @now_realtime_usec(...) #1

declare dso_local i32 @now_monotonic_usec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
