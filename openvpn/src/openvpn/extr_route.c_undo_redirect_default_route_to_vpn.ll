; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_undo_redirect_default_route_to_vpn.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_undo_redirect_default_route_to_vpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_list = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.tuntap = type { i32 }
%struct.env_set = type { i32 }

@RL_DID_REDIRECT_DEFAULT_GATEWAY = common dso_local global i32 0, align 4
@RL_DID_LOCAL = common dso_local global i32 0, align 4
@IPV4_NETMASK_HOST = common dso_local global i32 0, align 4
@ROUTE_REF_GW = common dso_local global i32 0, align 4
@RG_REROUTE_GW = common dso_local global i32 0, align 4
@RG_DEF1 = common dso_local global i32 0, align 4
@RGI_ADDR_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.route_list*, %struct.tuntap*, i32, %struct.env_set*, i32*)* @undo_redirect_default_route_to_vpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @undo_redirect_default_route_to_vpn(%struct.route_list* %0, %struct.tuntap* %1, i32 %2, %struct.env_set* %3, i32* %4) #0 {
  %6 = alloca %struct.route_list*, align 8
  %7 = alloca %struct.tuntap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.env_set*, align 8
  %10 = alloca i32*, align 8
  store %struct.route_list* %0, %struct.route_list** %6, align 8
  store %struct.tuntap* %1, %struct.tuntap** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.env_set* %3, %struct.env_set** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.route_list*, %struct.route_list** %6, align 8
  %12 = icmp ne %struct.route_list* %11, null
  br i1 %12, label %13, label %148

13:                                               ; preds = %5
  %14 = load %struct.route_list*, %struct.route_list** %6, align 8
  %15 = getelementptr inbounds %struct.route_list, %struct.route_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RL_DID_REDIRECT_DEFAULT_GATEWAY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %148

20:                                               ; preds = %13
  %21 = load %struct.route_list*, %struct.route_list** %6, align 8
  %22 = getelementptr inbounds %struct.route_list, %struct.route_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RL_DID_LOCAL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %20
  %28 = load %struct.route_list*, %struct.route_list** %6, align 8
  %29 = getelementptr inbounds %struct.route_list, %struct.route_list* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IPV4_NETMASK_HOST, align 4
  %33 = load %struct.route_list*, %struct.route_list** %6, align 8
  %34 = getelementptr inbounds %struct.route_list, %struct.route_list* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ROUTE_REF_GW, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.route_list*, %struct.route_list** %6, align 8
  %43 = getelementptr inbounds %struct.route_list, %struct.route_list* %42, i32 0, i32 2
  %44 = load %struct.env_set*, %struct.env_set** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @del_route3(i32 %31, i32 %32, i32 %37, %struct.tuntap* %38, i32 %41, %struct.TYPE_8__* %43, %struct.env_set* %44, i32* %45)
  %47 = load i32, i32* @RL_DID_LOCAL, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.route_list*, %struct.route_list** %6, align 8
  %50 = getelementptr inbounds %struct.route_list, %struct.route_list* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %27, %20
  %54 = load %struct.route_list*, %struct.route_list** %6, align 8
  %55 = getelementptr inbounds %struct.route_list, %struct.route_list* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.route_list*, %struct.route_list** %6, align 8
  %58 = getelementptr inbounds %struct.route_list, %struct.route_list* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.route_list*, %struct.route_list** %6, align 8
  %65 = getelementptr inbounds %struct.route_list, %struct.route_list* %64, i32 0, i32 2
  %66 = load %struct.env_set*, %struct.env_set** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @del_bypass_routes(i32* %56, i32 %61, %struct.tuntap* %62, i32 %63, %struct.TYPE_8__* %65, %struct.env_set* %66, i32* %67)
  %69 = load %struct.route_list*, %struct.route_list** %6, align 8
  %70 = getelementptr inbounds %struct.route_list, %struct.route_list* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RG_REROUTE_GW, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %141

75:                                               ; preds = %53
  %76 = load %struct.route_list*, %struct.route_list** %6, align 8
  %77 = getelementptr inbounds %struct.route_list, %struct.route_list* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RG_DEF1, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %75
  %83 = load %struct.route_list*, %struct.route_list** %6, align 8
  %84 = getelementptr inbounds %struct.route_list, %struct.route_list* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.route_list*, %struct.route_list** %6, align 8
  %90 = getelementptr inbounds %struct.route_list, %struct.route_list* %89, i32 0, i32 2
  %91 = load %struct.env_set*, %struct.env_set** %9, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @del_route3(i32 0, i32 -2147483648, i32 %86, %struct.tuntap* %87, i32 %88, %struct.TYPE_8__* %90, %struct.env_set* %91, i32* %92)
  %94 = load %struct.route_list*, %struct.route_list** %6, align 8
  %95 = getelementptr inbounds %struct.route_list, %struct.route_list* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.route_list*, %struct.route_list** %6, align 8
  %101 = getelementptr inbounds %struct.route_list, %struct.route_list* %100, i32 0, i32 2
  %102 = load %struct.env_set*, %struct.env_set** %9, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @del_route3(i32 -2147483648, i32 -2147483648, i32 %97, %struct.tuntap* %98, i32 %99, %struct.TYPE_8__* %101, %struct.env_set* %102, i32* %103)
  br label %140

105:                                              ; preds = %75
  %106 = load %struct.route_list*, %struct.route_list** %6, align 8
  %107 = getelementptr inbounds %struct.route_list, %struct.route_list* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.route_list*, %struct.route_list** %6, align 8
  %113 = getelementptr inbounds %struct.route_list, %struct.route_list* %112, i32 0, i32 2
  %114 = load %struct.env_set*, %struct.env_set** %9, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @del_route3(i32 0, i32 0, i32 %109, %struct.tuntap* %110, i32 %111, %struct.TYPE_8__* %113, %struct.env_set* %114, i32* %115)
  %117 = load %struct.route_list*, %struct.route_list** %6, align 8
  %118 = getelementptr inbounds %struct.route_list, %struct.route_list* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @RGI_ADDR_DEFINED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %105
  %125 = load %struct.route_list*, %struct.route_list** %6, align 8
  %126 = getelementptr inbounds %struct.route_list, %struct.route_list* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @ROUTE_REF_GW, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.route_list*, %struct.route_list** %6, align 8
  %135 = getelementptr inbounds %struct.route_list, %struct.route_list* %134, i32 0, i32 2
  %136 = load %struct.env_set*, %struct.env_set** %9, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @add_route3(i32 0, i32 0, i32 %129, %struct.tuntap* %130, i32 %133, %struct.TYPE_8__* %135, %struct.env_set* %136, i32* %137)
  br label %139

139:                                              ; preds = %124, %105
  br label %140

140:                                              ; preds = %139, %82
  br label %141

141:                                              ; preds = %140, %53
  %142 = load i32, i32* @RL_DID_REDIRECT_DEFAULT_GATEWAY, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.route_list*, %struct.route_list** %6, align 8
  %145 = getelementptr inbounds %struct.route_list, %struct.route_list* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %141, %13, %5
  ret void
}

declare dso_local i32 @del_route3(i32, i32, i32, %struct.tuntap*, i32, %struct.TYPE_8__*, %struct.env_set*, i32*) #1

declare dso_local i32 @del_bypass_routes(i32*, i32, %struct.tuntap*, i32, %struct.TYPE_8__*, %struct.env_set*, i32*) #1

declare dso_local i32 @add_route3(i32, i32, i32, %struct.tuntap*, i32, %struct.TYPE_8__*, %struct.env_set*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
