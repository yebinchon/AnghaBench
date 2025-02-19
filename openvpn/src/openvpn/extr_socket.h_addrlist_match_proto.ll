; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addrlist_match_proto.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addrlist_match_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_sockaddr = type { i32 }
%struct.addrinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.openvpn_sockaddr*, %struct.addrinfo*, i32)* @addrlist_match_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrlist_match_proto(%struct.openvpn_sockaddr* %0, %struct.addrinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.openvpn_sockaddr*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.openvpn_sockaddr* %0, %struct.openvpn_sockaddr** %4, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @link_socket_proto_connection_oriented(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %12 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %13 = call i32 @addrlist_match(%struct.openvpn_sockaddr* %11, %struct.addrinfo* %12)
  br label %18

14:                                               ; preds = %3
  %15 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %16 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %17 = call i32 @addrlist_port_match(%struct.openvpn_sockaddr* %15, %struct.addrinfo* %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %13, %10 ], [ %17, %14 ]
  ret i32 %19
}

declare dso_local i64 @link_socket_proto_connection_oriented(i32) #1

declare dso_local i32 @addrlist_match(%struct.openvpn_sockaddr*, %struct.addrinfo*) #1

declare dso_local i32 @addrlist_port_match(%struct.openvpn_sockaddr*, %struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
