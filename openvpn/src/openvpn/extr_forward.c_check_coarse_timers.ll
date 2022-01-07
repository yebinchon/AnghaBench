; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_check_coarse_timers.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_check_coarse_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @check_coarse_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_coarse_timers(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i64, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %4 = load i64, i64* @now, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %5, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.context*, %struct.context** %2, align 8
  %13 = call i32 @check_coarse_timers_dowork(%struct.context* %12)
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.context*, %struct.context** %2, align 8
  %16 = load %struct.context*, %struct.context** %2, align 8
  %17 = getelementptr inbounds %struct.context, %struct.context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub nsw i64 %19, %20
  %22 = call i32 @context_reschedule_sec(%struct.context* %15, i64 %21)
  br label %23

23:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @check_coarse_timers_dowork(%struct.context*) #1

declare dso_local i32 @context_reschedule_sec(%struct.context*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
