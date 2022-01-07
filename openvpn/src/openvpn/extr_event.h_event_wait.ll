; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_event.h_event_wait.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_event.h_event_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.event_set.0*, %struct.timeval*, %struct.event_set_return*, i32)* }
%struct.event_set.0 = type opaque
%struct.timeval = type { i32 }
%struct.event_set_return = type { i32 }

@PERF_IO_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_set*, %struct.timeval*, %struct.event_set_return*, i32)* @event_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_wait(%struct.event_set* %0, %struct.timeval* %1, %struct.event_set_return* %2, i32 %3) #0 {
  %5 = alloca %struct.event_set*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.event_set_return*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.event_set* %0, %struct.event_set** %5, align 8
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store %struct.event_set_return* %2, %struct.event_set_return** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @PERF_IO_WAIT, align 4
  %11 = call i32 @perf_push(i32 %10)
  %12 = load %struct.event_set*, %struct.event_set** %5, align 8
  %13 = getelementptr inbounds %struct.event_set, %struct.event_set* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.event_set.0*, %struct.timeval*, %struct.event_set_return*, i32)*, i32 (%struct.event_set.0*, %struct.timeval*, %struct.event_set_return*, i32)** %14, align 8
  %16 = load %struct.event_set*, %struct.event_set** %5, align 8
  %17 = bitcast %struct.event_set* %16 to %struct.event_set.0*
  %18 = load %struct.timeval*, %struct.timeval** %6, align 8
  %19 = load %struct.event_set_return*, %struct.event_set_return** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 %15(%struct.event_set.0* %17, %struct.timeval* %18, %struct.event_set_return* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = call i32 (...) @perf_pop()
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i32 @perf_push(i32) #1

declare dso_local i32 @perf_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
