; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_frame_init.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_frame_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32 }
%struct.link_socket = type { %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@FRAME_HEADROOM_MARKER_READ_STREAM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame*, %struct.link_socket*)* @socket_frame_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_frame_init(%struct.frame* %0, %struct.link_socket* %1) #0 {
  %3 = alloca %struct.frame*, align 8
  %4 = alloca %struct.link_socket*, align 8
  store %struct.frame* %0, %struct.frame** %3, align 8
  store %struct.link_socket* %1, %struct.link_socket** %4, align 8
  %5 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %6 = call i64 @link_socket_connection_oriented(%struct.link_socket* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %10 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %9, i32 0, i32 2
  %11 = load %struct.frame*, %struct.frame** %3, align 8
  %12 = load i32, i32* @FRAME_HEADROOM_MARKER_READ_STREAM, align 4
  %13 = call i32 @alloc_buf_sock_tun(i32* %10, %struct.frame* %11, i32 0, i32 %12)
  %14 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %15 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %14, i32 0, i32 3
  %16 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %17 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %16, i32 0, i32 2
  %18 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %19 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %22 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @stream_buf_init(i32* %15, i32* %17, i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @link_socket_connection_oriented(%struct.link_socket*) #1

declare dso_local i32 @alloc_buf_sock_tun(i32*, %struct.frame*, i32, i32) #1

declare dso_local i32 @stream_buf_init(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
