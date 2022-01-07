; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_web_server_config_options.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_web_server_config_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_SECTION_WEB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"disconnect idle clients after seconds\00", align 1
@web_client_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"timeout for first request\00", align 1
@web_client_first_request_timeout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"accept a streaming request every seconds\00", align 1
@web_client_streaming_rate_t = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"respect do not track policy\00", align 1
@respect_web_browser_do_not_track_policy = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"x-frame-options response header\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@web_x_frame_options = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"allow connections from\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"localhost *\00", align 1
@SIMPLE_PATTERN_EXACT = common dso_local global i32 0, align 4
@web_allow_connections_from = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"allow connections by dns\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"heuristic\00", align 1
@web_allow_connections_dns = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"allow dashboard from\00", align 1
@web_allow_dashboard_from = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"allow dashboard by dns\00", align 1
@web_allow_dashboard_dns = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"allow badges from\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@web_allow_badges_from = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"allow badges by dns\00", align 1
@web_allow_badges_dns = common dso_local global i8* null, align 8
@CONFIG_SECTION_REGISTRY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"allow from\00", align 1
@web_allow_registry_from = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"allow by dns\00", align 1
@web_allow_registry_dns = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [21 x i8] c"allow streaming from\00", align 1
@web_allow_streaming_from = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [23 x i8] c"allow streaming by dns\00", align 1
@web_allow_streaming_dns = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c"allow netdata.conf from\00", align 1
@.str.20 = private unnamed_addr constant [173 x i8] c"localhost fd* 10.* 192.168.* 172.16.* 172.17.* 172.18.* 172.19.* 172.20.* 172.21.* 172.22.* 172.23.* 172.24.* 172.25.* 172.26.* 172.27.* 172.28.* 172.29.* 172.30.* 172.31.*\00", align 1
@web_allow_netdataconf_from = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [26 x i8] c"allow netdata.conf by dns\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@web_allow_mgmt_from = common dso_local global i8* null, align 8
@web_allow_netdataconf_dns = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [22 x i8] c"allow management from\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"allow management by dns\00", align 1
@web_allow_mgmt_dns = common dso_local global i8* null, align 8
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_FILTERED = common dso_local global i32 0, align 4
@Z_FIXED = common dso_local global i32 0, align 4
@Z_HUFFMAN_ONLY = common dso_local global i32 0, align 4
@Z_RLE = common dso_local global i32 0, align 4
@web_enable_gzip = common dso_local global i32 0, align 4
@web_gzip_level = common dso_local global i32 0, align 4
@web_gzip_strategy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @web_server_config_options() #0 {
  %1 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %2 = load i32, i32* @web_client_timeout, align 4
  %3 = call i32 @config_get_number(i32 %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* @web_client_timeout, align 4
  %4 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %5 = load i32, i32* @web_client_first_request_timeout, align 4
  %6 = call i32 @config_get_number(i32 %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  store i32 %6, i32* @web_client_first_request_timeout, align 4
  %7 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %8 = load i32, i32* @web_client_streaming_rate_t, align 4
  %9 = call i32 @config_get_number(i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  store i32 %9, i32* @web_client_streaming_rate_t, align 4
  %10 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %11 = load i32, i32* @respect_web_browser_do_not_track_policy, align 4
  %12 = call i32 @config_get_boolean(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %11)
  store i32 %12, i32* @respect_web_browser_do_not_track_policy, align 4
  %13 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %14 = call i8* @config_get(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** @web_x_frame_options, align 8
  %16 = load i32*, i32** @web_x_frame_options, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  store i32* null, i32** @web_x_frame_options, align 8
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %22 = call i8* @config_get(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %23 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %24 = call i8* @simple_pattern_create(i8* %22, i32* null, i32 %23)
  store i8* %24, i8** @web_allow_connections_from, align 8
  %25 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %26 = load i8*, i8** @web_allow_connections_from, align 8
  %27 = call i8* @make_dns_decision(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %26)
  store i8* %27, i8** @web_allow_connections_dns, align 8
  %28 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %29 = call i8* @config_get(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %30 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %31 = call i8* @simple_pattern_create(i8* %29, i32* null, i32 %30)
  store i8* %31, i8** @web_allow_dashboard_from, align 8
  %32 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %33 = load i8*, i8** @web_allow_dashboard_from, align 8
  %34 = call i8* @make_dns_decision(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %33)
  store i8* %34, i8** @web_allow_dashboard_dns, align 8
  %35 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %36 = call i8* @config_get(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %37 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %38 = call i8* @simple_pattern_create(i8* %36, i32* null, i32 %37)
  store i8* %38, i8** @web_allow_badges_from, align 8
  %39 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %40 = load i8*, i8** @web_allow_badges_from, align 8
  %41 = call i8* @make_dns_decision(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %40)
  store i8* %41, i8** @web_allow_badges_dns, align 8
  %42 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %43 = call i8* @config_get(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %44 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %45 = call i8* @simple_pattern_create(i8* %43, i32* null, i32 %44)
  store i8* %45, i8** @web_allow_registry_from, align 8
  %46 = load i32, i32* @CONFIG_SECTION_REGISTRY, align 4
  %47 = load i8*, i8** @web_allow_registry_from, align 8
  %48 = call i8* @make_dns_decision(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %47)
  store i8* %48, i8** @web_allow_registry_dns, align 8
  %49 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %50 = call i8* @config_get(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %51 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %52 = call i8* @simple_pattern_create(i8* %50, i32* null, i32 %51)
  store i8* %52, i8** @web_allow_streaming_from, align 8
  %53 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %54 = load i8*, i8** @web_allow_streaming_from, align 8
  %55 = call i8* @make_dns_decision(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %54)
  store i8* %55, i8** @web_allow_streaming_dns, align 8
  %56 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %57 = call i8* @config_get(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.20, i64 0, i64 0))
  %58 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %59 = call i8* @simple_pattern_create(i8* %57, i32* null, i32 %58)
  store i8* %59, i8** @web_allow_netdataconf_from, align 8
  %60 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %61 = load i8*, i8** @web_allow_mgmt_from, align 8
  %62 = call i8* @make_dns_decision(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* %61)
  store i8* %62, i8** @web_allow_netdataconf_dns, align 8
  %63 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %64 = call i8* @config_get(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %65 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %66 = call i8* @simple_pattern_create(i8* %64, i32* null, i32 %65)
  store i8* %66, i8** @web_allow_mgmt_from, align 8
  %67 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %68 = load i8*, i8** @web_allow_mgmt_from, align 8
  %69 = call i8* @make_dns_decision(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %68)
  store i8* %69, i8** @web_allow_mgmt_dns, align 8
  ret void
}

declare dso_local i32 @config_get_number(i32, i8*, i32) #1

declare dso_local i32 @config_get_boolean(i32, i8*, i32) #1

declare dso_local i8* @config_get(i32, i8*, i8*) #1

declare dso_local i8* @simple_pattern_create(i8*, i32*, i32) #1

declare dso_local i8* @make_dns_decision(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
