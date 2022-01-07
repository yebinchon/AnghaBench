; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_socks_process_outgoing_udp.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socks.c_socks_process_outgoing_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.link_socket_actual = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socks_process_outgoing_udp(%struct.buffer* %0, %struct.link_socket_actual* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca %struct.link_socket_actual*, align 8
  %5 = alloca %struct.buffer, align 4
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store %struct.link_socket_actual* %1, %struct.link_socket_actual** %4, align 8
  %6 = load %struct.buffer*, %struct.buffer** %3, align 8
  %7 = call i32 @buf_sub(%struct.buffer* %6, i32 10, i32 1)
  %8 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = call i32 @buf_defined(%struct.buffer* %5)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = call i32 @buf_write_u16(%struct.buffer* %5, i32 0)
  %12 = call i32 @buf_write_u8(%struct.buffer* %5, i8 signext 0)
  %13 = call i32 @buf_write_u8(%struct.buffer* %5, i8 signext 1)
  %14 = load %struct.link_socket_actual*, %struct.link_socket_actual** %4, align 8
  %15 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = call i32 @buf_write(%struct.buffer* %5, i32* %18, i32 4)
  %20 = load %struct.link_socket_actual*, %struct.link_socket_actual** %4, align 8
  %21 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @buf_write(%struct.buffer* %5, i32* %24, i32 4)
  ret i32 10
}

declare dso_local i32 @buf_sub(%struct.buffer*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_defined(%struct.buffer*) #1

declare dso_local i32 @buf_write_u16(%struct.buffer*, i32) #1

declare dso_local i32 @buf_write_u8(%struct.buffer*, i8 signext) #1

declare dso_local i32 @buf_write(%struct.buffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
