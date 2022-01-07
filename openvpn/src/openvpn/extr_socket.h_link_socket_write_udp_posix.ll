; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_write_udp_posix.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_write_udp_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.buffer = type { i32 }
%struct.link_socket_actual = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr = type { i32 }

@SF_USE_IP_PKTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.link_socket*, %struct.buffer*, %struct.link_socket_actual*)* @link_socket_write_udp_posix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @link_socket_write_udp_posix(%struct.link_socket* %0, %struct.buffer* %1, %struct.link_socket_actual* %2) #0 {
  %4 = alloca %struct.link_socket*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca %struct.link_socket_actual*, align 8
  store %struct.link_socket* %0, %struct.link_socket** %4, align 8
  store %struct.buffer* %1, %struct.buffer** %5, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %6, align 8
  %7 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %8 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.buffer*, %struct.buffer** %5, align 8
  %11 = call i32 @BPTR(%struct.buffer* %10)
  %12 = load %struct.buffer*, %struct.buffer** %5, align 8
  %13 = call i32 @BLEN(%struct.buffer* %12)
  %14 = load %struct.link_socket_actual*, %struct.link_socket_actual** %6, align 8
  %15 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = bitcast %struct.TYPE_8__* %17 to %struct.sockaddr*
  %19 = load %struct.link_socket_actual*, %struct.link_socket_actual** %6, align 8
  %20 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @af_addr_size(i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = call i64 @sendto(i32 %9, i32 %11, i32 %13, i32 0, %struct.sockaddr* %18, i32 %26)
  ret i64 %27
}

declare dso_local i64 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @BPTR(%struct.buffer*) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i64 @af_addr_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
