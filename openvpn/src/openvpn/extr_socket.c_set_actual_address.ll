; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_set_actual_address.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_set_actual_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket_actual = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sockaddr_in6, %struct.sockaddr_in }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.addrinfo = type { i64, i64 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_actual_address(%struct.link_socket_actual* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca %struct.link_socket_actual*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  store %struct.link_socket_actual* %0, %struct.link_socket_actual** %3, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %4, align 8
  %5 = load %struct.link_socket_actual*, %struct.link_socket_actual** %3, align 8
  %6 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = bitcast %struct.TYPE_4__* %7 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = call i32 @CLEAR(i64 %9)
  %11 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %12 = call i32 @ASSERT(%struct.addrinfo* %11)
  %13 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.link_socket_actual*, %struct.link_socket_actual** %3, align 8
  %20 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %24 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.sockaddr_in*
  %27 = bitcast %struct.sockaddr_in* %22 to i8*
  %28 = bitcast %struct.sockaddr_in* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.link_socket_actual*, %struct.link_socket_actual** %3, align 8
  %37 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %41 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.sockaddr_in6*
  %44 = bitcast %struct.sockaddr_in6* %39 to i8*
  %45 = bitcast %struct.sockaddr_in6* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  br label %48

46:                                               ; preds = %29
  %47 = call i32 @ASSERT(%struct.addrinfo* null)
  br label %48

48:                                               ; preds = %46, %35
  br label %49

49:                                               ; preds = %48, %18
  ret void
}

declare dso_local i32 @CLEAR(i64) #1

declare dso_local i32 @ASSERT(%struct.addrinfo*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
