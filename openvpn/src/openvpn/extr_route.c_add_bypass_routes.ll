; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_add_bypass_routes.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_add_bypass_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_bypass = type { i32, i64* }
%struct.tuntap = type { i32 }
%struct.route_gateway_info = type { i32 }
%struct.env_set = type { i32 }

@IPV4_NETMASK_HOST = common dso_local global i32 0, align 4
@ROUTE_REF_GW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.route_bypass*, i32, %struct.tuntap*, i32, %struct.route_gateway_info*, %struct.env_set*, i32*)* @add_bypass_routes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_bypass_routes(%struct.route_bypass* %0, i32 %1, %struct.tuntap* %2, i32 %3, %struct.route_gateway_info* %4, %struct.env_set* %5, i32* %6) #0 {
  %8 = alloca %struct.route_bypass*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tuntap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.route_gateway_info*, align 8
  %13 = alloca %struct.env_set*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.route_bypass* %0, %struct.route_bypass** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.tuntap* %2, %struct.tuntap** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.route_gateway_info* %4, %struct.route_gateway_info** %12, align 8
  store %struct.env_set* %5, %struct.env_set** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %50, %7
  %17 = load i32, i32* %15, align 4
  %18 = load %struct.route_bypass*, %struct.route_bypass** %8, align 8
  %19 = getelementptr inbounds %struct.route_bypass, %struct.route_bypass* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %16
  %23 = load %struct.route_bypass*, %struct.route_bypass** %8, align 8
  %24 = getelementptr inbounds %struct.route_bypass, %struct.route_bypass* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load %struct.route_bypass*, %struct.route_bypass** %8, align 8
  %33 = getelementptr inbounds %struct.route_bypass, %struct.route_bypass* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @IPV4_NETMASK_HOST, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.tuntap*, %struct.tuntap** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @ROUTE_REF_GW, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.route_gateway_info*, %struct.route_gateway_info** %12, align 8
  %46 = load %struct.env_set*, %struct.env_set** %13, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @add_route3(i64 %38, i32 %39, i32 %40, %struct.tuntap* %41, i32 %44, %struct.route_gateway_info* %45, %struct.env_set* %46, i32* %47)
  br label %49

49:                                               ; preds = %31, %22
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %16

53:                                               ; preds = %16
  ret void
}

declare dso_local i32 @add_route3(i64, i32, i32, %struct.tuntap*, i32, %struct.route_gateway_info*, %struct.env_set*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
