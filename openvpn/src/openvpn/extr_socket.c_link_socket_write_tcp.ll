; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_write_tcp.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_write_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.buffer = type { i32 }
%struct.link_socket_actual = type { i32 }

@D_STREAM_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"STREAM: WRITE %d offset=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @link_socket_write_tcp(%struct.link_socket* %0, %struct.buffer* %1, %struct.link_socket_actual* %2) #0 {
  %4 = alloca %struct.link_socket*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca %struct.link_socket_actual*, align 8
  %7 = alloca i64, align 8
  store %struct.link_socket* %0, %struct.link_socket** %4, align 8
  store %struct.buffer* %1, %struct.buffer** %5, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %6, align 8
  %8 = load %struct.buffer*, %struct.buffer** %5, align 8
  %9 = call i64 @BLEN(%struct.buffer* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @D_STREAM_DEBUG, align 4
  %11 = load i64, i64* %7, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.buffer*, %struct.buffer** %5, align 8
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dmsg(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %19 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %17, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @htonps(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.buffer*, %struct.buffer** %5, align 8
  %28 = call i32 @buf_write_prepend(%struct.buffer* %27, i64* %7, i32 8)
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %31 = load %struct.buffer*, %struct.buffer** %5, align 8
  %32 = load %struct.link_socket_actual*, %struct.link_socket_actual** %6, align 8
  %33 = call i32 @link_socket_write_tcp_posix(%struct.link_socket* %30, %struct.buffer* %31, %struct.link_socket_actual* %32)
  ret i32 %33
}

declare dso_local i64 @BLEN(%struct.buffer*) #1

declare dso_local i32 @dmsg(i32, i8*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @htonps(i64) #1

declare dso_local i32 @buf_write_prepend(%struct.buffer*, i64*, i32) #1

declare dso_local i32 @link_socket_write_tcp_posix(%struct.link_socket*, %struct.buffer*, %struct.link_socket_actual*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
