; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.h_packet_id_reap_test.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.h_packet_id_reap_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_id_rec = type { i64 }

@SEQ_REAP_INTERVAL = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_id_rec*)* @packet_id_reap_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_id_reap_test(%struct.packet_id_rec* %0) #0 {
  %2 = alloca %struct.packet_id_rec*, align 8
  store %struct.packet_id_rec* %0, %struct.packet_id_rec** %2, align 8
  %3 = load %struct.packet_id_rec*, %struct.packet_id_rec** %2, align 8
  %4 = getelementptr inbounds %struct.packet_id_rec, %struct.packet_id_rec* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SEQ_REAP_INTERVAL, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @now, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.packet_id_rec*, %struct.packet_id_rec** %2, align 8
  %12 = call i32 @packet_id_reap(%struct.packet_id_rec* %11)
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @packet_id_reap(%struct.packet_id_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
