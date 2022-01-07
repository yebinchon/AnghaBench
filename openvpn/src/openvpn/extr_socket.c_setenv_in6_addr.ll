; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_setenv_in6_addr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_setenv_in6_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.in6_addr = type { i32 }
%struct.openvpn_sockaddr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.in6_addr, i32 }

@SA_SET_IF_NONZERO = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_in6_addr(%struct.env_set* %0, i8* %1, %struct.in6_addr* %2, i32 %3) #0 {
  %5 = alloca %struct.env_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.openvpn_sockaddr, align 4
  store %struct.env_set* %0, %struct.env_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %11 = call i32 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @SA_SET_IF_NONZERO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %13, %4
  %19 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %9, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast %struct.TYPE_3__* %20 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i32 @CLEAR(i64 %22)
  %24 = load i32, i32* @AF_INET6, align 4
  %25 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %32 = bitcast %struct.in6_addr* %30 to i8*
  %33 = bitcast %struct.in6_addr* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.env_set*, %struct.env_set** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @setenv_sockaddr(%struct.env_set* %34, i8* %35, %struct.openvpn_sockaddr* %9, i32 %36)
  br label %38

38:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr*) #1

declare dso_local i32 @CLEAR(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setenv_sockaddr(%struct.env_set*, i8*, %struct.openvpn_sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
