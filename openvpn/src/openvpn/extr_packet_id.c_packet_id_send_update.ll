; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_send_update.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_send_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_id_send = type { i64, i64 }

@now = common dso_local global i64 0, align 8
@PACKET_ID_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_id_send*, i32)* @packet_id_send_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_id_send_update(%struct.packet_id_send* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packet_id_send*, align 8
  %5 = alloca i32, align 4
  store %struct.packet_id_send* %0, %struct.packet_id_send** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.packet_id_send*, %struct.packet_id_send** %4, align 8
  %7 = getelementptr inbounds %struct.packet_id_send, %struct.packet_id_send* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @now, align 8
  %12 = load %struct.packet_id_send*, %struct.packet_id_send** %4, align 8
  %13 = getelementptr inbounds %struct.packet_id_send, %struct.packet_id_send* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.packet_id_send*, %struct.packet_id_send** %4, align 8
  %16 = getelementptr inbounds %struct.packet_id_send, %struct.packet_id_send* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PACKET_ID_MAX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64, i64* @now, align 8
  %25 = load %struct.packet_id_send*, %struct.packet_id_send** %4, align 8
  %26 = getelementptr inbounds %struct.packet_id_send, %struct.packet_id_send* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %20
  store i32 0, i32* %3, align 4
  br label %41

30:                                               ; preds = %23
  %31 = load i64, i64* @now, align 8
  %32 = load %struct.packet_id_send*, %struct.packet_id_send** %4, align 8
  %33 = getelementptr inbounds %struct.packet_id_send, %struct.packet_id_send* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.packet_id_send*, %struct.packet_id_send** %4, align 8
  %35 = getelementptr inbounds %struct.packet_id_send, %struct.packet_id_send* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %14
  %37 = load %struct.packet_id_send*, %struct.packet_id_send** %4, align 8
  %38 = getelementptr inbounds %struct.packet_id_send, %struct.packet_id_send* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
