; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_socket.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_socket.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { i32 }
%struct.dhcp_packet = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.hardware = type { i32 }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@WSAEMSGSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"send_packet: %x\00", align 1
@WSAENETUNREACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"send_packet: please consult README file%s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c" regarding broadcast address.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_packet(%struct.interface_info* %0, %struct.dhcp_packet* %1, i64 %2, i32 %3, %struct.sockaddr_in* %4, %struct.hardware* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.in_addr, align 4
  %9 = alloca %struct.interface_info*, align 8
  %10 = alloca %struct.dhcp_packet*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.hardware*, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store %struct.interface_info* %0, %struct.interface_info** %9, align 8
  store %struct.dhcp_packet* %1, %struct.dhcp_packet** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.sockaddr_in* %4, %struct.sockaddr_in** %12, align 8
  store %struct.hardware* %5, %struct.hardware** %13, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @INT_MAX, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @WSAEMSGSIZE, align 4
  store i32 %20, i32* %7, align 4
  br label %45

21:                                               ; preds = %6
  %22 = load %struct.interface_info*, %struct.interface_info** %9, align 8
  %23 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dhcp_packet*, %struct.dhcp_packet** %10, align 8
  %26 = bitcast %struct.dhcp_packet* %25 to i8*
  %27 = load i64, i64* %11, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %30 = bitcast %struct.sockaddr_in* %29 to %struct.sockaddr*
  %31 = call i32 @sendto(i32 %24, i8* %26, i32 %28, i32 0, %struct.sockaddr* %30, i32 4)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load i32, i32* %14, align 4
  %36 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @WSAENETUNREACH, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @sendto(i32, i8*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @note(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
