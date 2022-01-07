; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_add_route.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_add_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_ipv4 = type { i32, i32, i32, i32, i32 }
%struct.tuntap = type { i32 }
%struct.route_gateway_info = type { i8*, i32 }
%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }
%struct.argv = type { i32 }

@RT_DEFINED = common dso_local global i32 0, align 4
@LR_ERROR = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [125 x i8] c"Sorry, but I don't know how to do 'route' commands on this operating system.  Try putting your routes in a --route-up script\00", align 1
@RT_ADDED = common dso_local global i32 0, align 4
@D_ROUTE = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@ROUTE_METHOD_ADAPTIVE = common dso_local global i32 0, align 4
@ROUTE_METHOD_EXE = common dso_local global i32 0, align 4
@ROUTE_METHOD_IPAPI = common dso_local global i32 0, align 4
@ROUTE_METHOD_MASK = common dso_local global i32 0, align 4
@ROUTE_METHOD_SERVICE = common dso_local global i32 0, align 4
@ROUTE_PATH = common dso_local global i32 0, align 4
@RT_METRIC_DEFINED = common dso_local global i32 0, align 4
@TUN_ADAPTER_INDEX_INVALID = common dso_local global i32 0, align 4
@WIN_ROUTE_PATH_SUFFIX = common dso_local global i32 0, align 4
@management = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_route(%struct.route_ipv4* %0, %struct.tuntap* %1, i32 %2, %struct.route_gateway_info* %3, %struct.env_set* %4, i32* %5) #0 {
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
  %19 = alloca i32, align 4
  store %struct.route_ipv4* %0, %struct.route_ipv4** %7, align 8
  store %struct.tuntap* %1, %struct.tuntap** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.route_gateway_info* %3, %struct.route_gateway_info** %10, align 8
  store %struct.env_set* %4, %struct.env_set** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = call i32 (...) @argv_new()
  %21 = getelementptr inbounds %struct.argv, %struct.argv* %14, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %23 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RT_DEFINED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  br label %82

29:                                               ; preds = %6
  %30 = call i32 @gc_init(%struct.gc_arena* %13)
  %31 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %32 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @print_in_addr_t(i32 %33, i32 0, %struct.gc_arena* %13)
  store i8* %34, i8** %15, align 8
  %35 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %36 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @print_in_addr_t(i32 %37, i32 0, %struct.gc_arena* %13)
  store i8* %38, i8** %16, align 8
  %39 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %40 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @print_in_addr_t(i32 %41, i32 0, %struct.gc_arena* %13)
  store i8* %42, i8** %17, align 8
  %43 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %44 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %47 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %50 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.route_gateway_info*, %struct.route_gateway_info** %10, align 8
  %53 = call i32 @local_route(i32 %45, i32 %48, i32 %51, %struct.route_gateway_info* %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* @LR_ERROR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %29
  br label %61

58:                                               ; preds = %29
  %59 = load i32, i32* @M_FATAL, align 4
  %60 = call i32 (i32, i8*, ...) @msg(i32 %59, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @RT_ADDED, align 4
  %66 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %67 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %77

70:                                               ; preds = %61
  %71 = load i32, i32* @RT_ADDED, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.route_ipv4*, %struct.route_ipv4** %7, align 8
  %74 = getelementptr inbounds %struct.route_ipv4, %struct.route_ipv4* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %70, %64
  %78 = call i32 @argv_reset(%struct.argv* %14)
  %79 = call i32 @gc_free(%struct.gc_arena* %13)
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @net_ctx_reset(i32* %80)
  br label %82

82:                                               ; preds = %77, %28
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
