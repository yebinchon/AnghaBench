; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_phase2_socks_client.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_phase2_socks_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { %struct.TYPE_10__, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.signal_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket*, %struct.signal_info*)* @phase2_socks_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phase2_socks_client(%struct.link_socket* %0, %struct.signal_info* %1) #0 {
  %3 = alloca %struct.link_socket*, align 8
  %4 = alloca %struct.signal_info*, align 8
  store %struct.link_socket* %0, %struct.link_socket** %3, align 8
  store %struct.signal_info* %1, %struct.signal_info** %4, align 8
  %5 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %6 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %5, i32 0, i32 7
  %7 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %8 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %16 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @get_server_poll_remaining_time(i32 %17)
  %19 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %20 = call i32 @socket_connect(i32* %6, i32 %14, i32 %18, %struct.signal_info* %19)
  %21 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %22 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %95

26:                                               ; preds = %2
  %27 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %28 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %31 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %34 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %37 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %40 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %39, i32 0, i32 0
  %41 = call i32 @establish_socks_proxy_udpassoc(i32 %29, i32 %32, i32 %35, i32* %38, i64* %40)
  %42 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %43 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %95

47:                                               ; preds = %26
  %48 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %49 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %52 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %54 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %57 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %59 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @addr_zero_host(i32* %63)
  %65 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %66 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %90

72:                                               ; preds = %47
  %73 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %74 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @freeaddrinfo(i32* %78)
  %80 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %81 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %84, align 8
  %85 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %86 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %72, %47
  %91 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %92 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %93 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %92, i32 0, i32 0
  %94 = call i32 @resolve_remote(%struct.link_socket* %91, i32 1, i32* null, i64* %93)
  br label %95

95:                                               ; preds = %90, %46, %25
  ret void
}

declare dso_local i32 @socket_connect(i32*, i32, i32, %struct.signal_info*) #1

declare dso_local i32 @get_server_poll_remaining_time(i32) #1

declare dso_local i32 @establish_socks_proxy_udpassoc(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @addr_zero_host(i32*) #1

declare dso_local i32 @freeaddrinfo(i32*) #1

declare dso_local i32 @resolve_remote(%struct.link_socket*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
