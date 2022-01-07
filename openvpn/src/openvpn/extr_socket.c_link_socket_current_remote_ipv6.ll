; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_current_remote_ipv6.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_current_remote_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.link_socket_info = type { %struct.link_socket_addr* }
%struct.link_socket_addr = type { %struct.TYPE_7__*, %struct.TYPE_12__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.in6_addr }
%struct.TYPE_8__ = type { i64 }
%struct.sockaddr_in6 = type { %struct.in6_addr }

@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in6_addr* @link_socket_current_remote_ipv6(%struct.link_socket_info* %0) #0 {
  %2 = alloca %struct.in6_addr*, align 8
  %3 = alloca %struct.link_socket_info*, align 8
  %4 = alloca %struct.link_socket_addr*, align 8
  store %struct.link_socket_info* %0, %struct.link_socket_info** %3, align 8
  %5 = load %struct.link_socket_info*, %struct.link_socket_info** %3, align 8
  %6 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %5, i32 0, i32 0
  %7 = load %struct.link_socket_addr*, %struct.link_socket_addr** %6, align 8
  store %struct.link_socket_addr* %7, %struct.link_socket_addr** %4, align 8
  %8 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %9 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET6, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.in6_addr* null, %struct.in6_addr** %2, align 8
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %20 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %19, i32 0, i32 1
  %21 = call i64 @link_socket_actual_defined(%struct.TYPE_12__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %25 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store %struct.in6_addr* %29, %struct.in6_addr** %2, align 8
  br label %44

30:                                               ; preds = %18
  %31 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %32 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.link_socket_addr*, %struct.link_socket_addr** %4, align 8
  %37 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.sockaddr_in6*
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  store %struct.in6_addr* %42, %struct.in6_addr** %2, align 8
  br label %44

43:                                               ; preds = %30
  store %struct.in6_addr* null, %struct.in6_addr** %2, align 8
  br label %44

44:                                               ; preds = %43, %35, %23, %17
  %45 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  ret %struct.in6_addr* %45
}

declare dso_local i64 @link_socket_actual_defined(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
