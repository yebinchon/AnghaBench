; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_create_socket.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_create_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32, i8*, i32, i8*, i64, i32 }
%struct.addrinfo = type { i64, i64, i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SF_GETADDRINFO_DGRAM = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_socket*, %struct.addrinfo*)* @create_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_socket(%struct.link_socket* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca %struct.link_socket*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.addrinfo, align 8
  store %struct.link_socket* %0, %struct.link_socket** %3, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %4, align 8
  %6 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %7 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IPPROTO_UDP, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCK_DGRAM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %11, %2
  %18 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %19 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %20 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @create_socket_udp(%struct.addrinfo* %18, i32 %21)
  %23 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %24 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @SF_GETADDRINFO_DGRAM, align 4
  %26 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %27 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %31 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %17
  %35 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %36 = bitcast %struct.addrinfo* %5 to i8*
  %37 = bitcast %struct.addrinfo* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 24, i1 false)
  %38 = load i64, i64* @SOCK_STREAM, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* @IPPROTO_TCP, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = call i8* @create_socket_tcp(%struct.addrinfo* %5)
  %43 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %44 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %34, %17
  br label %66

46:                                               ; preds = %11
  %47 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IPPROTO_TCP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SOCK_STREAM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %46
  %59 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %60 = call i8* @create_socket_tcp(%struct.addrinfo* %59)
  %61 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %62 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %65

63:                                               ; preds = %52
  %64 = call i32 @ASSERT(i32 0)
  br label %65

65:                                               ; preds = %63, %58
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %68 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %71 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %70, i32 0, i32 2
  %72 = call i32 @socket_set_buffers(i8* %69, i32* %71)
  %73 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %74 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %77 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @socket_set_mark(i8* %75, i32 %78)
  %80 = load %struct.link_socket*, %struct.link_socket** %3, align 8
  %81 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @bind_local(%struct.link_socket* %80, i32 %83)
  ret void
}

declare dso_local i8* @create_socket_udp(%struct.addrinfo*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @create_socket_tcp(%struct.addrinfo*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @socket_set_buffers(i8*, i32*) #1

declare dso_local i32 @socket_set_mark(i8*, i32) #1

declare dso_local i32 @bind_local(%struct.link_socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
