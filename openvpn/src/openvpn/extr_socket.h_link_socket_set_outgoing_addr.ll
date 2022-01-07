; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_set_outgoing_addr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_set_outgoing_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64 }
%struct.link_socket_info = type { i32, i64, i32, %struct.link_socket_addr* }
%struct.link_socket_addr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.link_socket_actual = type { i32 }
%struct.env_set = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.link_socket_info*, %struct.link_socket_actual*, i8*, %struct.env_set*)* @link_socket_set_outgoing_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_socket_set_outgoing_addr(%struct.buffer* %0, %struct.link_socket_info* %1, %struct.link_socket_actual* %2, i8* %3, %struct.env_set* %4) #0 {
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca %struct.link_socket_info*, align 8
  %8 = alloca %struct.link_socket_actual*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.env_set*, align 8
  %11 = alloca %struct.link_socket_addr*, align 8
  store %struct.buffer* %0, %struct.buffer** %6, align 8
  store %struct.link_socket_info* %1, %struct.link_socket_info** %7, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.env_set* %4, %struct.env_set** %10, align 8
  %12 = load %struct.buffer*, %struct.buffer** %6, align 8
  %13 = icmp ne %struct.buffer* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load %struct.buffer*, %struct.buffer** %6, align 8
  %16 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %14, %5
  %20 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %21 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %20, i32 0, i32 3
  %22 = load %struct.link_socket_addr*, %struct.link_socket_addr** %21, align 8
  store %struct.link_socket_addr* %22, %struct.link_socket_addr** %11, align 8
  %23 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %24 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.link_socket_actual*, %struct.link_socket_actual** %8, align 8
  %29 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %28, i32 0, i32 0
  %30 = load %struct.link_socket_addr*, %struct.link_socket_addr** %11, align 8
  %31 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %34 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @addr_match_proto(i32* %29, i32* %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %27, %19
  %39 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %40 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = load %struct.link_socket_addr*, %struct.link_socket_addr** %11, align 8
  %45 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.link_socket_actual*, %struct.link_socket_actual** %8, align 8
  %50 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %49, i32 0, i32 0
  %51 = load %struct.link_socket_addr*, %struct.link_socket_addr** %11, align 8
  %52 = getelementptr inbounds %struct.link_socket_addr, %struct.link_socket_addr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %55 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @addrlist_match_proto(i32* %50, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %48, %43, %38
  %60 = load %struct.buffer*, %struct.buffer** %6, align 8
  %61 = load %struct.link_socket_info*, %struct.link_socket_info** %7, align 8
  %62 = load %struct.link_socket_actual*, %struct.link_socket_actual** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.env_set*, %struct.env_set** %10, align 8
  %65 = call i32 @link_socket_connection_initiated(%struct.buffer* %60, %struct.link_socket_info* %61, %struct.link_socket_actual* %62, i8* %63, %struct.env_set* %64)
  br label %66

66:                                               ; preds = %59, %48, %27
  br label %67

67:                                               ; preds = %66, %14
  ret void
}

declare dso_local i32 @addr_match_proto(i32*, i32*, i32) #1

declare dso_local i64 @addrlist_match_proto(i32*, i32, i32) #1

declare dso_local i32 @link_socket_connection_initiated(%struct.buffer*, %struct.link_socket_info*, %struct.link_socket_actual*, i8*, %struct.env_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
