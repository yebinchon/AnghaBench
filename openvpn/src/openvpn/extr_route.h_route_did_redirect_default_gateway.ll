; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.h_route_did_redirect_default_gateway.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.h_route_did_redirect_default_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_list = type { i32 }

@RL_DID_REDIRECT_DEFAULT_GATEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.route_list*)* @route_did_redirect_default_gateway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route_did_redirect_default_gateway(%struct.route_list* %0) #0 {
  %2 = alloca %struct.route_list*, align 8
  store %struct.route_list* %0, %struct.route_list** %2, align 8
  %3 = load %struct.route_list*, %struct.route_list** %2, align 8
  %4 = icmp ne %struct.route_list* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.route_list*, %struct.route_list** %2, align 8
  %7 = getelementptr inbounds %struct.route_list, %struct.route_list* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RL_DID_REDIRECT_DEFAULT_GATEWAY, align 4
  %10 = and i32 %8, %9
  %11 = call i64 @BOOL_CAST(i32 %10)
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi i1 [ false, %1 ], [ %12, %5 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i64 @BOOL_CAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
