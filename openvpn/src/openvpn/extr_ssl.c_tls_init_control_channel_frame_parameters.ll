; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_init_control_channel_frame_parameters.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls_init_control_channel_frame_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32, i64, i32 }

@CONTROL_SEND_ACK_MAX = common dso_local global i32 0, align 4
@SID_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame*, %struct.frame*)* @tls_init_control_channel_frame_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_init_control_channel_frame_parameters(%struct.frame* %0, %struct.frame* %1) #0 {
  %3 = alloca %struct.frame*, align 8
  %4 = alloca %struct.frame*, align 8
  store %struct.frame* %0, %struct.frame** %3, align 8
  store %struct.frame* %1, %struct.frame** %4, align 8
  %5 = load %struct.frame*, %struct.frame** %3, align 8
  %6 = getelementptr inbounds %struct.frame, %struct.frame* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.frame*, %struct.frame** %4, align 8
  %9 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.frame*, %struct.frame** %3, align 8
  %11 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.frame*, %struct.frame** %4, align 8
  %14 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.frame*, %struct.frame** %4, align 8
  %16 = call i32 @tls_adjust_frame_parameters(%struct.frame* %15)
  %17 = load %struct.frame*, %struct.frame** %4, align 8
  %18 = load i32, i32* @CONTROL_SEND_ACK_MAX, align 4
  %19 = call i32 @reliable_ack_adjust_frame_parameters(%struct.frame* %17, i32 %18)
  %20 = load %struct.frame*, %struct.frame** %4, align 8
  %21 = load i64, i64* @SID_SIZE, align 8
  %22 = add i64 %21, 4
  %23 = call i32 @frame_add_to_extra_frame(%struct.frame* %20, i64 %22)
  %24 = load %struct.frame*, %struct.frame** %4, align 8
  %25 = call i64 @TUN_LINK_DELTA(%struct.frame* %24)
  %26 = load %struct.frame*, %struct.frame** %4, align 8
  %27 = getelementptr inbounds %struct.frame, %struct.frame* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @min_int(i32 %28, i32 1250)
  %30 = icmp slt i64 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.frame*, %struct.frame** %4, align 8
  %34 = getelementptr inbounds %struct.frame, %struct.frame* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @min_int(i32 %35, i32 1250)
  %37 = load %struct.frame*, %struct.frame** %4, align 8
  %38 = call i64 @TUN_LINK_DELTA(%struct.frame* %37)
  %39 = sub nsw i64 %36, %38
  %40 = load %struct.frame*, %struct.frame** %4, align 8
  %41 = getelementptr inbounds %struct.frame, %struct.frame* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  ret void
}

declare dso_local i32 @tls_adjust_frame_parameters(%struct.frame*) #1

declare dso_local i32 @reliable_ack_adjust_frame_parameters(%struct.frame*, i32) #1

declare dso_local i32 @frame_add_to_extra_frame(%struct.frame*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @TUN_LINK_DELTA(%struct.frame*) #1

declare dso_local i64 @min_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
