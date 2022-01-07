; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_delete_routes.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_delete_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_list = type { i32, i32, %struct.route_ipv4* }
%struct.route_ipv4 = type { %struct.route_ipv4* }
%struct.route_ipv6_list = type { i32, %struct.route_ipv6* }
%struct.route_ipv6 = type { %struct.route_ipv6* }
%struct.tuntap = type { i32 }
%struct.env_set = type { i32 }

@RL_ROUTES_ADDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_routes(%struct.route_list* %0, %struct.route_ipv6_list* %1, %struct.tuntap* %2, i32 %3, %struct.env_set* %4, i32* %5) #0 {
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
  %16 = icmp ne %struct.route_list* %15, null
  br i1 %16, label %17, label %51

17:                                               ; preds = %6
  %18 = load %struct.route_list*, %struct.route_list** %7, align 8
  %19 = getelementptr inbounds %struct.route_list, %struct.route_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RL_ROUTES_ADDED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load %struct.route_list*, %struct.route_list** %7, align 8
  %26 = getelementptr inbounds %struct.route_list, %struct.route_list* %25, i32 0, i32 2
  %27 = load %struct.route_ipv4*, %struct.route_ipv4** %26, align 8
  store %struct.route_ipv4* %27, %struct.route_ipv4** %13, align 8
  br label %28

28:                                               ; preds = %40, %24
  %29 = load %struct.route_ipv4*, %struct.route_ipv4** %13, align 8
  %30 = icmp ne %struct.route_ipv4* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.route_ipv4*, %struct.route_ipv4** %13, align 8
  %33 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.route_list*, %struct.route_list** %7, align 8
  %36 = getelementptr inbounds %struct.route_list, %struct.route_list* %35, i32 0, i32 1
  %37 = load %struct.env_set*, %struct.env_set** %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @delete_route(%struct.route_ipv4* %32, %struct.tuntap* %33, i32 %34, i32* %36, %struct.env_set* %37, i32* %38)
  br label %40

40:                                               ; preds = %31
  %41 = load %struct.route_ipv4*, %struct.route_ipv4** %13, align 8
  %42 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %41, i32 0, i32 0
  %43 = load %struct.route_ipv4*, %struct.route_ipv4** %42, align 8
  store %struct.route_ipv4* %43, %struct.route_ipv4** %13, align 8
  br label %28

44:                                               ; preds = %28
  %45 = load i32, i32* @RL_ROUTES_ADDED, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.route_list*, %struct.route_list** %7, align 8
  %48 = getelementptr inbounds %struct.route_list, %struct.route_list* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %44, %17, %6
  %52 = load %struct.route_list*, %struct.route_list** %7, align 8
  %53 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.env_set*, %struct.env_set** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @undo_redirect_default_route_to_vpn(%struct.route_list* %52, %struct.tuntap* %53, i32 %54, %struct.env_set* %55, i32* %56)
  %58 = load %struct.route_list*, %struct.route_list** %7, align 8
  %59 = icmp ne %struct.route_list* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load %struct.route_list*, %struct.route_list** %7, align 8
  %62 = call i32 @clear_route_list(%struct.route_list* %61)
  br label %63

63:                                               ; preds = %60, %51
  %64 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %65 = icmp ne %struct.route_ipv6_list* %64, null
  br i1 %65, label %66, label %98

66:                                               ; preds = %63
  %67 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %68 = getelementptr inbounds %struct.route_ipv6_list, %struct.route_ipv6_list* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RL_ROUTES_ADDED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %66
  %74 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %75 = getelementptr inbounds %struct.route_ipv6_list, %struct.route_ipv6_list* %74, i32 0, i32 1
  %76 = load %struct.route_ipv6*, %struct.route_ipv6** %75, align 8
  store %struct.route_ipv6* %76, %struct.route_ipv6** %14, align 8
  br label %77

77:                                               ; preds = %87, %73
  %78 = load %struct.route_ipv6*, %struct.route_ipv6** %14, align 8
  %79 = icmp ne %struct.route_ipv6* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.route_ipv6*, %struct.route_ipv6** %14, align 8
  %82 = load %struct.tuntap*, %struct.tuntap** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.env_set*, %struct.env_set** %11, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @delete_route_ipv6(%struct.route_ipv6* %81, %struct.tuntap* %82, i32 %83, %struct.env_set* %84, i32* %85)
  br label %87

87:                                               ; preds = %80
  %88 = load %struct.route_ipv6*, %struct.route_ipv6** %14, align 8
  %89 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %88, i32 0, i32 0
  %90 = load %struct.route_ipv6*, %struct.route_ipv6** %89, align 8
  store %struct.route_ipv6* %90, %struct.route_ipv6** %14, align 8
  br label %77

91:                                               ; preds = %77
  %92 = load i32, i32* @RL_ROUTES_ADDED, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %95 = getelementptr inbounds %struct.route_ipv6_list, %struct.route_ipv6_list* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %91, %66, %63
  %99 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %100 = icmp ne %struct.route_ipv6_list* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %8, align 8
  %103 = call i32 @clear_route_ipv6_list(%struct.route_ipv6_list* %102)
  br label %104

104:                                              ; preds = %101, %98
  ret void
}

declare dso_local i32 @delete_route(%struct.route_ipv4*, %struct.tuntap*, i32, i32*, %struct.env_set*, i32*) #1

declare dso_local i32 @undo_redirect_default_route_to_vpn(%struct.route_list*, %struct.tuntap*, i32, %struct.env_set*, i32*) #1

declare dso_local i32 @clear_route_list(%struct.route_list*) #1

declare dso_local i32 @delete_route_ipv6(%struct.route_ipv6*, %struct.tuntap*, i32, %struct.env_set*, i32*) #1

declare dso_local i32 @clear_route_ipv6_list(%struct.route_ipv6_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
