; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_read.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.buffer = type { i32 }
%struct.link_socket_actual = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_socket*, %struct.buffer*, %struct.link_socket_actual*)* @link_socket_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_socket_read(%struct.link_socket* %0, %struct.buffer* %1, %struct.link_socket_actual* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link_socket*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.link_socket_actual*, align 8
  %8 = alloca i32, align 4
  store %struct.link_socket* %0, %struct.link_socket** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %7, align 8
  %9 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %10 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @proto_is_udp(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %17 = load %struct.buffer*, %struct.buffer** %6, align 8
  %18 = load %struct.link_socket_actual*, %struct.link_socket_actual** %7, align 8
  %19 = call i32 @link_socket_read_udp_posix(%struct.link_socket* %16, %struct.buffer* %17, %struct.link_socket_actual* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %23 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @proto_is_tcp(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load %struct.link_socket_actual*, %struct.link_socket_actual** %7, align 8
  %30 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %29, i32 0, i32 0
  %31 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %32 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @addr_copy_sa(i32* %30, i32* %36)
  %38 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %39 = load %struct.buffer*, %struct.buffer** %6, align 8
  %40 = call i32 @link_socket_read_tcp(%struct.link_socket* %38, %struct.buffer* %39)
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %21
  %42 = call i32 @ASSERT(i32 0)
  store i32 -1, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %28, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @proto_is_udp(i32) #1

declare dso_local i32 @link_socket_read_udp_posix(%struct.link_socket*, %struct.buffer*, %struct.link_socket_actual*) #1

declare dso_local i64 @proto_is_tcp(i32) #1

declare dso_local i32 @addr_copy_sa(i32*, i32*) #1

declare dso_local i32 @link_socket_read_tcp(%struct.link_socket*, %struct.buffer*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
