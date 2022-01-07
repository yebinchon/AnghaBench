; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_drop_if_recursive_routing.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_forward.c_drop_if_recursive_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_16__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_18__ }
%struct.TYPE_17__ = type { %struct.openvpn_sockaddr }
%struct.openvpn_sockaddr = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.buffer = type { i32 }
%struct.openvpn_iphdr = type { i64 }
%struct.openvpn_ipv6hdr = type { i32 }
%struct.gc_arena = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@D_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Recursive routing detected, drop tun packet to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.buffer*)* @drop_if_recursive_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_if_recursive_routing(%struct.context* %0, %struct.buffer* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.openvpn_sockaddr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.openvpn_iphdr*, align 8
  %10 = alloca %struct.openvpn_ipv6hdr*, align 8
  %11 = alloca %struct.gc_arena, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.buffer* %1, %struct.buffer** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.context*, %struct.context** %3, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = icmp eq %struct.TYPE_17__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.context*, %struct.context** %3, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = bitcast %struct.openvpn_sockaddr* %6 to i8*
  %25 = bitcast %struct.openvpn_sockaddr* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  %26 = load %struct.context*, %struct.context** %3, align 8
  %27 = getelementptr inbounds %struct.context, %struct.context* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @TUNNEL_TYPE(i32 %29)
  %31 = load %struct.context*, %struct.context** %3, align 8
  %32 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = call i32 @get_tun_ip_ver(i32 %30, %struct.TYPE_18__* %33, i32* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %70

37:                                               ; preds = %18
  %38 = load %struct.buffer*, %struct.buffer** %4, align 8
  %39 = call i32 @BLEN(%struct.buffer* %38)
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 8, %40
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %123

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AF_INET, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %123

52:                                               ; preds = %44
  %53 = load %struct.buffer*, %struct.buffer** %4, align 8
  %54 = call i64 @BPTR(%struct.buffer* %53)
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = inttoptr i64 %57 to %struct.openvpn_iphdr*
  store %struct.openvpn_iphdr* %58, %struct.openvpn_iphdr** %9, align 8
  %59 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %6, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.openvpn_iphdr*, %struct.openvpn_iphdr** %9, align 8
  %65 = getelementptr inbounds %struct.openvpn_iphdr, %struct.openvpn_iphdr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %52
  br label %105

70:                                               ; preds = %18
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 6
  br i1 %72, label %73, label %104

73:                                               ; preds = %70
  %74 = load %struct.buffer*, %struct.buffer** %4, align 8
  %75 = call i32 @BLEN(%struct.buffer* %74)
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 4, %76
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %123

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %6, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AF_INET6, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %123

88:                                               ; preds = %80
  %89 = load %struct.buffer*, %struct.buffer** %4, align 8
  %90 = call i64 @BPTR(%struct.buffer* %89)
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = inttoptr i64 %93 to %struct.openvpn_ipv6hdr*
  store %struct.openvpn_ipv6hdr* %94, %struct.openvpn_ipv6hdr** %10, align 8
  %95 = getelementptr inbounds %struct.openvpn_sockaddr, %struct.openvpn_sockaddr* %6, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load %struct.openvpn_ipv6hdr*, %struct.openvpn_ipv6hdr** %10, align 8
  %99 = getelementptr inbounds %struct.openvpn_ipv6hdr, %struct.openvpn_ipv6hdr* %98, i32 0, i32 0
  %100 = call i64 @IN6_ARE_ADDR_EQUAL(i32* %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  store i32 1, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %88
  br label %104

104:                                              ; preds = %103, %70
  br label %105

105:                                              ; preds = %104, %69
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = call i32 (...) @gc_new()
  %110 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %11, i32 0, i32 0
  store i32 %109, i32* %110, align 4
  %111 = load %struct.context*, %struct.context** %3, align 8
  %112 = getelementptr inbounds %struct.context, %struct.context* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @D_LOW, align 4
  %116 = load %struct.context*, %struct.context** %3, align 8
  %117 = getelementptr inbounds %struct.context, %struct.context* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = call i32 @print_link_socket_actual(%struct.TYPE_17__* %119, %struct.gc_arena* %11)
  %121 = call i32 @msg(i32 %115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = call i32 @gc_free(%struct.gc_arena* %11)
  br label %123

123:                                              ; preds = %17, %43, %51, %79, %87, %108, %105
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_tun_ip_ver(i32, %struct.TYPE_18__*, i32*) #2

declare dso_local i32 @TUNNEL_TYPE(i32) #2

declare dso_local i32 @BLEN(%struct.buffer*) #2

declare dso_local i64 @BPTR(%struct.buffer*) #2

declare dso_local i64 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #2

declare dso_local i32 @gc_new(...) #2

declare dso_local i32 @msg(i32, i8*, i32) #2

declare dso_local i32 @print_link_socket_actual(%struct.TYPE_17__*, %struct.gc_arena*) #2

declare dso_local i32 @gc_free(%struct.gc_arena*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
