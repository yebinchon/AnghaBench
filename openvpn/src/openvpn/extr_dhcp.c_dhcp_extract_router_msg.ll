; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_dhcp.c_dhcp_extract_router_msg.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_dhcp.c_dhcp_extract_router_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.dhcp_full = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.gc_arena = type { i32 }

@OPENVPN_IPPROTO_UDP = common dso_local global i64 0, align 8
@BOOTPS_PORT = common dso_local global i32 0, align 4
@BOOTPC_PORT = common dso_local global i32 0, align 4
@BOOTREPLY = common dso_local global i64 0, align 8
@DHCPACK = common dso_local global i32 0, align 4
@DHCPOFFER = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@D_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Extracted DHCP router address: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dhcp_extract_router_msg(%struct.buffer* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca %struct.dhcp_full*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.gc_arena, align 4
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  %9 = load %struct.buffer*, %struct.buffer** %3, align 8
  %10 = call i64 @BPTR(%struct.buffer* %9)
  %11 = inttoptr i64 %10 to %struct.dhcp_full*
  store %struct.dhcp_full* %11, %struct.dhcp_full** %4, align 8
  %12 = load %struct.buffer*, %struct.buffer** %3, align 8
  %13 = call i32 @BLEN(%struct.buffer* %12)
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %107

19:                                               ; preds = %1
  %20 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %21 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OPENVPN_IPPROTO_UDP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %107

26:                                               ; preds = %19
  %27 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %28 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @BOOTPS_PORT, align 4
  %32 = call i64 @htons(i32 %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %107

34:                                               ; preds = %26
  %35 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %36 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @BOOTPC_PORT, align 4
  %40 = call i64 @htons(i32 %39)
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %107

42:                                               ; preds = %34
  %43 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %44 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BOOTREPLY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %107

49:                                               ; preds = %42
  %50 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %51 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %50, i32 0, i32 2
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @get_dhcp_message_type(%struct.TYPE_7__* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @DHCPACK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @DHCPOFFER, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %106

61:                                               ; preds = %57, %49
  %62 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %63 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %62, i32 0, i32 2
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @do_extract(%struct.TYPE_7__* %63, i32 %64)
  store i64 %65, i64* %7, align 8
  %66 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %67 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @AF_INET, align 4
  %70 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %71 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %70, i32 0, i32 1
  %72 = bitcast %struct.TYPE_5__* %71 to i32*
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 8, %74
  %76 = trunc i64 %75 to i32
  %77 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %78 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %81 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* @OPENVPN_IPPROTO_UDP, align 8
  %84 = call i32 @ip_checksum(i32 %69, i32* %72, i32 %76, i32* %79, i32* %82, i64 %83)
  %85 = call i64 @htons(i32 %84)
  %86 = load %struct.dhcp_full*, %struct.dhcp_full** %4, align 8
  %87 = getelementptr inbounds %struct.dhcp_full, %struct.dhcp_full* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  store i64 %85, i64* %88, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @DHCPACK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %61
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = call i32 (...) @gc_new()
  %97 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %8, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @D_ROUTE, align 4
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @print_in_addr_t(i64 %99, i32 0, %struct.gc_arena* %8)
  %101 = call i32 @msg(i32 %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = call i32 @gc_free(%struct.gc_arena* %8)
  br label %103

103:                                              ; preds = %95, %92
  %104 = load i64, i64* %7, align 8
  store i64 %104, i64* %2, align 8
  br label %108

105:                                              ; preds = %61
  br label %106

106:                                              ; preds = %105, %57
  br label %107

107:                                              ; preds = %106, %42, %34, %26, %19, %1
  store i64 0, i64* %2, align 8
  br label %108

108:                                              ; preds = %107, %103
  %109 = load i64, i64* %2, align 8
  ret i64 %109
}

declare dso_local i64 @BPTR(%struct.buffer*) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @get_dhcp_message_type(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @do_extract(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ip_checksum(i32, i32*, i32, i32*, i32*, i64) #1

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @print_in_addr_t(i64, i32, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
