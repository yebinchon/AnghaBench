; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_persist_load_obj.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_persist_load_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_id_persist = type { i32, i64 }
%struct.packet_id = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_id_persist_load_obj(%struct.packet_id_persist* %0, %struct.packet_id* %1) #0 {
  %3 = alloca %struct.packet_id_persist*, align 8
  %4 = alloca %struct.packet_id*, align 8
  store %struct.packet_id_persist* %0, %struct.packet_id_persist** %3, align 8
  store %struct.packet_id* %1, %struct.packet_id** %4, align 8
  %5 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %6 = icmp ne %struct.packet_id_persist* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = load %struct.packet_id*, %struct.packet_id** %4, align 8
  %9 = icmp ne %struct.packet_id* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %12 = call i64 @packet_id_persist_enabled(%struct.packet_id_persist* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %16 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %21 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.packet_id*, %struct.packet_id** %4, align 8
  %24 = getelementptr inbounds %struct.packet_id, %struct.packet_id* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 %22, i64* %25, align 8
  %26 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %27 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.packet_id*, %struct.packet_id** %4, align 8
  %30 = getelementptr inbounds %struct.packet_id, %struct.packet_id* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  br label %32

32:                                               ; preds = %19, %14, %10, %7, %2
  ret void
}

declare dso_local i64 @packet_id_persist_enabled(%struct.packet_id_persist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
