; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addr_zero_host.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addr_zero_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_sockaddr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.openvpn_sockaddr*)* @addr_zero_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addr_zero_host(%struct.openvpn_sockaddr* %0) #0 {
  %2 = alloca %struct.openvpn_sockaddr*, align 8
  store %struct.openvpn_sockaddr* %0, %struct.openvpn_sockaddr** %2, align 8
  %3 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %2, align 8
  %4 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %20 [
    i32 129, label %8
    i32 128, label %14
  ]

8:                                                ; preds = %1
  %9 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %2, align 8
  %10 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %2, align 8
  %16 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = call i32 @memset(i32* %18, i32 0, i32 4)
  br label %20

20:                                               ; preds = %1, %14, %8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
