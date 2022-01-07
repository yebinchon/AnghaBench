; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_local_route.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_local_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_gateway_info = type { i32, i64, %struct.route_gateway_address*, %struct.TYPE_2__ }
%struct.route_gateway_address = type { i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@RGI_ADDR_DEFINED = common dso_local global i32 0, align 4
@RGI_NETMASK_DEFINED = common dso_local global i32 0, align 4
@RGI_IFACE_DEFINED = common dso_local global i32 0, align 4
@LR_MATCH = common dso_local global i32 0, align 4
@LR_NOMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, %struct.route_gateway_info*)* @local_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_route(i64 %0, i64 %1, i64 %2, %struct.route_gateway_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.route_gateway_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.route_gateway_address*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.route_gateway_info* %3, %struct.route_gateway_info** %9, align 8
  %13 = load i32, i32* @RGI_ADDR_DEFINED, align 4
  %14 = load i32, i32* @RGI_NETMASK_DEFINED, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RGI_IFACE_DEFINED, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.route_gateway_info*, %struct.route_gateway_info** %9, align 8
  %19 = icmp ne %struct.route_gateway_info* %18, null
  br i1 %19, label %20, label %84

20:                                               ; preds = %4
  %21 = load %struct.route_gateway_info*, %struct.route_gateway_info** %9, align 8
  %22 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %84

28:                                               ; preds = %20
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.route_gateway_info*, %struct.route_gateway_info** %9, align 8
  %31 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %28
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 4294967295
  br i1 %37, label %38, label %84

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.route_gateway_info*, %struct.route_gateway_info** %9, align 8
  %41 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = xor i64 %39, %43
  %45 = load %struct.route_gateway_info*, %struct.route_gateway_info** %9, align 8
  %46 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %44, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @LR_MATCH, align 4
  store i32 %52, i32* %5, align 4
  br label %86

53:                                               ; preds = %38
  store i64 0, i64* %11, align 8
  br label %54

54:                                               ; preds = %79, %53
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.route_gateway_info*, %struct.route_gateway_info** %9, align 8
  %57 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load %struct.route_gateway_info*, %struct.route_gateway_info** %9, align 8
  %62 = getelementptr inbounds %struct.route_gateway_info, %struct.route_gateway_info* %61, i32 0, i32 2
  %63 = load %struct.route_gateway_address*, %struct.route_gateway_address** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %63, i64 %64
  store %struct.route_gateway_address* %65, %struct.route_gateway_address** %12, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.route_gateway_address*, %struct.route_gateway_address** %12, align 8
  %68 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = xor i64 %66, %69
  %71 = load %struct.route_gateway_address*, %struct.route_gateway_address** %12, align 8
  %72 = getelementptr inbounds %struct.route_gateway_address, %struct.route_gateway_address* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %70, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i32, i32* @LR_MATCH, align 4
  store i32 %77, i32* %5, align 4
  br label %86

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %11, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %11, align 8
  br label %54

82:                                               ; preds = %54
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %35, %28, %20, %4
  %85 = load i32, i32* @LR_NOMATCH, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %76, %51
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
