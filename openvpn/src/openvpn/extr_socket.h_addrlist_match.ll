; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addrlist_match.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addrlist_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_sockaddr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.addrinfo = type { i64, %struct.addrinfo* }
%struct.sockaddr_in = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.openvpn_sockaddr*, %struct.addrinfo*)* @addrlist_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrlist_match(%struct.openvpn_sockaddr* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.openvpn_sockaddr*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  store %struct.openvpn_sockaddr* %0, %struct.openvpn_sockaddr** %4, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  %7 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %7, %struct.addrinfo** %6, align 8
  br label %8

8:                                                ; preds = %51, %2
  %9 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %10 = icmp ne %struct.addrinfo* %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  %12 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %13 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %48 [
    i32 129, label %17
    i32 128, label %34
  ]

17:                                               ; preds = %11
  %18 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %19 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.sockaddr_in*
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %23, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %56

33:                                               ; preds = %17
  br label %50

34:                                               ; preds = %11
  %35 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %36 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.sockaddr_in6*
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %42, i32 0, i32 0
  %44 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %38, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %56

47:                                               ; preds = %34
  br label %50

48:                                               ; preds = %11
  %49 = call i32 @ASSERT(i32 0)
  br label %50

50:                                               ; preds = %48, %47, %33
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 1
  %54 = load %struct.addrinfo*, %struct.addrinfo** %53, align 8
  store %struct.addrinfo* %54, %struct.addrinfo** %6, align 8
  br label %8

55:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %46, %32
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
