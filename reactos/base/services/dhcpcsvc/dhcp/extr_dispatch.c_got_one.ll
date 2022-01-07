; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_got_one.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dispatch.c_got_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol = type { i32, %struct.interface_info* }
%struct.interface_info = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.hardware = type { i32 }
%struct.iaddr = type { i32, i32 }
%union.anon = type { %struct.dhcp_packet, [4088 x i8] }
%struct.dhcp_packet = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"receive_packet failed on %s: %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Interface %s no longer appears valid.\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Discarding packet with a non-matching target physical address\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @got_one(%struct.protocol* %0) #0 {
  %2 = alloca %struct.protocol*, align 8
  %3 = alloca %struct.sockaddr_in, align 4
  %4 = alloca %struct.hardware, align 4
  %5 = alloca %struct.iaddr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.anon, align 4
  %8 = alloca %struct.interface_info*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.protocol* %0, %struct.protocol** %2, align 8
  %10 = load %struct.protocol*, %struct.protocol** %2, align 8
  %11 = getelementptr inbounds %struct.protocol, %struct.protocol* %10, i32 0, i32 1
  %12 = load %struct.interface_info*, %struct.interface_info** %11, align 8
  store %struct.interface_info* %12, %struct.interface_info** %8, align 8
  %13 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %14 = bitcast %union.anon* %7 to [4095 x i8]*
  %15 = getelementptr inbounds [4095 x i8], [4095 x i8]* %14, i64 0, i64 0
  %16 = call i32 @receive_packet(%struct.interface_info* %13, i8* %15, i32 4096, %struct.sockaddr_in* %3, %struct.hardware* %4)
  store i32 %16, i32* %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %57

18:                                               ; preds = %1
  %19 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %20 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (...) @WSAGetLastError()
  %23 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %25 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %29 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 20
  br i1 %31, label %32, label %56

32:                                               ; preds = %18
  %33 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %34 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %38 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.protocol*, %struct.protocol** %2, align 8
  %40 = getelementptr inbounds %struct.protocol, %struct.protocol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @closesocket(i32 %41)
  %43 = load %struct.protocol*, %struct.protocol** %2, align 8
  %44 = call i32 @remove_protocol(%struct.protocol* %43)
  %45 = load %struct.interface_info*, %struct.interface_info** %8, align 8
  %46 = call %struct.TYPE_5__* @AdapterFindInfo(%struct.interface_info* %45)
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = call i32 @RemoveEntryList(i32* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = call i32 @free(%struct.TYPE_5__* %53)
  br label %55

55:                                               ; preds = %49, %32
  br label %56

56:                                               ; preds = %55, %18
  br label %91

57:                                               ; preds = %1
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %91

61:                                               ; preds = %57
  br i1 true, label %62, label %91

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 0
  store i32 4, i32* %63, align 4
  %64 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %67 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32 %65, i32* %66, i32 %68)
  %70 = bitcast %union.anon* %7 to %struct.dhcp_packet*
  %71 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = bitcast %union.anon* %7 to %struct.dhcp_packet*
  %74 = getelementptr inbounds %struct.dhcp_packet, %struct.dhcp_packet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.TYPE_5__* @AdapterFindByHardwareAddress(i32 %72, i32 %75)
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %9, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %62
  %80 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  br label %91

81:                                               ; preds = %62
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = bitcast %union.anon* %7 to %struct.dhcp_packet*
  %85 = load i32, i32* %6, align 4
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = bitcast %struct.iaddr* %5 to i64*
  %89 = load i64, i64* %88, align 4
  %90 = call i32 @bootp_packet_handler(i32* %83, %struct.dhcp_packet* %84, i32 %85, i32 %87, i64 %89, %struct.hardware* %4)
  br label %91

91:                                               ; preds = %56, %60, %79, %81, %61
  ret void
}

declare dso_local i32 @receive_packet(%struct.interface_info*, i8*, i32, %struct.sockaddr_in*, %struct.hardware*) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @remove_protocol(%struct.protocol*) #1

declare dso_local %struct.TYPE_5__* @AdapterFindInfo(%struct.interface_info*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @bootp_packet_handler(i32*, %struct.dhcp_packet*, i32, i32, i64, %struct.hardware*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @AdapterFindByHardwareAddress(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
