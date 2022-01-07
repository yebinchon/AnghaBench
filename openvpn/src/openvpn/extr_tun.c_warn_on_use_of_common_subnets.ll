; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_warn_on_use_of_common_subnets.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_warn_on_use_of_common_subnets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }
%struct.route_gateway_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RGI_ADDR_DEFINED = common dso_local global i32 0, align 4
@RGI_NETMASK_DEFINED = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [245 x i8] c"NOTE: your local LAN uses the extremely common subnet address 192.168.0.x or 192.168.1.x.  Be aware that this might create routing conflicts if you connect to the VPN server from public locations such as internet cafes that use the same subnet.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warn_on_use_of_common_subnets(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.gc_arena, align 4
  %4 = alloca %struct.route_gateway_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call i32 (...) @gc_new()
  %8 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @RGI_ADDR_DEFINED, align 4
  %10 = load i32, i32* @RGI_NETMASK_DEFINED, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @get_default_gateway(%struct.route_gateway_info* %4, i32* %12)
  %14 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %4, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %4, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, -1062731776
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, -1062731520
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %20
  %34 = load i32, i32* @M_WARN, align 4
  %35 = call i32 @msg(i32 %34, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %1
  %38 = call i32 @gc_free(%struct.gc_arena* %3)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @get_default_gateway(%struct.route_gateway_info*, i32*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
