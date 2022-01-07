; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_set_global_environment.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_set_global_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@default_rrd_update_every = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"NETDATA_UPDATE_EVERY\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"NETDATA_VERSION\00", align 1
@program_version = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"NETDATA_HOSTNAME\00", align 1
@netdata_configured_hostname = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"NETDATA_CONFIG_DIR\00", align 1
@netdata_configured_user_config_dir = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"NETDATA_USER_CONFIG_DIR\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"NETDATA_STOCK_CONFIG_DIR\00", align 1
@netdata_configured_stock_config_dir = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"NETDATA_PLUGINS_DIR\00", align 1
@netdata_configured_primary_plugins_dir = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"NETDATA_WEB_DIR\00", align 1
@netdata_configured_web_dir = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"NETDATA_CACHE_DIR\00", align 1
@netdata_configured_cache_dir = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"NETDATA_LIB_DIR\00", align 1
@netdata_configured_varlib_dir = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"NETDATA_LOG_DIR\00", align 1
@netdata_configured_log_dir = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@netdata_configured_home_dir = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"NETDATA_HOST_PREFIX\00", align 1
@netdata_configured_host_prefix = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"/bin:/usr/bin\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin\00", align 1
@CONFIG_SECTION_PLUGINS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [26 x i8] c"PATH environment variable\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"PYTHONPATH\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"PYTHONPATH environment variable\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"PYTHONUNBUFFERED\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_global_environment() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca [1025 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %5 = load i32, i32* @default_rrd_update_every, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %4, i32 15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %10 = call i32 @setenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %9, i32 1)
  %11 = load i8*, i8** @program_version, align 8
  %12 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %11, i32 1)
  %13 = load i8*, i8** @netdata_configured_hostname, align 8
  %14 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %13, i32 1)
  %15 = load i32, i32* @netdata_configured_user_config_dir, align 4
  %16 = call i8* @verify_required_directory(i32 %15)
  %17 = call i32 @setenv(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %16, i32 1)
  %18 = load i32, i32* @netdata_configured_user_config_dir, align 4
  %19 = call i8* @verify_required_directory(i32 %18)
  %20 = call i32 @setenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %19, i32 1)
  %21 = load i32, i32* @netdata_configured_stock_config_dir, align 4
  %22 = call i8* @verify_required_directory(i32 %21)
  %23 = call i32 @setenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %22, i32 1)
  %24 = load i32, i32* @netdata_configured_primary_plugins_dir, align 4
  %25 = call i8* @verify_required_directory(i32 %24)
  %26 = call i32 @setenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %25, i32 1)
  %27 = load i32, i32* @netdata_configured_web_dir, align 4
  %28 = call i8* @verify_required_directory(i32 %27)
  %29 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %28, i32 1)
  %30 = load i32, i32* @netdata_configured_cache_dir, align 4
  %31 = call i8* @verify_required_directory(i32 %30)
  %32 = call i32 @setenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %31, i32 1)
  %33 = load i32, i32* @netdata_configured_varlib_dir, align 4
  %34 = call i8* @verify_required_directory(i32 %33)
  %35 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %34, i32 1)
  %36 = load i32, i32* @netdata_configured_log_dir, align 4
  %37 = call i8* @verify_required_directory(i32 %36)
  %38 = call i32 @setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %37, i32 1)
  %39 = load i32, i32* @netdata_configured_home_dir, align 4
  %40 = call i8* @verify_required_directory(i32 %39)
  %41 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %40, i32 1)
  %42 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %43 = call i32 @setenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %42, i32 1)
  %44 = call i32 (...) @get_system_timezone()
  %45 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i8* %45, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %49

49:                                               ; preds = %48, %0
  %50 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i64 0, i64 0
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i8*, i32, i8*, i8*, ...) @snprintfz(i8* %50, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0))
  %53 = load i32, i32* @CONFIG_SECTION_PLUGINS, align 4
  %54 = getelementptr inbounds [1025 x i8], [1025 x i8]* %2, i64 0, i64 0
  %55 = call i8* @config_get(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i8* %54)
  %56 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %55, i32 1)
  %57 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store i8* %57, i8** %3, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %61

61:                                               ; preds = %60, %49
  %62 = load i32, i32* @CONFIG_SECTION_PLUGINS, align 4
  %63 = load i8*, i8** %3, align 8
  %64 = call i8* @config_get(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* %63)
  %65 = call i32 @setenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* %64, i32 1)
  %66 = call i32 @setenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 1)
  %67 = call i32 @setenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 1)
  ret void
}

declare dso_local i32 @snprintfz(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i8* @verify_required_directory(i32) #1

declare dso_local i32 @get_system_timezone(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @config_get(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
