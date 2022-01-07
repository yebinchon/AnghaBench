; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_event.h_event_free.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_event.h_event_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.event_set.0*)* }
%struct.event_set.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_set*)* @event_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_free(%struct.event_set* %0) #0 {
  %2 = alloca %struct.event_set*, align 8
  store %struct.event_set* %0, %struct.event_set** %2, align 8
  %3 = load %struct.event_set*, %struct.event_set** %2, align 8
  %4 = icmp ne %struct.event_set* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.event_set*, %struct.event_set** %2, align 8
  %7 = getelementptr inbounds %struct.event_set, %struct.event_set* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.event_set.0*)*, i32 (%struct.event_set.0*)** %8, align 8
  %10 = load %struct.event_set*, %struct.event_set** %2, align 8
  %11 = bitcast %struct.event_set* %10 to %struct.event_set.0*
  %12 = call i32 %9(%struct.event_set.0* %11)
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
