; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_get_outgoing_addr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_get_outgoing_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64 }
%struct.link_socket_info = type { %struct.link_socket_addr* }
%struct.link_socket_addr = type { %struct.link_socket_actual }
%struct.link_socket_actual = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.link_socket_info*, %struct.link_socket_actual**)* @link_socket_get_outgoing_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_socket_get_outgoing_addr(%struct.buffer* %0, %struct.link_socket_info* %1, %struct.link_socket_actual** %2) #0 {
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca %struct.link_socket_info*, align 8
  %6 = alloca %struct.link_socket_actual**, align 8
  %7 = alloca %struct.link_socket_addr*, align 8
  store %struct.buffer* %0, %struct.buffer** %4, align 8
  store %struct.link_socket_info* %1, %struct.link_socket_info** %5, align 8
  store %struct.link_socket_actual** %2, %struct.link_socket_actual*** %6, align 8
  %8 = load %struct.buffer*, %struct.buffer** %4, align 8
  %9 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.link_socket_info*, %struct.link_socket_info** %5, align 8
  %14 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %13, i32 0, i32 0
  %15 = load %struct.link_socket_addr*, %struct.link_socket_addr** %14, align 8
  store %struct.link_socket_addr* %15, %struct.link_socket_addr** %7, align 8
  %16 = load %struct.link_socket_addr*, %struct.link_socket_addr** %7, align 8
  %17 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %16, i32 0, i32 0
  %18 = call i64 @link_socket_actual_defined(%struct.link_socket_actual* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.link_socket_addr*, %struct.link_socket_addr** %7, align 8
  %22 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %21, i32 0, i32 0
  %23 = load %struct.link_socket_actual**, %struct.link_socket_actual*** %6, align 8
  store %struct.link_socket_actual* %22, %struct.link_socket_actual** %23, align 8
  br label %29

24:                                               ; preds = %12
  %25 = call i32 (...) @link_socket_bad_outgoing_addr()
  %26 = load %struct.buffer*, %struct.buffer** %4, align 8
  %27 = getelementptr inbounds %struct.buffer, %struct.buffer* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.link_socket_actual**, %struct.link_socket_actual*** %6, align 8
  store %struct.link_socket_actual* null, %struct.link_socket_actual** %28, align 8
  br label %29

29:                                               ; preds = %24, %20
  br label %30

30:                                               ; preds = %29, %3
  ret void
}

declare dso_local i64 @link_socket_actual_defined(%struct.link_socket_actual*) #1

declare dso_local i32 @link_socket_bad_outgoing_addr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
