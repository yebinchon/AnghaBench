; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_route.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i64, i64, i32 }
%struct.route_list = type { i32 }
%struct.route_ipv6_list = type { i32 }
%struct.tuntap = type { i32 }
%struct.plugin_list = type { i32 }
%struct.env_set = type { i32 }
%struct.argv = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"redirect_gateway\00", align 1
@OPENVPN_PLUGIN_ROUTE_UP = common dso_local global i32 0, align 4
@OPENVPN_PLUGIN_FUNC_SUCCESS = common dso_local global i64 0, align 8
@M_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"WARNING: route-up plugin call failed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"script_type\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"route-up\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"--route-up\00", align 1
@D_SHOW_NET = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@M_NOPREFIX = common dso_local global i32 0, align 4
@management = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_route(%struct.options* %0, %struct.route_list* %1, %struct.route_ipv6_list* %2, %struct.tuntap* %3, %struct.plugin_list* %4, %struct.env_set* %5, i32* %6) #0 {
  %8 = alloca %struct.options*, align 8
  %9 = alloca %struct.route_list*, align 8
  %10 = alloca %struct.route_ipv6_list*, align 8
  %11 = alloca %struct.tuntap*, align 8
  %12 = alloca %struct.plugin_list*, align 8
  %13 = alloca %struct.env_set*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.argv, align 4
  store %struct.options* %0, %struct.options** %8, align 8
  store %struct.route_list* %1, %struct.route_list** %9, align 8
  store %struct.route_ipv6_list* %2, %struct.route_ipv6_list** %10, align 8
  store %struct.tuntap* %3, %struct.tuntap** %11, align 8
  store %struct.plugin_list* %4, %struct.plugin_list** %12, align 8
  store %struct.env_set* %5, %struct.env_set** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load %struct.options*, %struct.options** %8, align 8
  %17 = getelementptr inbounds %struct.options, %struct.options* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %7
  %21 = load %struct.route_list*, %struct.route_list** %9, align 8
  %22 = icmp ne %struct.route_list* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %10, align 8
  %25 = icmp ne %struct.route_ipv6_list* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23, %20
  %27 = load %struct.route_list*, %struct.route_list** %9, align 8
  %28 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %10, align 8
  %29 = load %struct.tuntap*, %struct.tuntap** %11, align 8
  %30 = load %struct.options*, %struct.options** %8, align 8
  %31 = call i32 @ROUTE_OPTION_FLAGS(%struct.options* %30)
  %32 = load %struct.env_set*, %struct.env_set** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @add_routes(%struct.route_list* %27, %struct.route_ipv6_list* %28, %struct.tuntap* %29, i32 %31, %struct.env_set* %32, i32* %33)
  %35 = load %struct.env_set*, %struct.env_set** %13, align 8
  %36 = load %struct.route_list*, %struct.route_list** %9, align 8
  %37 = call i32 @route_did_redirect_default_gateway(%struct.route_list* %36)
  %38 = call i32 @setenv_int(%struct.env_set* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %26, %23, %7
  %40 = load %struct.plugin_list*, %struct.plugin_list** %12, align 8
  %41 = load i32, i32* @OPENVPN_PLUGIN_ROUTE_UP, align 4
  %42 = call i64 @plugin_defined(%struct.plugin_list* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.plugin_list*, %struct.plugin_list** %12, align 8
  %46 = load i32, i32* @OPENVPN_PLUGIN_ROUTE_UP, align 4
  %47 = load %struct.env_set*, %struct.env_set** %13, align 8
  %48 = call i64 @plugin_call(%struct.plugin_list* %45, i32 %46, i32* null, i32* null, %struct.env_set* %47)
  %49 = load i64, i64* @OPENVPN_PLUGIN_FUNC_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @M_WARN, align 4
  %53 = call i32 @msg(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %44
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.options*, %struct.options** %8, align 8
  %57 = getelementptr inbounds %struct.options, %struct.options* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = call i32 (...) @argv_new()
  %62 = getelementptr inbounds %struct.argv, %struct.argv* %15, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.env_set*, %struct.env_set** %13, align 8
  %64 = call i32 @setenv_str(%struct.env_set* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.options*, %struct.options** %8, align 8
  %66 = getelementptr inbounds %struct.options, %struct.options* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @argv_parse_cmd(%struct.argv* %15, i64 %67)
  %69 = load %struct.env_set*, %struct.env_set** %13, align 8
  %70 = call i32 @openvpn_run_script(%struct.argv* %15, %struct.env_set* %69, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %71 = call i32 @argv_reset(%struct.argv* %15)
  br label %72

72:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @add_routes(%struct.route_list*, %struct.route_ipv6_list*, %struct.tuntap*, i32, %struct.env_set*, i32*) #1

declare dso_local i32 @ROUTE_OPTION_FLAGS(%struct.options*) #1

declare dso_local i32 @setenv_int(%struct.env_set*, i8*, i32) #1

declare dso_local i32 @route_did_redirect_default_gateway(%struct.route_list*) #1

declare dso_local i64 @plugin_defined(%struct.plugin_list*, i32) #1

declare dso_local i64 @plugin_call(%struct.plugin_list*, i32, i32*, i32*, %struct.env_set*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @setenv_str(%struct.env_set*, i8*, i8*) #1

declare dso_local i32 @argv_parse_cmd(%struct.argv*, i64) #1

declare dso_local i32 @openvpn_run_script(%struct.argv*, %struct.env_set*, i32, i8*) #1

declare dso_local i32 @argv_reset(%struct.argv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
