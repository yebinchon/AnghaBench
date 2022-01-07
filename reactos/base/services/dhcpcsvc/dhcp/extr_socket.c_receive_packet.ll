; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_socket.c_receive_packet.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_socket.c_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.hardware = type { i32 }
%struct.sockaddr = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@WSAEMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @receive_packet(%struct.interface_info* %0, i8* %1, i64 %2, %struct.sockaddr_in* %3, %struct.hardware* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.interface_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.hardware*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.interface_info* %0, %struct.interface_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.sockaddr_in* %3, %struct.sockaddr_in** %10, align 8
  store %struct.hardware* %4, %struct.hardware** %11, align 8
  store i32 4, i32* %12, align 4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @INT_MAX, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @WSAEMSGSIZE, align 4
  store i32 %18, i32* %6, align 4
  br label %30

19:                                               ; preds = %5
  %20 = load %struct.interface_info*, %struct.interface_info** %7, align 8
  %21 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %27 = bitcast %struct.sockaddr_in* %26 to %struct.sockaddr*
  %28 = call i32 @recvfrom(i32 %22, i8* %23, i32 %25, i32 0, %struct.sockaddr* %27, i32* %12)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %19, %17
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
