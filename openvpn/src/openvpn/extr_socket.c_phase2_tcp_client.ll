; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_phase2_tcp_client.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_phase2_tcp_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { %struct.TYPE_7__, i32, i32, i32, i64, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.signal_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket*, %struct.signal_info*)* @phase2_tcp_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phase2_tcp_client(%struct.link_socket* %0, %struct.signal_info* %1) #0 {
  %3 = alloca %struct.link_socket*, align 8
  %4 = alloca %struct.signal_info*, align 8
  %5 = alloca i32, align 4
  store %struct.link_socket* %0, %struct.link_socket** %3, align 8
  store %struct.signal_info* %1, %struct.signal_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %95, %2
  %7 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %8 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %7, i32 0, i32 1
  %9 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %10 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %18 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_server_poll_remaining_time(i32 %19)
  %21 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %22 = call i32 @socket_connect(i32* %8, i32 %16, i32 %20, %struct.signal_info* %21)
  %23 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %24 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  br label %98

28:                                               ; preds = %6
  %29 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %30 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %35 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %38 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %41 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %44 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %47 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %50 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %53 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %52, i32 0, i32 0
  %54 = call i32 @establish_http_proxy_passthru(i64 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32* %51, i64* %53)
  store i32 %54, i32* %5, align 4
  br label %77

55:                                               ; preds = %28
  %56 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %57 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %62 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %65 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %68 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %71 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.signal_info*, %struct.signal_info** %4, align 8
  %74 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %73, i32 0, i32 0
  %75 = call i32 @establish_socks_proxy_passthru(i64 %63, i32 %66, i32 %69, i32 %72, i64* %74)
  br label %76

76:                                               ; preds = %60, %55
  br label %77

77:                                               ; preds = %76, %33
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %82 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @openvpn_close_socket(i32 %83)
  %85 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %86 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = call i32 @create_socket_tcp(%struct.TYPE_8__* %90)
  %92 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %93 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %80, %77
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %6, label %98

98:                                               ; preds = %27, %95
  ret void
}

declare dso_local i32 @socket_connect(i32*, i32, i32, %struct.signal_info*) #1

declare dso_local i32 @get_server_poll_remaining_time(i32) #1

declare dso_local i32 @establish_http_proxy_passthru(i64, i32, i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @establish_socks_proxy_passthru(i64, i32, i32, i32, i64*) #1

declare dso_local i32 @openvpn_close_socket(i32) #1

declare dso_local i32 @create_socket_tcp(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
