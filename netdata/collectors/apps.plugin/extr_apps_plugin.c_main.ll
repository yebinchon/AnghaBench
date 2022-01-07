; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_main.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@pagesize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"apps.plugin\00", align 1
@program_name = common dso_local global i8* null, align 8
@error_log_syslog = common dso_local global i64 0, align 8
@error_log_errors_per_period = common dso_local global i32 0, align 4
@error_log_throttle_period = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@procfile_open_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"NETDATA_HOST_PREFIX\00", align 1
@netdata_configured_host_prefix = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"NETDATA_USER_CONFIG_DIR\00", align 1
@user_config_dir = common dso_local global i32* null, align 8
@CONFIG_DIR = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"NETDATA_STOCK_CONFIG_DIR\00", align 1
@stock_config_dir = common dso_local global i32* null, align 8
@LIBCONFIG_DIR = common dso_local global i32* null, align 8
@procfile_adaptive_initial_allocation = common dso_local global i32 0, align 4
@system_hz = common dso_local global i64 0, align 8
@time_factor = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [307 x i8] c"apps.plugin should either run as root (now running with uid %u, euid %u) or have special capabilities. Without these, apps.plugin cannot report disk I/O utilization of other processes. Your system does not support capabilities. To enable setuid to root run: sudo chown root:netdata %s; sudo chmod 4750 %s; \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"started on pid %d\00", align 1
@all_user_ids = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"%s/etc/passwd\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"passwd file: '%s'\00", align 1
@all_group_ids = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"%s/etc/group\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"group file: '%s'\00", align 1
@pid_max = common dso_local global i64 0, align 8
@all_pids_sortlist = common dso_local global i8* null, align 8
@all_pids = common dso_local global i8* null, align 8
@update_every = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@global_iterations_counter = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [74 x i8] c"Cannot collect /proc data for running processes. Disabling apps.plugin...\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"DISABLE\0A\00", align 1
@apps_groups_root_target = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"apps\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Apps\00", align 1
@enable_users_charts = common dso_local global i32 0, align 4
@users_root_target = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Users\00", align 1
@enable_groups_charts = common dso_local global i32 0, align 4
@groups_root_target = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"User Groups\00", align 1
@stdout = common dso_local global i32 0, align 4
@show_guest_time = common dso_local global i32 0, align 4
@show_guest_time_old = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"done Loop No %zu\00", align 1
@PR_SET_DUMPABLE = common dso_local global i32 0, align 4
@RATES_DETAIL = common dso_local global i64 0, align 8
@RLIMIT_CORE = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i32 0, align 4
@debug_flags = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @_SC_PAGESIZE, align 4
  %13 = call i64 @sysconf(i32 %12)
  store i64 %13, i64* @pagesize, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** @program_name, align 8
  store i64 0, i64* @error_log_syslog, align 8
  store i32 100, i32* @error_log_errors_per_period, align 4
  store i32 3600, i32* @error_log_throttle_period, align 4
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = load i32, i32* @O_NOFOLLOW, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* @procfile_open_flags, align 4
  %17 = call i8* @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** @netdata_configured_host_prefix, align 8
  %18 = call i32 (...) @verify_netdata_host_prefix()
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %2
  %23 = call i8* @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** @user_config_dir, align 8
  %25 = load i32*, i32** @user_config_dir, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32*, i32** @CONFIG_DIR, align 8
  store i32* %28, i32** @user_config_dir, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = call i8* @getenv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** @stock_config_dir, align 8
  %32 = load i32*, i32** @stock_config_dir, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32*, i32** @LIBCONFIG_DIR, align 8
  store i32* %35, i32** @stock_config_dir, align 8
  br label %36

36:                                               ; preds = %34, %29
  store i32 1, i32* @procfile_adaptive_initial_allocation, align 4
  %37 = call i32 (...) @now_monotonic_sec()
  store i32 %37, i32* %6, align 4
  %38 = call i32 (...) @get_system_HZ()
  %39 = load i64, i64* @system_hz, align 8
  store i64 %39, i64* @time_factor, align 8
  %40 = call i32 (...) @get_system_pid_max()
  %41 = call i32 (...) @get_system_cpus()
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @parse_args(i32 %42, i8** %43)
  %45 = call i32 (...) @check_capabilities()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %36
  %48 = call i32 (...) @am_i_running_as_root()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = call i32 (...) @check_proc_1_io()
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = call i8* (...) @getuid()
  store i8* %54, i8** %7, align 8
  %55 = call i8* (...) @geteuid()
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %57, i8* %60, i8* %63)
  br label %65

65:                                               ; preds = %53, %50, %47, %36
  %66 = call i32 (...) @getpid()
  %67 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @all_user_ids, i32 0, i32 0), align 4
  %69 = load i32, i32* @FILENAME_MAX, align 4
  %70 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %71 = call i32 @snprintfz(i32 %68, i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @all_user_ids, i32 0, i32 0), align 4
  %73 = call i32 @debug_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @all_group_ids, i32 0, i32 0), align 4
  %75 = load i32, i32* @FILENAME_MAX, align 4
  %76 = load i8*, i8** @netdata_configured_host_prefix, align 8
  %77 = call i32 @snprintfz(i32 %74, i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @all_group_ids, i32 0, i32 0), align 4
  %79 = call i32 @debug_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  %80 = load i64, i64* @pid_max, align 8
  %81 = call i8* @callocz(i32 4, i64 %80)
  store i8* %81, i8** @all_pids_sortlist, align 8
  %82 = load i64, i64* @pid_max, align 8
  %83 = call i8* @callocz(i32 8, i64 %82)
  store i8* %83, i8** @all_pids, align 8
  %84 = load i32, i32* @update_every, align 4
  %85 = load i32, i32* @USEC_PER_SEC, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %9, align 4
  store i32 1, i32* @global_iterations_counter, align 4
  %87 = call i32 @heartbeat_init(i32* %10)
  br label %88

88:                                               ; preds = %151, %65
  br i1 true, label %89, label %154

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @heartbeat_next(i32* %10, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = call i32 (...) @collect_data_for_all_processes()
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.10, i64 0, i64 0))
  %96 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %97 = call i32 @exit(i32 1) #3
  unreachable

98:                                               ; preds = %89
  %99 = call i32 (...) @calculate_netdata_statistics()
  %100 = load i32, i32* @apps_groups_root_target, align 4
  %101 = call i32 @normalize_utilization(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @send_resource_usage_to_netdata(i32 %102)
  %104 = load i32, i32* @apps_groups_root_target, align 4
  %105 = call i32 @send_charts_updates_to_netdata(i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %106 = load i32, i32* @enable_users_charts, align 4
  %107 = call i64 @likely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load i32, i32* @users_root_target, align 4
  %111 = call i32 @send_charts_updates_to_netdata(i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %98
  %113 = load i32, i32* @enable_groups_charts, align 4
  %114 = call i64 @likely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* @groups_root_target, align 4
  %118 = call i32 @send_charts_updates_to_netdata(i32 %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i32, i32* @apps_groups_root_target, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @send_collected_data_to_netdata(i32 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @enable_users_charts, align 4
  %124 = call i64 @likely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, i32* @users_root_target, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @send_collected_data_to_netdata(i32 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %119
  %131 = load i32, i32* @enable_groups_charts, align 4
  %132 = call i64 @likely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i32, i32* @groups_root_target, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @send_collected_data_to_netdata(i32 %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %130
  %139 = load i32, i32* @stdout, align 4
  %140 = call i32 @fflush(i32 %139)
  %141 = load i32, i32* @show_guest_time, align 4
  store i32 %141, i32* @show_guest_time_old, align 4
  %142 = load i32, i32* @global_iterations_counter, align 4
  %143 = call i32 @debug_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %142)
  %144 = call i32 (...) @now_monotonic_sec()
  %145 = load i32, i32* %6, align 4
  %146 = sub nsw i32 %144, %145
  %147 = icmp sgt i32 %146, 14400
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = call i32 @exit(i32 0) #3
  unreachable

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* @global_iterations_counter, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* @global_iterations_counter, align 4
  br label %88

154:                                              ; preds = %88
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @verify_netdata_host_prefix(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @now_monotonic_sec(...) #1

declare dso_local i32 @get_system_HZ(...) #1

declare dso_local i32 @get_system_pid_max(...) #1

declare dso_local i32 @get_system_cpus(...) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i32 @check_capabilities(...) #1

declare dso_local i32 @am_i_running_as_root(...) #1

declare dso_local i32 @check_proc_1_io(...) #1

declare dso_local i8* @getuid(...) #1

declare dso_local i8* @geteuid(...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @snprintfz(i32, i32, i8*, i8*) #1

declare dso_local i32 @debug_log(i8*, i32) #1

declare dso_local i8* @callocz(i32, i64) #1

declare dso_local i32 @heartbeat_init(i32*) #1

declare dso_local i32 @heartbeat_next(i32*, i32) #1

declare dso_local i32 @collect_data_for_all_processes(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @calculate_netdata_statistics(...) #1

declare dso_local i32 @normalize_utilization(i32) #1

declare dso_local i32 @send_resource_usage_to_netdata(i32) #1

declare dso_local i32 @send_charts_updates_to_netdata(i32, i8*, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @send_collected_data_to_netdata(i32, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
