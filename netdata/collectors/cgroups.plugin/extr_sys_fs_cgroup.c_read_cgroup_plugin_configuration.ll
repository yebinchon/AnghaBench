; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_read_cgroup_plugin_configuration.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_read_cgroup_plugin_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mountinfo = type { i8* }

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@system_page_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@Read_hash = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@Write_hash = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@user_hash = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@system_hash = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"plugin:cgroups\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"update every\00", align 1
@localhost = common dso_local global %struct.TYPE_2__* null, align 8
@cgroup_update_every = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"check for new cgroups every\00", align 1
@cgroup_check_for_new_every = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"use unified cgroups\00", align 1
@cgroup_use_unified_cgroups = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"containers priority\00", align 1
@cgroup_containers_chart_priority = common dso_local global i32 0, align 4
@NETDATA_CHART_PRIO_CGROUPS_CONTAINERS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"enable cpuacct stat (total CPU)\00", align 1
@cgroup_enable_cpuacct_stat = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"enable cpuacct usage (per core CPU)\00", align 1
@cgroup_enable_cpuacct_usage = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"enable memory (used mem including cache)\00", align 1
@cgroup_enable_memory = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"enable detailed memory\00", align 1
@cgroup_enable_detailed_memory = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"enable memory limits fail count\00", align 1
@cgroup_enable_memory_failcnt = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"enable swap memory\00", align 1
@cgroup_enable_swap = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"enable blkio bandwidth\00", align 1
@cgroup_enable_blkio_io = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [24 x i8] c"enable blkio operations\00", align 1
@cgroup_enable_blkio_ops = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"enable blkio throttle bandwidth\00", align 1
@cgroup_enable_blkio_throttle_io = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"enable blkio throttle operations\00", align 1
@cgroup_enable_blkio_throttle_ops = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [31 x i8] c"enable blkio queued operations\00", align 1
@cgroup_enable_blkio_queued_ops = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [31 x i8] c"enable blkio merged operations\00", align 1
@cgroup_enable_blkio_merged_ops = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [36 x i8] c"recheck zero blkio every iterations\00", align 1
@cgroup_recheck_zero_blkio_every_iterations = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [45 x i8] c"recheck zero memory failcnt every iterations\00", align 1
@cgroup_recheck_zero_mem_failcnt_every_iterations = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [46 x i8] c"recheck zero detailed memory every iterations\00", align 1
@cgroup_recheck_zero_mem_detailed_every_iterations = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [24 x i8] c"enable systemd services\00", align 1
@cgroup_enable_systemd_services = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [40 x i8] c"enable systemd services detailed memory\00", align 1
@cgroup_enable_systemd_services_detailed_memory = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [33 x i8] c"report used memory without cache\00", align 1
@cgroup_used_memory_without_cache = common dso_local global i8* null, align 8
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"cpuacct\00", align 1
@.str.29 = private unnamed_addr constant [80 x i8] c"CGROUP: cannot find cpuacct mountinfo. Assuming default: /sys/fs/cgroup/cpuacct\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"/sys/fs/cgroup/cpuacct\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [31 x i8] c"path to /sys/fs/cgroup/cpuacct\00", align 1
@cgroup_cpuacct_base = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [7 x i8] c"cpuset\00", align 1
@.str.34 = private unnamed_addr constant [78 x i8] c"CGROUP: cannot find cpuset mountinfo. Assuming default: /sys/fs/cgroup/cpuset\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"/sys/fs/cgroup/cpuset\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"path to /sys/fs/cgroup/cpuset\00", align 1
@cgroup_cpuset_base = common dso_local global i8* null, align 8
@.str.37 = private unnamed_addr constant [6 x i8] c"blkio\00", align 1
@.str.38 = private unnamed_addr constant [76 x i8] c"CGROUP: cannot find blkio mountinfo. Assuming default: /sys/fs/cgroup/blkio\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"/sys/fs/cgroup/blkio\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"path to /sys/fs/cgroup/blkio\00", align 1
@cgroup_blkio_base = common dso_local global i8* null, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.42 = private unnamed_addr constant [78 x i8] c"CGROUP: cannot find memory mountinfo. Assuming default: /sys/fs/cgroup/memory\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"/sys/fs/cgroup/memory\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"path to /sys/fs/cgroup/memory\00", align 1
@cgroup_memory_base = common dso_local global i8* null, align 8
@.str.45 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@.str.46 = private unnamed_addr constant [80 x i8] c"CGROUP: cannot find devices mountinfo. Assuming default: /sys/fs/cgroup/devices\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"/sys/fs/cgroup/devices\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"path to /sys/fs/cgroup/devices\00", align 1
@cgroup_devices_base = common dso_local global i8* null, align 8
@CONFIG_BOOLEAN_NO = common dso_local global i8* null, align 8
@cgroup_search_in_devices = common dso_local global i64 0, align 8
@.str.49 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@D_CGROUP = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [63 x i8] c"found unified cgroup root using super options, with path: '%s'\00", align 1
@.str.52 = private unnamed_addr constant [66 x i8] c"found unified cgroup root using mountsource info, with path: '%s'\00", align 1
@.str.53 = private unnamed_addr constant [72 x i8] c"CGROUP: cannot find cgroup2 mountinfo. Assuming default: /sys/fs/cgroup\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"path to unified cgroups\00", align 1
@cgroup_unified_base = common dso_local global i8* null, align 8
@.str.56 = private unnamed_addr constant [24 x i8] c"using cgroup root: '%s'\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"max cgroups to allow\00", align 1
@cgroup_root_max = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [29 x i8] c"max cgroups depth to monitor\00", align 1
@cgroup_max_depth = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [40 x i8] c"enable new cgroups detected at run time\00", align 1
@cgroup_enable_new_cgroups_detected_at_runtime = common dso_local global i8* null, align 8
@.str.60 = private unnamed_addr constant [35 x i8] c"enable by default cgroups matching\00", align 1
@.str.61 = private unnamed_addr constant [271 x i8] c" !*/init.scope  !/system.slice/run-*.scope  *.scope  /machine.slice/*.service  !*/vcpu*  !*/emulator  !*.mount  !*.partition  !*.service  !*.socket  !*.slice  !*.swap  !*.user  !/  !/docker  !/libvirt  !/lxc  !/lxc/*/*  !/machine  !/qemu  !/system  !/systemd  !/user  * \00", align 1
@SIMPLE_PATTERN_EXACT = common dso_local global i32 0, align 4
@enabled_cgroup_patterns = common dso_local global i8* null, align 8
@.str.62 = private unnamed_addr constant [40 x i8] c"search for cgroups in subpaths matching\00", align 1
@.str.63 = private unnamed_addr constant [113 x i8] c" !*/init.scope  !*-qemu  !*.libvirt-qemu  !/init.scope  !/system  !/systemd  !/user  !/user.slice  !/lxc/*/*  * \00", align 1
@enabled_cgroup_paths = common dso_local global i8* null, align 8
@.str.64 = private unnamed_addr constant [18 x i8] c"%s/cgroup-name.sh\00", align 1
@netdata_configured_primary_plugins_dir = common dso_local global i32 0, align 4
@.str.65 = private unnamed_addr constant [27 x i8] c"script to get cgroup names\00", align 1
@cgroups_rename_script = common dso_local global i8* null, align 8
@.str.66 = private unnamed_addr constant [18 x i8] c"%s/cgroup-network\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"script to get cgroup network interfaces\00", align 1
@cgroups_network_interface_script = common dso_local global i8* null, align 8
@.str.68 = private unnamed_addr constant [38 x i8] c"run script to rename cgroups matching\00", align 1
@.str.69 = private unnamed_addr constant [219 x i8] c" !/  !*.mount  !*.socket  !*.partition  /machine.slice/*.service  !*.service  !*.slice  !*.swap  !*.user  !init.scope  !*.scope/vcpu*  !*.scope/emulator  *.scope  *docker*  *lxc*  *qemu*  *kubepods*  *.libvirt-qemu  * \00", align 1
@enabled_cgroup_renames = common dso_local global i8* null, align 8
@.str.70 = private unnamed_addr constant [37 x i8] c"cgroups to match as systemd services\00", align 1
@.str.71 = private unnamed_addr constant [54 x i8] c" !/system.slice/*/*.service  /system.slice/*.service \00", align 1
@systemd_services_cgroups = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_cgroup_plugin_configuration() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mountinfo*, align 8
  %5 = alloca %struct.mountinfo*, align 8
  %6 = load i32, i32* @_SC_PAGESIZE, align 4
  %7 = call i32 @sysconf(i32 %6)
  store i32 %7, i32* @system_page_size, align 4
  %8 = call i8* @simple_hash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** @Read_hash, align 8
  %9 = call i8* @simple_hash(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** @Write_hash, align 8
  %10 = call i8* @simple_hash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %10, i8** @user_hash, align 8
  %11 = call i8* @simple_hash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %11, i8** @system_hash, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @config_get_number(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @cgroup_update_every, align 4
  %17 = load i32, i32* @cgroup_update_every, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @cgroup_update_every, align 4
  br label %26

26:                                               ; preds = %22, %0
  %27 = load i32, i32* @cgroup_check_for_new_every, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* @cgroup_update_every, align 4
  %30 = sext i32 %29 to i64
  %31 = mul nsw i64 %28, %30
  %32 = trunc i64 %31 to i32
  %33 = call i64 @config_get_number(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @cgroup_check_for_new_every, align 4
  %35 = load i32, i32* @cgroup_check_for_new_every, align 4
  %36 = load i32, i32* @cgroup_update_every, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @cgroup_update_every, align 4
  store i32 %39, i32* @cgroup_check_for_new_every, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load i8*, i8** @cgroup_use_unified_cgroups, align 8
  %42 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %41)
  store i8* %42, i8** @cgroup_use_unified_cgroups, align 8
  %43 = load i32, i32* @cgroup_containers_chart_priority, align 4
  %44 = call i64 @config_get_number(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* @cgroup_containers_chart_priority, align 4
  %46 = load i32, i32* @cgroup_containers_chart_priority, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @NETDATA_CHART_PRIO_CGROUPS_CONTAINERS, align 4
  store i32 %49, i32* @cgroup_containers_chart_priority, align 4
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i8*, i8** @cgroup_enable_cpuacct_stat, align 8
  %52 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %51)
  store i8* %52, i8** @cgroup_enable_cpuacct_stat, align 8
  %53 = load i8*, i8** @cgroup_enable_cpuacct_usage, align 8
  %54 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %53)
  store i8* %54, i8** @cgroup_enable_cpuacct_usage, align 8
  %55 = load i8*, i8** @cgroup_enable_memory, align 8
  %56 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8* %55)
  store i8* %56, i8** @cgroup_enable_memory, align 8
  %57 = load i8*, i8** @cgroup_enable_detailed_memory, align 8
  %58 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %57)
  store i8* %58, i8** @cgroup_enable_detailed_memory, align 8
  %59 = load i8*, i8** @cgroup_enable_memory_failcnt, align 8
  %60 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %59)
  store i8* %60, i8** @cgroup_enable_memory_failcnt, align 8
  %61 = load i8*, i8** @cgroup_enable_swap, align 8
  %62 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %61)
  store i8* %62, i8** @cgroup_enable_swap, align 8
  %63 = load i8*, i8** @cgroup_enable_blkio_io, align 8
  %64 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %63)
  store i8* %64, i8** @cgroup_enable_blkio_io, align 8
  %65 = load i8*, i8** @cgroup_enable_blkio_ops, align 8
  %66 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %65)
  store i8* %66, i8** @cgroup_enable_blkio_ops, align 8
  %67 = load i8*, i8** @cgroup_enable_blkio_throttle_io, align 8
  %68 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %67)
  store i8* %68, i8** @cgroup_enable_blkio_throttle_io, align 8
  %69 = load i8*, i8** @cgroup_enable_blkio_throttle_ops, align 8
  %70 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i8* %69)
  store i8* %70, i8** @cgroup_enable_blkio_throttle_ops, align 8
  %71 = load i8*, i8** @cgroup_enable_blkio_queued_ops, align 8
  %72 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %71)
  store i8* %72, i8** @cgroup_enable_blkio_queued_ops, align 8
  %73 = load i8*, i8** @cgroup_enable_blkio_merged_ops, align 8
  %74 = call i8* @config_get_boolean_ondemand(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %73)
  store i8* %74, i8** @cgroup_enable_blkio_merged_ops, align 8
  %75 = load i32, i32* @cgroup_recheck_zero_blkio_every_iterations, align 4
  %76 = call i64 @config_get_number(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i32 %75)
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* @cgroup_recheck_zero_blkio_every_iterations, align 4
  %78 = load i32, i32* @cgroup_recheck_zero_mem_failcnt_every_iterations, align 4
  %79 = call i64 @config_get_number(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* @cgroup_recheck_zero_mem_failcnt_every_iterations, align 4
  %81 = load i32, i32* @cgroup_recheck_zero_mem_detailed_every_iterations, align 4
  %82 = call i64 @config_get_number(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0), i32 %81)
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* @cgroup_recheck_zero_mem_detailed_every_iterations, align 4
  %84 = load i8*, i8** @cgroup_enable_systemd_services, align 8
  %85 = call i8* @config_get_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8* %84)
  store i8* %85, i8** @cgroup_enable_systemd_services, align 8
  %86 = load i8*, i8** @cgroup_enable_systemd_services_detailed_memory, align 8
  %87 = call i8* @config_get_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* %86)
  store i8* %87, i8** @cgroup_enable_systemd_services_detailed_memory, align 8
  %88 = load i8*, i8** @cgroup_used_memory_without_cache, align 8
  %89 = call i8* @config_get_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i8* %88)
  store i8* %89, i8** @cgroup_used_memory_without_cache, align 8
  %90 = load i32, i32* @FILENAME_MAX, align 4
  %91 = add nsw i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = call i8* @llvm.stacksave()
  store i8* %93, i8** %1, align 8
  %94 = alloca i8, i64 %92, align 16
  store i64 %92, i64* %2, align 8
  %95 = call %struct.mountinfo* @mountinfo_read(i32 0)
  store %struct.mountinfo* %95, %struct.mountinfo** %5, align 8
  %96 = load i8*, i8** @cgroup_use_unified_cgroups, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %209, label %98

98:                                               ; preds = %50
  %99 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %100 = call %struct.mountinfo* @mountinfo_find_by_filesystem_super_option(%struct.mountinfo* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  store %struct.mountinfo* %100, %struct.mountinfo** %4, align 8
  %101 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %102 = icmp ne %struct.mountinfo* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %105 = call %struct.mountinfo* @mountinfo_find_by_filesystem_mount_source(%struct.mountinfo* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  store %struct.mountinfo* %105, %struct.mountinfo** %4, align 8
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %108 = icmp ne %struct.mountinfo* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = call i32 @error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.29, i64 0, i64 0))
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %115

111:                                              ; preds = %106
  %112 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %113 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %3, align 8
  br label %115

115:                                              ; preds = %111, %109
  %116 = load i32, i32* @FILENAME_MAX, align 4
  %117 = load i32, i32* @netdata_configured_host_prefix, align 4
  %118 = load i8*, i8** %3, align 8
  %119 = call i32 (i8*, i32, i8*, i32, ...) @snprintfz(i8* %94, i32 %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %117, i8* %118)
  %120 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i8* %94)
  store i8* %120, i8** @cgroup_cpuacct_base, align 8
  %121 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %122 = call %struct.mountinfo* @mountinfo_find_by_filesystem_super_option(%struct.mountinfo* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  store %struct.mountinfo* %122, %struct.mountinfo** %4, align 8
  %123 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %124 = icmp ne %struct.mountinfo* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %115
  %126 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %127 = call %struct.mountinfo* @mountinfo_find_by_filesystem_mount_source(%struct.mountinfo* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  store %struct.mountinfo* %127, %struct.mountinfo** %4, align 8
  br label %128

128:                                              ; preds = %125, %115
  %129 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %130 = icmp ne %struct.mountinfo* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = call i32 @error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.34, i64 0, i64 0))
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i8** %3, align 8
  br label %137

133:                                              ; preds = %128
  %134 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %135 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %3, align 8
  br label %137

137:                                              ; preds = %133, %131
  %138 = load i32, i32* @FILENAME_MAX, align 4
  %139 = load i32, i32* @netdata_configured_host_prefix, align 4
  %140 = load i8*, i8** %3, align 8
  %141 = call i32 (i8*, i32, i8*, i32, ...) @snprintfz(i8* %94, i32 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %139, i8* %140)
  %142 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), i8* %94)
  store i8* %142, i8** @cgroup_cpuset_base, align 8
  %143 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %144 = call %struct.mountinfo* @mountinfo_find_by_filesystem_super_option(%struct.mountinfo* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  store %struct.mountinfo* %144, %struct.mountinfo** %4, align 8
  %145 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %146 = icmp ne %struct.mountinfo* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %137
  %148 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %149 = call %struct.mountinfo* @mountinfo_find_by_filesystem_mount_source(%struct.mountinfo* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  store %struct.mountinfo* %149, %struct.mountinfo** %4, align 8
  br label %150

150:                                              ; preds = %147, %137
  %151 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %152 = icmp ne %struct.mountinfo* %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = call i32 @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.38, i64 0, i64 0))
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8** %3, align 8
  br label %159

155:                                              ; preds = %150
  %156 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %157 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  store i8* %158, i8** %3, align 8
  br label %159

159:                                              ; preds = %155, %153
  %160 = load i32, i32* @FILENAME_MAX, align 4
  %161 = load i32, i32* @netdata_configured_host_prefix, align 4
  %162 = load i8*, i8** %3, align 8
  %163 = call i32 (i8*, i32, i8*, i32, ...) @snprintfz(i8* %94, i32 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %161, i8* %162)
  %164 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0), i8* %94)
  store i8* %164, i8** @cgroup_blkio_base, align 8
  %165 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %166 = call %struct.mountinfo* @mountinfo_find_by_filesystem_super_option(%struct.mountinfo* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  store %struct.mountinfo* %166, %struct.mountinfo** %4, align 8
  %167 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %168 = icmp ne %struct.mountinfo* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %159
  %170 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %171 = call %struct.mountinfo* @mountinfo_find_by_filesystem_mount_source(%struct.mountinfo* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  store %struct.mountinfo* %171, %struct.mountinfo** %4, align 8
  br label %172

172:                                              ; preds = %169, %159
  %173 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %174 = icmp ne %struct.mountinfo* %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %172
  %176 = call i32 @error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.42, i64 0, i64 0))
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0), i8** %3, align 8
  br label %181

177:                                              ; preds = %172
  %178 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %179 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %3, align 8
  br label %181

181:                                              ; preds = %177, %175
  %182 = load i32, i32* @FILENAME_MAX, align 4
  %183 = load i32, i32* @netdata_configured_host_prefix, align 4
  %184 = load i8*, i8** %3, align 8
  %185 = call i32 (i8*, i32, i8*, i32, ...) @snprintfz(i8* %94, i32 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %183, i8* %184)
  %186 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0), i8* %94)
  store i8* %186, i8** @cgroup_memory_base, align 8
  %187 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %188 = call %struct.mountinfo* @mountinfo_find_by_filesystem_super_option(%struct.mountinfo* %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0))
  store %struct.mountinfo* %188, %struct.mountinfo** %4, align 8
  %189 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %190 = icmp ne %struct.mountinfo* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %181
  %192 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %193 = call %struct.mountinfo* @mountinfo_find_by_filesystem_mount_source(%struct.mountinfo* %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0))
  store %struct.mountinfo* %193, %struct.mountinfo** %4, align 8
  br label %194

194:                                              ; preds = %191, %181
  %195 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %196 = icmp ne %struct.mountinfo* %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %194
  %198 = call i32 @error(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.46, i64 0, i64 0))
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), i8** %3, align 8
  br label %203

199:                                              ; preds = %194
  %200 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %201 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %3, align 8
  br label %203

203:                                              ; preds = %199, %197
  %204 = load i32, i32* @FILENAME_MAX, align 4
  %205 = load i32, i32* @netdata_configured_host_prefix, align 4
  %206 = load i8*, i8** %3, align 8
  %207 = call i32 (i8*, i32, i8*, i32, ...) @snprintfz(i8* %94, i32 %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %205, i8* %206)
  %208 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i64 0, i64 0), i8* %94)
  store i8* %208, i8** @cgroup_devices_base, align 8
  br label %256

209:                                              ; preds = %50
  %210 = load i8*, i8** @CONFIG_BOOLEAN_NO, align 8
  store i8* %210, i8** @cgroup_enable_blkio_queued_ops, align 8
  store i8* %210, i8** @cgroup_enable_blkio_merged_ops, align 8
  store i8* %210, i8** @cgroup_enable_blkio_throttle_ops, align 8
  store i8* %210, i8** @cgroup_enable_blkio_throttle_io, align 8
  store i8* %210, i8** @cgroup_enable_memory_failcnt, align 8
  store i8* %210, i8** @cgroup_enable_cpuacct_usage, align 8
  store i64 0, i64* @cgroup_search_in_devices, align 8
  %211 = load i8*, i8** @CONFIG_BOOLEAN_NO, align 8
  store i8* %211, i8** @cgroup_enable_systemd_services_detailed_memory, align 8
  %212 = load i8*, i8** @CONFIG_BOOLEAN_NO, align 8
  store i8* %212, i8** @cgroup_used_memory_without_cache, align 8
  %213 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %214 = call %struct.mountinfo* @mountinfo_find_by_filesystem_super_option(%struct.mountinfo* %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0))
  store %struct.mountinfo* %214, %struct.mountinfo** %4, align 8
  %215 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %216 = icmp ne %struct.mountinfo* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %209
  %218 = load i32, i32* @D_CGROUP, align 4
  %219 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %220 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @debug(i32 %218, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.51, i64 0, i64 0), i8* %221)
  br label %223

223:                                              ; preds = %217, %209
  %224 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %225 = icmp ne %struct.mountinfo* %224, null
  br i1 %225, label %238, label %226

226:                                              ; preds = %223
  %227 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %228 = call %struct.mountinfo* @mountinfo_find_by_filesystem_mount_source(%struct.mountinfo* %227, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  store %struct.mountinfo* %228, %struct.mountinfo** %4, align 8
  %229 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %230 = icmp ne %struct.mountinfo* %229, null
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load i32, i32* @D_CGROUP, align 4
  %233 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %234 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @debug(i32 %232, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.52, i64 0, i64 0), i8* %235)
  br label %237

237:                                              ; preds = %231, %226
  br label %238

238:                                              ; preds = %237, %223
  %239 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %240 = icmp ne %struct.mountinfo* %239, null
  br i1 %240, label %243, label %241

241:                                              ; preds = %238
  %242 = call i32 @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.53, i64 0, i64 0))
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i64 0, i64 0), i8** %3, align 8
  br label %247

243:                                              ; preds = %238
  %244 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  %245 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  store i8* %246, i8** %3, align 8
  br label %247

247:                                              ; preds = %243, %241
  %248 = load i32, i32* @FILENAME_MAX, align 4
  %249 = load i32, i32* @netdata_configured_host_prefix, align 4
  %250 = load i8*, i8** %3, align 8
  %251 = call i32 (i8*, i32, i8*, i32, ...) @snprintfz(i8* %94, i32 %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %249, i8* %250)
  %252 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0), i8* %94)
  store i8* %252, i8** @cgroup_unified_base, align 8
  %253 = load i32, i32* @D_CGROUP, align 4
  %254 = load i8*, i8** @cgroup_unified_base, align 8
  %255 = call i32 @debug(i32 %253, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0), i8* %254)
  br label %256

256:                                              ; preds = %247, %203
  %257 = load i32, i32* @cgroup_root_max, align 4
  %258 = call i64 @config_get_number(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i32 %257)
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* @cgroup_root_max, align 4
  %260 = load i32, i32* @cgroup_max_depth, align 4
  %261 = call i64 @config_get_number(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.58, i64 0, i64 0), i32 %260)
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* @cgroup_max_depth, align 4
  %263 = load i8*, i8** @cgroup_enable_new_cgroups_detected_at_runtime, align 8
  %264 = call i8* @config_get_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i64 0, i64 0), i8* %263)
  store i8* %264, i8** @cgroup_enable_new_cgroups_detected_at_runtime, align 8
  %265 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([271 x i8], [271 x i8]* @.str.61, i64 0, i64 0))
  %266 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %267 = call i8* @simple_pattern_create(i8* %265, i32* null, i32 %266)
  store i8* %267, i8** @enabled_cgroup_patterns, align 8
  %268 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.63, i64 0, i64 0))
  %269 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %270 = call i8* @simple_pattern_create(i8* %268, i32* null, i32 %269)
  store i8* %270, i8** @enabled_cgroup_paths, align 8
  %271 = load i32, i32* @FILENAME_MAX, align 4
  %272 = load i32, i32* @netdata_configured_primary_plugins_dir, align 4
  %273 = call i32 (i8*, i32, i8*, i32, ...) @snprintfz(i8* %94, i32 %271, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i32 %272)
  %274 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), i8* %94)
  store i8* %274, i8** @cgroups_rename_script, align 8
  %275 = load i32, i32* @FILENAME_MAX, align 4
  %276 = load i32, i32* @netdata_configured_primary_plugins_dir, align 4
  %277 = call i32 (i8*, i32, i8*, i32, ...) @snprintfz(i8* %94, i32 %275, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i64 0, i64 0), i32 %276)
  %278 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.67, i64 0, i64 0), i8* %94)
  store i8* %278, i8** @cgroups_network_interface_script, align 8
  %279 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.69, i64 0, i64 0))
  %280 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %281 = call i8* @simple_pattern_create(i8* %279, i32* null, i32 %280)
  store i8* %281, i8** @enabled_cgroup_renames, align 8
  %282 = load i8*, i8** @cgroup_enable_systemd_services, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %256
  %285 = call i8* @config_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.71, i64 0, i64 0))
  %286 = load i32, i32* @SIMPLE_PATTERN_EXACT, align 4
  %287 = call i8* @simple_pattern_create(i8* %285, i32* null, i32 %286)
  store i8* %287, i8** @systemd_services_cgroups, align 8
  br label %288

288:                                              ; preds = %284, %256
  %289 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  %290 = call i32 @mountinfo_free_all(%struct.mountinfo* %289)
  %291 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %291)
  ret void
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i8* @simple_hash(i8*) #1

declare dso_local i64 @config_get_number(i8*, i8*, i32) #1

declare dso_local i8* @config_get_boolean_ondemand(i8*, i8*, i8*) #1

declare dso_local i8* @config_get_boolean(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.mountinfo* @mountinfo_read(i32) #1

declare dso_local %struct.mountinfo* @mountinfo_find_by_filesystem_super_option(%struct.mountinfo*, i8*, i8*) #1

declare dso_local %struct.mountinfo* @mountinfo_find_by_filesystem_mount_source(%struct.mountinfo*, i8*, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, ...) #1

declare dso_local i8* @config_get(i8*, i8*, i8*) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i8* @simple_pattern_create(i8*, i32*, i32) #1

declare dso_local i32 @mountinfo_free_all(%struct.mountinfo*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
