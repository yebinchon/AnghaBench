; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_route_ipv6_list.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_route_ipv6_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i8*, i8*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.route_ipv6_list = type { i32 }
%struct.link_socket_info = type { i32 }
%struct.env_set = type { i32 }

@RG_REROUTE_GW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"::/3\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"2000::/4\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"3000::/4\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fc00::/7\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*, %struct.route_ipv6_list*, %struct.link_socket_info*, %struct.env_set*, i32*)* @do_init_route_ipv6_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_route_ipv6_list(%struct.options* %0, %struct.route_ipv6_list* %1, %struct.link_socket_info* %2, %struct.env_set* %3, i32* %4) #0 {
  %6 = alloca %struct.options*, align 8
  %7 = alloca %struct.route_ipv6_list*, align 8
  %8 = alloca %struct.link_socket_info*, align 8
  %9 = alloca %struct.env_set*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [5 x i8*], align 16
  %14 = alloca i32, align 4
  store %struct.options* %0, %struct.options** %6, align 8
  store %struct.route_ipv6_list* %1, %struct.route_ipv6_list** %7, align 8
  store %struct.link_socket_info* %2, %struct.link_socket_info** %8, align 8
  store %struct.env_set* %3, %struct.env_set** %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %12, align 4
  %15 = load %struct.options*, %struct.options** %6, align 8
  %16 = getelementptr inbounds %struct.options, %struct.options* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  %18 = load %struct.options*, %struct.options** %6, align 8
  %19 = getelementptr inbounds %struct.options, %struct.options* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.options*, %struct.options** %6, align 8
  %24 = getelementptr inbounds %struct.options, %struct.options* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %22, %5
  %27 = load %struct.options*, %struct.options** %6, align 8
  %28 = getelementptr inbounds %struct.options, %struct.options* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.options*, %struct.options** %6, align 8
  %33 = getelementptr inbounds %struct.options, %struct.options* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.options*, %struct.options** %6, align 8
  %37 = getelementptr inbounds %struct.options, %struct.options* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RG_REROUTE_GW, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %35
  %45 = bitcast [5 x i8*]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 40, i1 false)
  %46 = bitcast i8* %45 to [5 x i8*]*
  %47 = getelementptr inbounds [5 x i8*], [5 x i8*]* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %47, align 16
  %48 = getelementptr inbounds [5 x i8*], [5 x i8*]* %46, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %48, align 8
  %49 = getelementptr inbounds [5 x i8*], [5 x i8*]* %46, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %49, align 16
  %50 = getelementptr inbounds [5 x i8*], [5 x i8*]* %46, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8** %50, align 8
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %72, %44
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.options*, %struct.options** %6, align 8
  %59 = getelementptr inbounds %struct.options, %struct.options* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.options*, %struct.options** %6, align 8
  %66 = getelementptr inbounds %struct.options, %struct.options* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @string_alloc(i8* %64, i32 %69)
  %71 = call i32 @add_route_ipv6_to_option_list(%struct.TYPE_3__* %60, i32 %70, i32* null, i32* null)
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %51

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75, %35
  %77 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %7, align 8
  %78 = load %struct.options*, %struct.options** %6, align 8
  %79 = getelementptr inbounds %struct.options, %struct.options* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.link_socket_info*, %struct.link_socket_info** %8, align 8
  %84 = call i32 @link_socket_current_remote_ipv6(%struct.link_socket_info* %83)
  %85 = load %struct.env_set*, %struct.env_set** %9, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i64 @init_route_ipv6_list(%struct.route_ipv6_list* %77, %struct.TYPE_3__* %80, i8* %81, i32 %82, i32 %84, %struct.env_set* %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load %struct.env_set*, %struct.env_set** %9, align 8
  %91 = load %struct.route_ipv6_list*, %struct.route_ipv6_list** %7, align 8
  %92 = call i32 @setenv_routes_ipv6(%struct.env_set* %90, %struct.route_ipv6_list* %91)
  br label %93

93:                                               ; preds = %89, %76
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @add_route_ipv6_to_option_list(%struct.TYPE_3__*, i32, i32*, i32*) #2

declare dso_local i32 @string_alloc(i8*, i32) #2

declare dso_local i64 @init_route_ipv6_list(%struct.route_ipv6_list*, %struct.TYPE_3__*, i8*, i32, i32, %struct.env_set*, i32*) #2

declare dso_local i32 @link_socket_current_remote_ipv6(%struct.link_socket_info*) #2

declare dso_local i32 @setenv_routes_ipv6(%struct.env_set*, %struct.route_ipv6_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
