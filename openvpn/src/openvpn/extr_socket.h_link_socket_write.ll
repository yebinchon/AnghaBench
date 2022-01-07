; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_write.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.buffer = type { i32 }
%struct.link_socket_actual = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_socket*, %struct.buffer*, %struct.link_socket_actual*)* @link_socket_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_socket_write(%struct.link_socket* %0, %struct.buffer* %1, %struct.link_socket_actual* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link_socket*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.link_socket_actual*, align 8
  store %struct.link_socket* %0, %struct.link_socket** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %7, align 8
  %8 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %9 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @proto_is_udp(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %16 = load %struct.buffer*, %struct.buffer** %6, align 8
  %17 = load %struct.link_socket_actual*, %struct.link_socket_actual** %7, align 8
  %18 = call i32 @link_socket_write_udp(%struct.link_socket* %15, %struct.buffer* %16, %struct.link_socket_actual* %17)
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %21 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @proto_is_tcp(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.link_socket*, %struct.link_socket** %5, align 8
  %28 = load %struct.buffer*, %struct.buffer** %6, align 8
  %29 = load %struct.link_socket_actual*, %struct.link_socket_actual** %7, align 8
  %30 = call i32 @link_socket_write_tcp(%struct.link_socket* %27, %struct.buffer* %28, %struct.link_socket_actual* %29)
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %19
  %32 = call i32 @ASSERT(i32 0)
  store i32 -1, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %26, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @proto_is_udp(i32) #1

declare dso_local i32 @link_socket_write_udp(%struct.link_socket*, %struct.buffer*, %struct.link_socket_actual*) #1

declare dso_local i64 @proto_is_tcp(i32) #1

declare dso_local i32 @link_socket_write_tcp(%struct.link_socket*, %struct.buffer*, %struct.link_socket_actual*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
