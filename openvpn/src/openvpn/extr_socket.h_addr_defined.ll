; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addr_defined.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addr_defined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_sockaddr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.openvpn_sockaddr*)* @addr_defined to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_defined(%struct.openvpn_sockaddr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.openvpn_sockaddr*, align 8
  store %struct.openvpn_sockaddr* %0, %struct.openvpn_sockaddr** %3, align 8
  %4 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %3, align 8
  %5 = icmp ne %struct.openvpn_sockaddr* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

7:                                                ; preds = %1
  %8 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %3, align 8
  %9 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %31 [
    i32 129, label %13
    i32 128, label %22
  ]

13:                                               ; preds = %7
  %14 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %3, align 8
  %15 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  br label %32

22:                                               ; preds = %7
  %23 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %3, align 8
  %24 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %22, %13, %6
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
