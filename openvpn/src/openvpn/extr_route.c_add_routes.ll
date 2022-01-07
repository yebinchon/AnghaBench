; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_add_routes.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_add_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_list = type { i32, i32, %struct.route_ipv4* }
%struct.route_ipv4 = type { i32, i32, %struct.route_ipv4* }
%struct.route_ipv6_list = type { i32, %struct.route_ipv6* }
%struct.route_ipv6 = type { %struct.route_ipv6* }
%struct.tuntap = type { i32, i32 }
%struct.env_set = type { i32 }

@RL_ROUTES_ADDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"route\00", align 1
@ROUTE_DELETE_FIRST = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [190 x i8] c"WARNING: OpenVPN was configured to add an IPv6 route over %s. However, no IPv6 has been configured for this interface, therefore the route installation may fail or may not work as expected.\00", align 1
@OPENVPN_STATE_ADD_ROUTES = common dso_local global i32 0, align 4
@management = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_routes(%struct.route_list* %0, %struct.route_ipv6_list* %1, %struct.tuntap* %2, i32 %3, %struct.env_set* %4, i32* %5) #0 {
  %7 = alloca %struct.route_list*, align 8
  %8 = alloca %struct.route_ipv6_list*, align 8
  %9 = alloca %struct.tuntap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.env_set*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.route_ipv4*, align 8
  %14 = alloca %struct.route_ipv6*, align 8
  store %struct.route_list* %0, %struct.route_list** %7, align 8
  store %struct.route_ipv6_list* %1, %struct.route_ipv6_list** %8, align 8
  store %struct.tuntap* %2, %struct.tuntap** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.env_set* %4, %struct.env_set** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.route_list*, %struct.route_list** %7, align 8
  %16 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.env_set*, %struct.env_set** %11, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @redirect_default_route_to_vpn(%struct.route_list* %15, %struct.tuntap* %16, i32 %17, %struct.env_set* %18, i32* %19)
  %21 = load %struct.route_list*, %struct.route_list** %7, align 8
  %22 = icmp ne %struct.route_list* %21, null
  br i1 %22, label %23, label %77

23:                                               ; preds = %6
  %24 = load %struct.route_list*, %struct.route_list** %7, align 8
  %25 = getelementptr inbounds %struct.route_list, %struct.route_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RL_ROUTES_ADDED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %77, label %30

30:                                               ; preds = %23
  %31 = load %struct.route_list*, %struct.route_list** %7, align 8
  %32 = getelementptr inbounds %struct.route_list, %struct.route_list* %31, i32 0, i32 2
  %33 = load %struct.route_ipv4*, %struct.route_ipv4** %32, align 8
  store %struct.route_ipv4* %33, %struct.route_ipv4** %13, align 8
  br label %34

34:                                               ; preds = %67, %30
  %35 = load %struct.route_ipv4*, %struct.route_ipv4** %13, align 8
  %36 = icmp ne %struct.route_ipv4* %35, null
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load %struct.route_ipv4*, %struct.route_ipv4** %13, align 8
  %39 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.route_ipv4*, %struct.route_ipv4** %13, align 8
  %42 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @check_subnet_conflict(i32 %40, i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ROUTE_DELETE_FIRST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %37
  %50 = load %struct.route_ipv4*, %struct.route_ipv4** %13, align 8
  %51 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.route_list*, %struct.route_list** %7, align 8
  %54 = getelementptr inbounds %struct.route_list, %struct.route_list* %53, i32 0, i32 1
  %55 = load %struct.env_set*, %struct.env_set** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @delete_route(%struct.route_ipv4* %50, %struct.tuntap* %51, i32 %52, i32* %54, %struct.env_set* %55, i32* %56)
  br label %58

58:                                               ; preds = %49, %37
  %59 = load %struct.route_ipv4*, %struct.route_ipv4** %13, align 8
  %60 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.route_list*, %struct.route_list** %7, align 8
  %63 = getelementptr inbounds %struct.route_list, %struct.route_list* %62, i32 0, i32 1
  %64 = load %struct.env_set*, %struct.env_set** %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @add_route(%struct.route_ipv4* %59, %struct.tuntap* %60, i32 %61, i32* %63, %struct.env_set* %64, i32* %65)
  br label %67

67:                                               ; preds = %58
  %68 = load %struct.route_ipv4*, %struct.route_ipv4** %13, align 8
  %69 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %68, i32 0, i32 2
  %70 = load %struct.route_ipv4*, %struct.route_ipv4** %69, align 8
  store %struct.route_ipv4* %70, %struct.route_ipv4** %13, align 8
  br label %34

71:                                               ; preds = %34
  %72 = load i32, i32* @RL_ROUTES_ADDED, align 4
  %73 = load %struct.route_list*, %struct.route_list** %7, align 8
  %74 = getelementptr inbounds %struct.route_list, %struct.route_list* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %23, %6
  %78 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %79 = icmp ne %struct.route_ipv6_list* %78, null
  br i1 %79, label %80, label %134

80:                                               ; preds = %77
  %81 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %82 = getelementptr inbounds %struct.route_ipv6_list, %struct.route_ipv6_list* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @RL_ROUTES_ADDED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %134, label %87

87:                                               ; preds = %80
  %88 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %89 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @M_INFO, align 4
  %94 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %95 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @msg(i32 %93, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %100 = getelementptr inbounds %struct.route_ipv6_list, %struct.route_ipv6_list* %99, i32 0, i32 1
  %101 = load %struct.route_ipv6*, %struct.route_ipv6** %100, align 8
  store %struct.route_ipv6* %101, %struct.route_ipv6** %14, align 8
  br label %102

102:                                              ; preds = %124, %98
  %103 = load %struct.route_ipv6*, %struct.route_ipv6** %14, align 8
  %104 = icmp ne %struct.route_ipv6* %103, null
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @ROUTE_DELETE_FIRST, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.route_ipv6*, %struct.route_ipv6** %14, align 8
  %112 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.env_set*, %struct.env_set** %11, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @delete_route_ipv6(%struct.route_ipv6* %111, %struct.tuntap* %112, i32 %113, %struct.env_set* %114, i32* %115)
  br label %117

117:                                              ; preds = %110, %105
  %118 = load %struct.route_ipv6*, %struct.route_ipv6** %14, align 8
  %119 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.env_set*, %struct.env_set** %11, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @add_route_ipv6(%struct.route_ipv6* %118, %struct.tuntap* %119, i32 %120, %struct.env_set* %121, i32* %122)
  br label %124

124:                                              ; preds = %117
  %125 = load %struct.route_ipv6*, %struct.route_ipv6** %14, align 8
  %126 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %125, i32 0, i32 0
  %127 = load %struct.route_ipv6*, %struct.route_ipv6** %126, align 8
  store %struct.route_ipv6* %127, %struct.route_ipv6** %14, align 8
  br label %102

128:                                              ; preds = %102
  %129 = load i32, i32* @RL_ROUTES_ADDED, align 4
  %130 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %131 = getelementptr inbounds %struct.route_ipv6_list, %struct.route_ipv6_list* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %80, %77
  ret void
}

declare dso_local i32 @redirect_default_route_to_vpn(%struct.route_list*, %struct.tuntap*, i32, %struct.env_set*, i32*) #1

declare dso_local i32 @check_subnet_conflict(i32, i32, i8*) #1

declare dso_local i32 @delete_route(%struct.route_ipv4*, %struct.tuntap*, i32, i32*, %struct.env_set*, i32*) #1

declare dso_local i32 @add_route(%struct.route_ipv4*, %struct.tuntap*, i32, i32*, %struct.env_set*, i32*) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @delete_route_ipv6(%struct.route_ipv6*, %struct.tuntap*, i32, %struct.env_set*, i32*) #1

declare dso_local i32 @add_route_ipv6(%struct.route_ipv6*, %struct.tuntap*, i32, %struct.env_set*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
