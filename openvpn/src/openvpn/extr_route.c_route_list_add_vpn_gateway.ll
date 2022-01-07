; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_route_list_add_vpn_gateway.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_route_list_add_vpn_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_list = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.env_set = type { i32 }

@RTSA_REMOTE_ENDPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vpn_gateway\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @route_list_add_vpn_gateway(%struct.route_list* %0, %struct.env_set* %1, i32 %2) #0 {
  %4 = alloca %struct.route_list*, align 8
  %5 = alloca %struct.env_set*, align 8
  %6 = alloca i32, align 4
  store %struct.route_list* %0, %struct.route_list** %4, align 8
  store %struct.env_set* %1, %struct.env_set** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.route_list*, %struct.route_list** %4, align 8
  %8 = call i32 @ASSERT(%struct.route_list* %7)
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.route_list*, %struct.route_list** %4, align 8
  %11 = getelementptr inbounds %struct.route_list, %struct.route_list* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @RTSA_REMOTE_ENDPOINT, align 4
  %14 = load %struct.route_list*, %struct.route_list** %4, align 8
  %15 = getelementptr inbounds %struct.route_list, %struct.route_list* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %13
  store i32 %18, i32* %16, align 4
  %19 = load %struct.env_set*, %struct.env_set** %5, align 8
  %20 = load %struct.route_list*, %struct.route_list** %4, align 8
  %21 = getelementptr inbounds %struct.route_list, %struct.route_list* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @setenv_route_addr(%struct.env_set* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23, i32 -1)
  ret void
}

declare dso_local i32 @ASSERT(%struct.route_list*) #1

declare dso_local i32 @setenv_route_addr(%struct.env_set*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
