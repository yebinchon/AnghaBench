; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_read_udp_posix.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_read_udp_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.buffer = type { i32 }
%struct.link_socket_actual = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PROTO_UDP = common dso_local global i64 0, align 8
@SF_USE_IP_PKTINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @link_socket_read_udp_posix(%struct.link_socket* %0, %struct.buffer* %1, %struct.link_socket_actual* %2) #0 {
  %4 = alloca %struct.link_socket*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca %struct.link_socket_actual*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.link_socket* %0, %struct.link_socket** %4, align 8
  store %struct.buffer* %1, %struct.buffer** %5, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %6, align 8
  store i64 4, i64* %7, align 8
  %9 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %10 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @af_addr_size(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.link_socket_actual*, %struct.link_socket_actual** %6, align 8
  %15 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %14, i32 0, i32 0
  %16 = call i32 @addr_zero_host(%struct.TYPE_6__* %15)
  %17 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %18 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.buffer*, %struct.buffer** %5, align 8
  %21 = call i32 @BPTR(%struct.buffer* %20)
  %22 = load %struct.buffer*, %struct.buffer** %5, align 8
  %23 = call i32 @buf_forward_capacity(%struct.buffer* %22)
  %24 = load %struct.link_socket_actual*, %struct.link_socket_actual** %6, align 8
  %25 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @recvfrom(i32 %19, i32 %21, i32 %23, i32 0, i32* %27, i64* %7)
  %29 = load %struct.buffer*, %struct.buffer** %5, align 8
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.buffer*, %struct.buffer** %5, align 8
  %32 = getelementptr inbounds %struct.buffer, %struct.buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %3
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @bad_address_length(i64 %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %38, %35, %3
  %47 = load %struct.buffer*, %struct.buffer** %5, align 8
  %48 = getelementptr inbounds %struct.buffer, %struct.buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  ret i32 %49
}

declare dso_local i64 @af_addr_size(i32) #1

declare dso_local i32 @addr_zero_host(%struct.TYPE_6__*) #1

declare dso_local i32 @recvfrom(i32, i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @BPTR(%struct.buffer*) #1

declare dso_local i32 @buf_forward_capacity(%struct.buffer*) #1

declare dso_local i32 @bad_address_length(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
