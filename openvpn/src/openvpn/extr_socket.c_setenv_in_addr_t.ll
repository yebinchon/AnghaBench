; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_setenv_in_addr_t.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_setenv_in_addr_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type { i32 }
%struct.openvpn_sockaddr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@SA_SET_IF_NONZERO = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setenv_in_addr_t(%struct.env_set* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.env_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.openvpn_sockaddr, align 4
  store %struct.env_set* %0, %struct.env_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @SA_SET_IF_NONZERO, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %12, %4
  %18 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %9, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = bitcast %struct.TYPE_5__* %19 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i32 @CLEAR(i64 %21)
  %23 = load i32, i32* @AF_INET, align 4
  %24 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %9, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @htonl(i64 %27)
  %29 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %9, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.env_set*, %struct.env_set** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @setenv_sockaddr(%struct.env_set* %33, i8* %34, %struct.openvpn_sockaddr* %9, i32 %35)
  br label %37

37:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @CLEAR(i64) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @setenv_sockaddr(%struct.env_set*, i8*, %struct.openvpn_sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
