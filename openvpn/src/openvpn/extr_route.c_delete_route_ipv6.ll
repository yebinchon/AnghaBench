; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_delete_route_ipv6.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_delete_route_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.route_ipv6 = type { i32, i8*, i32, i32, i32, i32, i32 }
%struct.tuntap = type { i8*, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.env_set = type { i32 }
%struct.gc_arena = type { i32 }
%struct.argv = type { i32 }

@RT_DEFINED = common dso_local global i32 0, align 4
@RT_ADDED = common dso_local global i32 0, align 4
@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"delete_route_ipv6(%s/%d)\00", align 1
@DEV_TYPE_TAP = common dso_local global i64 0, align 8
@RT_METRIC_DEFINED = common dso_local global i32 0, align 4
@M_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [132 x i8] c"Sorry, but I don't know how to do 'route ipv6' commands on this operating system.  Try putting your routes in a --route-down script\00", align 1
@DEV_TYPE_TUN = common dso_local global i64 0, align 8
@D_ROUTE = common dso_local global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@NETSH_PATH_SUFFIX = common dso_local global i32 0, align 4
@ROUTE_PATH = common dso_local global i32 0, align 4
@r = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_route_ipv6(%struct.route_ipv6* %0, %struct.tuntap* %1, i32 %2, %struct.env_set* %3, i32* %4) #0 {
  %6 = alloca %struct.route_ipv6*, align 8
  %7 = alloca %struct.tuntap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.env_set*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.gc_arena, align 4
  %12 = alloca %struct.argv, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.route_ipv6* %0, %struct.route_ipv6** %6, align 8
  store %struct.tuntap* %1, %struct.tuntap** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.env_set* %3, %struct.env_set** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = call i32 (...) @argv_new()
  %18 = getelementptr inbounds %struct.argv, %struct.argv* %12, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %20 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.route_ipv6*, %struct.route_ipv6** %6, align 8
  %23 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RT_DEFINED, align 4
  %26 = load i32, i32* @RT_ADDED, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @RT_DEFINED, align 4
  %30 = load i32, i32* @RT_ADDED, align 4
  %31 = or i32 %29, %30
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %84

34:                                               ; preds = %5
  %35 = load %struct.route_ipv6*, %struct.route_ipv6** %6, align 8
  %36 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.route_ipv6*, %struct.route_ipv6** %6, align 8
  %41 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %15, align 8
  store i32 1, i32* %16, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = call i32 @gc_init(%struct.gc_arena* %11)
  %45 = load %struct.route_ipv6*, %struct.route_ipv6** %6, align 8
  %46 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @print_in6_addr(i32 %47, i32 0, %struct.gc_arena* %11)
  store i8* %48, i8** %13, align 8
  %49 = load %struct.route_ipv6*, %struct.route_ipv6** %6, align 8
  %50 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @print_in6_addr(i32 %51, i32 0, %struct.gc_arena* %11)
  store i8* %52, i8** %14, align 8
  %53 = load i32, i32* @M_INFO, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load %struct.route_ipv6*, %struct.route_ipv6** %6, align 8
  %56 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @msg(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %57)
  %59 = load %struct.tuntap*, %struct.tuntap** %7, align 8
  %60 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DEV_TYPE_TAP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %43
  %65 = load %struct.route_ipv6*, %struct.route_ipv6** %6, align 8
  %66 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RT_METRIC_DEFINED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.route_ipv6*, %struct.route_ipv6** %6, align 8
  %73 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %64
  store i32 1, i32* %16, align 4
  br label %77

77:                                               ; preds = %76, %71, %43
  %78 = load i32, i32* @M_FATAL, align 4
  %79 = call i32 (i32, i8*, ...) @msg(i32 %78, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @argv_reset(%struct.argv* %12)
  %81 = call i32 @gc_free(%struct.gc_arena* %11)
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @net_ctx_reset(i32* %82)
  br label %84

84:                                               ; preds = %77, %33
  ret void
}

declare dso_local i32 @argv_new(...) #1

declare dso_local i32 @gc_init(%struct.gc_arena*) #1

declare dso_local i8* @print_in6_addr(i32, i32, %struct.gc_arena*) #1

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
