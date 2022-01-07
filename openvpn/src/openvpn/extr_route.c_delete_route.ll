; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_delete_route.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_delete_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_ipv4 = type { i32, i32, i32, i32, i32 }
%struct.tuntap = type { i32 }
%struct.route_gateway_info = type { i32 }
%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }
%struct.argv = type { i32 }

@RT_DEFINED = common dso_local global i32 0, align 4
@RT_ADDED = common dso_local global i32 0, align 4
@LR_ERROR = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [125 x i8] c"Sorry, but I don't know how to do 'route' commands on this operating system.  Try putting your routes in a --route-up script\00", align 1
@D_ROUTE = common dso_local global i32 0, align 4
@M_NONFATAL = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@ROUTE_METHOD_ADAPTIVE = common dso_local global i32 0, align 4
@ROUTE_METHOD_EXE = common dso_local global i32 0, align 4
@ROUTE_METHOD_IPAPI = common dso_local global i32 0, align 4
@ROUTE_METHOD_MASK = common dso_local global i32 0, align 4
@ROUTE_METHOD_SERVICE = common dso_local global i32 0, align 4
@ROUTE_PATH = common dso_local global i32 0, align 4
@RT_METRIC_DEFINED = common dso_local global i32 0, align 4
@WIN_ROUTE_PATH_SUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.route_ipv4*, %struct.tuntap*, i32, %struct.route_gateway_info*, %struct.env_set*, i32*)* @delete_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_route(%struct.route_ipv4* %0, %struct.tuntap* %1, i32 %2, %struct.route_gateway_info* %3, %struct.env_set* %4, i32* %5) #0 {
  %7 = alloca %struct.route_ipv4*, align 8
  %8 = alloca %struct.tuntap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.route_gateway_info*, align 8
  %11 = alloca %struct.env_set*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.gc_arena, align 4
  %14 = alloca %struct.argv, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.route_ipv4* %0, %struct.route_ipv4** %7, align 8
  store %struct.tuntap* %1, %struct.tuntap** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.route_gateway_info* %3, %struct.route_gateway_info** %10, align 8
  store %struct.env_set* %4, %struct.env_set** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = call i32 (...) @argv_new()
  %20 = getelementptr inbounds %struct.argv, %struct.argv* %14, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %22 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RT_DEFINED, align 4
  %25 = load i32, i32* @RT_ADDED, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @RT_DEFINED, align 4
  %29 = load i32, i32* @RT_ADDED, align 4
  %30 = or i32 %28, %29
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %76

33:                                               ; preds = %6
  %34 = call i32 @gc_init(%struct.gc_arena* %13)
  %35 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %36 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @print_in_addr_t(i32 %37, i32 0, %struct.gc_arena* %13)
  store i8* %38, i8** %15, align 8
  %39 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %40 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @print_in_addr_t(i32 %41, i32 0, %struct.gc_arena* %13)
  store i8* %42, i8** %16, align 8
  %43 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %44 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @print_in_addr_t(i32 %45, i32 0, %struct.gc_arena* %13)
  store i8* %46, i8** %17, align 8
  %47 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %48 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %51 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %54 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.route_gateway_info*, %struct.route_gateway_info** %10, align 8
  %57 = call i32 @local_route(i32 %49, i32 %52, i32 %55, %struct.route_gateway_info* %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* @LR_ERROR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %33
  br label %65

62:                                               ; preds = %33
  %63 = load i32, i32* @M_FATAL, align 4
  %64 = call i32 (i32, i8*, ...) @msg(i32 %63, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %61
  %66 = load i32, i32* @RT_ADDED, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %69 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = call i32 @argv_reset(%struct.argv* %14)
  %73 = call i32 @gc_free(%struct.gc_arena* %13)
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @net_ctx_reset(i32* %74)
  br label %76

76:                                               ; preds = %65, %32
  ret void
}

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @gc_init(%struct.gc_arena*) #1

declare dso_local i8* @print_in_addr_t(i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @local_route(i32, i32, i32, %struct.route_gateway_info*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

declare dso_local i32 @net_ctx_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
