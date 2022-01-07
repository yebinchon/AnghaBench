; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addrlist_port_match.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_addrlist_port_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openvpn_sockaddr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.addrinfo = type { i32, i64, %struct.addrinfo* }
%struct.sockaddr_in = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.openvpn_sockaddr*, %struct.addrinfo*)* @addrlist_port_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrlist_port_match(%struct.openvpn_sockaddr* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.openvpn_sockaddr*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  store %struct.openvpn_sockaddr* %0, %struct.openvpn_sockaddr** %4, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  %7 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %7, %struct.addrinfo** %6, align 8
  br label %8

8:                                                ; preds = %87, %2
  %9 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %10 = icmp ne %struct.addrinfo* %9, null
  br i1 %10, label %11, label %91

11:                                               ; preds = %8
  %12 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %13 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %84 [
    i32 129, label %17
    i32 128, label %52
  ]

17:                                               ; preds = %11
  %18 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %24 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.sockaddr_in*
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %28, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %22
  %38 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %39 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.sockaddr_in*
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %92

51:                                               ; preds = %37, %22, %17
  br label %86

52:                                               ; preds = %11
  %53 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %83

57:                                               ; preds = %52
  %58 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %59 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.sockaddr_in6*
  %66 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %65, i32 0, i32 1
  %67 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %61, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %57
  %70 = load %struct.openvpn_sockaddr*, %struct.openvpn_sockaddr** %4, align 8
  %71 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %76 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.sockaddr_in6*
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %74, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %92

83:                                               ; preds = %69, %57, %52
  br label %86

84:                                               ; preds = %11
  %85 = call i32 @ASSERT(i32 0)
  br label %86

86:                                               ; preds = %84, %83, %51
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %89 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %88, i32 0, i32 2
  %90 = load %struct.addrinfo*, %struct.addrinfo** %89, align 8
  store %struct.addrinfo* %90, %struct.addrinfo** %6, align 8
  br label %8

91:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %82, %50
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
