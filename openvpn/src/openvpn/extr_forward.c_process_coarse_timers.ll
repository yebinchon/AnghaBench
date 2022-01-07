; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_coarse_timers.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_process_coarse_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @process_coarse_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_coarse_timers(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = call i32 @check_packet_id_persist_flush(%struct.context* %3)
  %5 = load %struct.context*, %struct.context** %2, align 8
  %6 = call i32 @check_status_file(%struct.context* %5)
  %7 = load %struct.context*, %struct.context** %2, align 8
  %8 = call i32 @check_connection_established(%struct.context* %7)
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = call i32 @check_add_routes(%struct.context* %9)
  %11 = load %struct.context*, %struct.context** %2, align 8
  %12 = call i32 @check_inactivity_timeout(%struct.context* %11)
  %13 = load %struct.context*, %struct.context** %2, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.context*, %struct.context** %2, align 8
  %22 = call i32 @check_ping_restart(%struct.context* %21)
  %23 = load %struct.context*, %struct.context** %2, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %33

30:                                               ; preds = %20
  %31 = load %struct.context*, %struct.context** %2, align 8
  %32 = call i32 @check_ping_send(%struct.context* %31)
  br label %33

33:                                               ; preds = %30, %29, %19
  ret void
}

declare dso_local i32 @check_packet_id_persist_flush(%struct.context*) #1

declare dso_local i32 @check_status_file(%struct.context*) #1

declare dso_local i32 @check_connection_established(%struct.context*) #1

declare dso_local i32 @check_add_routes(%struct.context*) #1

declare dso_local i32 @check_inactivity_timeout(%struct.context*) #1

declare dso_local i32 @check_ping_restart(%struct.context*) #1

declare dso_local i32 @check_ping_send(%struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
