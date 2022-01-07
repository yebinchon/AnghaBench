; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_meminfo.c_do_proc_meminfo.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_meminfo.c_do_proc_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@do_proc_meminfo.ff = internal global i32* null, align 8
@do_proc_meminfo.do_ram = internal global i32 -1, align 4
@do_proc_meminfo.do_swap = internal global i32 -1, align 4
@do_proc_meminfo.do_hwcorrupt = internal global i32 -1, align 4
@do_proc_meminfo.do_committed = internal global i32 -1, align 4
@do_proc_meminfo.do_writeback = internal global i32 -1, align 4
@do_proc_meminfo.do_kernel = internal global i32 -1, align 4
@do_proc_meminfo.do_slab = internal global i32 -1, align 4
@do_proc_meminfo.do_hugepages = internal global i32 -1, align 4
@do_proc_meminfo.do_transparent_hugepages = internal global i32 -1, align 4
@do_proc_meminfo.arl_base = internal global i32* null, align 8
@do_proc_meminfo.arl_hwcorrupted = internal global %struct.TYPE_3__* null, align 8
@do_proc_meminfo.arl_memavailable = internal global %struct.TYPE_3__* null, align 8
@do_proc_meminfo.MemTotal = internal global i64 0, align 8
@do_proc_meminfo.MemFree = internal global i64 0, align 8
@do_proc_meminfo.MemAvailable = internal global i64 0, align 8
@do_proc_meminfo.Buffers = internal global i64 0, align 8
@do_proc_meminfo.Cached = internal global i64 0, align 8
@do_proc_meminfo.SwapTotal = internal global i64 0, align 8
@do_proc_meminfo.SwapFree = internal global i64 0, align 8
@do_proc_meminfo.Dirty = internal global i64 0, align 8
@do_proc_meminfo.Writeback = internal global i64 0, align 8
@do_proc_meminfo.Slab = internal global i64 0, align 8
@do_proc_meminfo.SReclaimable = internal global i64 0, align 8
@do_proc_meminfo.SUnreclaim = internal global i64 0, align 8
@do_proc_meminfo.KernelStack = internal global i64 0, align 8
@do_proc_meminfo.PageTables = internal global i64 0, align 8
@do_proc_meminfo.NFS_Unstable = internal global i64 0, align 8
@do_proc_meminfo.Bounce = internal global i64 0, align 8
@do_proc_meminfo.WritebackTmp = internal global i64 0, align 8
@do_proc_meminfo.Committed_AS = internal global i64 0, align 8
@do_proc_meminfo.VmallocUsed = internal global i64 0, align 8
@do_proc_meminfo.AnonHugePages = internal global i64 0, align 8
@do_proc_meminfo.ShmemHugePages = internal global i64 0, align 8
@do_proc_meminfo.HugePages_Total = internal global i64 0, align 8
@do_proc_meminfo.HugePages_Free = internal global i64 0, align 8
@do_proc_meminfo.HugePages_Rsvd = internal global i64 0, align 8
@do_proc_meminfo.HugePages_Surp = internal global i64 0, align 8
@do_proc_meminfo.Hugepagesize = internal global i64 0, align 8
@do_proc_meminfo.HardwareCorrupted = internal global i64 0, align 8
@CONFIG_SECTION_PLUGIN_PROC_MEMINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"system ram\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"system swap\00", align 1
@CONFIG_BOOLEAN_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"hardware corrupted ECC\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"committed memory\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"writeback memory\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"kernel memory\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"slab memory\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"hugepages\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"transparent hugepages\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"MemTotal\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"MemFree\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"MemAvailable\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Buffers\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Cached\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"SwapTotal\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SwapFree\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Dirty\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Writeback\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"Slab\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"SReclaimable\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"SUnreclaim\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"KernelStack\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"PageTables\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"NFS_Unstable\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Bounce\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"WritebackTmp\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Committed_AS\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"VmallocUsed\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"HardwareCorrupted\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"AnonHugePages\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"ShmemHugePages\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"HugePages_Total\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"HugePages_Free\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"HugePages_Rsvd\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"HugePages_Surp\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Hugepagesize\00", align 1
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@netdata_configured_host_prefix = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"filename to monitor\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c" \09:\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@do_proc_meminfo.st_system_ram = internal global i32* null, align 8
@do_proc_meminfo.rd_free = internal global i32* null, align 8
@do_proc_meminfo.rd_used = internal global i32* null, align 8
@do_proc_meminfo.rd_cached = internal global i32* null, align 8
@do_proc_meminfo.rd_buffers = internal global i32* null, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"System RAM\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@PLUGIN_PROC_NAME = common dso_local global i32 0, align 4
@PLUGIN_PROC_MODULE_MEMINFO_NAME = common dso_local global i32 0, align 4
@NETDATA_CHART_PRIO_SYSTEM_RAM = common dso_local global i64 0, align 8
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"buffers\00", align 1
@ARL_ENTRY_FLAG_FOUND = common dso_local global i32 0, align 4
@do_proc_meminfo.st_mem_available = internal global i32* null, align 8
@do_proc_meminfo.rd_avail = internal global i32* null, align 8
@.str.49 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"Available RAM for applications\00", align 1
@NETDATA_CHART_PRIO_MEM_SYSTEM_AVAILABLE = common dso_local global i64 0, align 8
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [6 x i8] c"avail\00", align 1
@CONFIG_BOOLEAN_YES = common dso_local global i32 0, align 4
@netdata_zero_metrics_enabled = common dso_local global i32 0, align 4
@do_proc_meminfo.st_system_swap = internal global i32* null, align 8
@do_proc_meminfo.rd_free.53 = internal global i32* null, align 8
@do_proc_meminfo.rd_used.54 = internal global i32* null, align 8
@.str.55 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"System Swap\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_SWAP = common dso_local global i64 0, align 8
@RRDSET_FLAG_DETAIL = common dso_local global i32 0, align 4
@do_proc_meminfo.st_mem_hwcorrupt = internal global i32* null, align 8
@do_proc_meminfo.rd_corrupted = internal global i32* null, align 8
@.str.57 = private unnamed_addr constant [10 x i8] c"hwcorrupt\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"ecc\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"Corrupted Memory, detected by ECC\00", align 1
@NETDATA_CHART_PRIO_MEM_HW = common dso_local global i64 0, align 8
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@do_proc_meminfo.st_mem_committed = internal global i32* null, align 8
@do_proc_meminfo.rd_committed = internal global i32* null, align 8
@.str.60 = private unnamed_addr constant [10 x i8] c"committed\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"Committed (Allocated) Memory\00", align 1
@NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED = common dso_local global i64 0, align 8
@do_proc_meminfo.st_mem_writeback = internal global i32* null, align 8
@do_proc_meminfo.rd_dirty = internal global i32* null, align 8
@do_proc_meminfo.rd_writeback = internal global i32* null, align 8
@do_proc_meminfo.rd_fusewriteback = internal global i32* null, align 8
@do_proc_meminfo.rd_nfs_writeback = internal global i32* null, align 8
@do_proc_meminfo.rd_bounce = internal global i32* null, align 8
@.str.62 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"Writeback Memory\00", align 1
@NETDATA_CHART_PRIO_MEM_KERNEL = common dso_local global i64 0, align 8
@.str.65 = private unnamed_addr constant [14 x i8] c"FuseWriteback\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"NfsWriteback\00", align 1
@do_proc_meminfo.st_mem_kernel = internal global i32* null, align 8
@do_proc_meminfo.rd_slab = internal global i32* null, align 8
@do_proc_meminfo.rd_kernelstack = internal global i32* null, align 8
@do_proc_meminfo.rd_pagetables = internal global i32* null, align 8
@do_proc_meminfo.rd_vmallocused = internal global i32* null, align 8
@.str.67 = private unnamed_addr constant [22 x i8] c"Memory Used by Kernel\00", align 1
@do_proc_meminfo.st_mem_slab = internal global i32* null, align 8
@do_proc_meminfo.rd_reclaimable = internal global i32* null, align 8
@do_proc_meminfo.rd_unreclaimable = internal global i32* null, align 8
@.str.68 = private unnamed_addr constant [5 x i8] c"slab\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"Reclaimable Kernel Memory\00", align 1
@NETDATA_CHART_PRIO_MEM_SLAB = common dso_local global i64 0, align 8
@.str.70 = private unnamed_addr constant [12 x i8] c"reclaimable\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"unreclaimable\00", align 1
@do_proc_meminfo.st_mem_hugepages = internal global i32* null, align 8
@do_proc_meminfo.rd_used.72 = internal global i32* null, align 8
@do_proc_meminfo.rd_free.73 = internal global i32* null, align 8
@do_proc_meminfo.rd_rsvd = internal global i32* null, align 8
@do_proc_meminfo.rd_surp = internal global i32* null, align 8
@.str.74 = private unnamed_addr constant [27 x i8] c"Dedicated HugePages Memory\00", align 1
@NETDATA_CHART_PRIO_MEM_HUGEPAGES = common dso_local global i64 0, align 8
@.str.75 = private unnamed_addr constant [8 x i8] c"surplus\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@do_proc_meminfo.st_mem_transparent_hugepages = internal global i32* null, align 8
@do_proc_meminfo.rd_anonymous = internal global i32* null, align 8
@do_proc_meminfo.rd_shared = internal global i32* null, align 8
@.str.77 = private unnamed_addr constant [22 x i8] c"transparent_hugepages\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"Transparent HugePages Memory\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"shmem\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_proc_meminfo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %17 = icmp ne i32* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %100

22:                                               ; preds = %2
  %23 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %24 = call i32 @config_get_boolean(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %24, i32* @do_proc_meminfo.do_ram, align 4
  %25 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %26 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %27 = call i32 @config_get_boolean_ondemand(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 %27, i32* @do_proc_meminfo.do_swap, align 4
  %28 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %29 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %30 = call i32 @config_get_boolean_ondemand(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 %30, i32* @do_proc_meminfo.do_hwcorrupt, align 4
  %31 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %32 = call i32 @config_get_boolean(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %32, i32* @do_proc_meminfo.do_committed, align 4
  %33 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %34 = call i32 @config_get_boolean(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i32 %34, i32* @do_proc_meminfo.do_writeback, align 4
  %35 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %36 = call i32 @config_get_boolean(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %36, i32* @do_proc_meminfo.do_kernel, align 4
  %37 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %38 = call i32 @config_get_boolean(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %38, i32* @do_proc_meminfo.do_slab, align 4
  %39 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %40 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %41 = call i32 @config_get_boolean_ondemand(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  store i32 %41, i32* @do_proc_meminfo.do_hugepages, align 4
  %42 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %43 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %44 = call i32 @config_get_boolean_ondemand(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %43)
  store i32 %44, i32* @do_proc_meminfo.do_transparent_hugepages, align 4
  %45 = call i32* @arl_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 60)
  store i32* %45, i32** @do_proc_meminfo.arl_base, align 8
  %46 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %47 = call %struct.TYPE_3__* @arl_expect(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i64* @do_proc_meminfo.MemTotal)
  %48 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %49 = call %struct.TYPE_3__* @arl_expect(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i64* @do_proc_meminfo.MemFree)
  %50 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %51 = call %struct.TYPE_3__* @arl_expect(i32* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i64* @do_proc_meminfo.MemAvailable)
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** @do_proc_meminfo.arl_memavailable, align 8
  %52 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %53 = call %struct.TYPE_3__* @arl_expect(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64* @do_proc_meminfo.Buffers)
  %54 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %55 = call %struct.TYPE_3__* @arl_expect(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64* @do_proc_meminfo.Cached)
  %56 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %57 = call %struct.TYPE_3__* @arl_expect(i32* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i64* @do_proc_meminfo.SwapTotal)
  %58 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %59 = call %struct.TYPE_3__* @arl_expect(i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i64* @do_proc_meminfo.SwapFree)
  %60 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %61 = call %struct.TYPE_3__* @arl_expect(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i64* @do_proc_meminfo.Dirty)
  %62 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %63 = call %struct.TYPE_3__* @arl_expect(i32* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i64* @do_proc_meminfo.Writeback)
  %64 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %65 = call %struct.TYPE_3__* @arl_expect(i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64* @do_proc_meminfo.Slab)
  %66 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %67 = call %struct.TYPE_3__* @arl_expect(i32* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i64* @do_proc_meminfo.SReclaimable)
  %68 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %69 = call %struct.TYPE_3__* @arl_expect(i32* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i64* @do_proc_meminfo.SUnreclaim)
  %70 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %71 = call %struct.TYPE_3__* @arl_expect(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i64* @do_proc_meminfo.KernelStack)
  %72 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %73 = call %struct.TYPE_3__* @arl_expect(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i64* @do_proc_meminfo.PageTables)
  %74 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %75 = call %struct.TYPE_3__* @arl_expect(i32* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i64* @do_proc_meminfo.NFS_Unstable)
  %76 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %77 = call %struct.TYPE_3__* @arl_expect(i32* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i64* @do_proc_meminfo.Bounce)
  %78 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %79 = call %struct.TYPE_3__* @arl_expect(i32* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i64* @do_proc_meminfo.WritebackTmp)
  %80 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %81 = call %struct.TYPE_3__* @arl_expect(i32* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i64* @do_proc_meminfo.Committed_AS)
  %82 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %83 = call %struct.TYPE_3__* @arl_expect(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i64* @do_proc_meminfo.VmallocUsed)
  %84 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %85 = call %struct.TYPE_3__* @arl_expect(i32* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i64* @do_proc_meminfo.HardwareCorrupted)
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** @do_proc_meminfo.arl_hwcorrupted, align 8
  %86 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %87 = call %struct.TYPE_3__* @arl_expect(i32* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i64* @do_proc_meminfo.AnonHugePages)
  %88 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %89 = call %struct.TYPE_3__* @arl_expect(i32* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i64* @do_proc_meminfo.ShmemHugePages)
  %90 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %91 = call %struct.TYPE_3__* @arl_expect(i32* %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i64* @do_proc_meminfo.HugePages_Total)
  %92 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %93 = call %struct.TYPE_3__* @arl_expect(i32* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0), i64* @do_proc_meminfo.HugePages_Free)
  %94 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %95 = call %struct.TYPE_3__* @arl_expect(i32* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i64* @do_proc_meminfo.HugePages_Rsvd)
  %96 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %97 = call %struct.TYPE_3__* @arl_expect(i32* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i64* @do_proc_meminfo.HugePages_Surp)
  %98 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %99 = call %struct.TYPE_3__* @arl_expect(i32* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i64* @do_proc_meminfo.Hugepagesize)
  br label %100

100:                                              ; preds = %22, %2
  %101 = load i32*, i32** @do_proc_meminfo.ff, align 8
  %102 = icmp ne i32* %101, null
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %132

107:                                              ; preds = %100
  %108 = load i32, i32* @FILENAME_MAX, align 4
  %109 = add nsw i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = call i8* @llvm.stacksave()
  store i8* %111, i8** %6, align 8
  %112 = alloca i8, i64 %110, align 16
  store i64 %110, i64* %7, align 8
  %113 = load i32, i32* @FILENAME_MAX, align 4
  %114 = load i32, i32* @netdata_configured_host_prefix, align 4
  %115 = call i32 @snprintfz(i8* %112, i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0))
  %116 = load i32, i32* @CONFIG_SECTION_PLUGIN_PROC_MEMINFO, align 4
  %117 = call i32 @config_get(i32 %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i8* %112)
  %118 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %119 = call i32* @procfile_open(i32 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i32 %118)
  store i32* %119, i32** @do_proc_meminfo.ff, align 8
  %120 = load i32*, i32** @do_proc_meminfo.ff, align 8
  %121 = icmp ne i32* %120, null
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %128

127:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %127, %126
  %129 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %8, align 4
  switch i32 %130, label %718 [
    i32 0, label %131
    i32 1, label %716
  ]

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %131, %100
  %133 = load i32*, i32** @do_proc_meminfo.ff, align 8
  %134 = call i32* @procfile_readall(i32* %133)
  store i32* %134, i32** @do_proc_meminfo.ff, align 8
  %135 = load i32*, i32** @do_proc_meminfo.ff, align 8
  %136 = icmp ne i32* %135, null
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %716

142:                                              ; preds = %132
  %143 = load i32*, i32** @do_proc_meminfo.ff, align 8
  %144 = call i64 @procfile_lines(i32* %143)
  store i64 %144, i64* %9, align 8
  %145 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %146 = call i32 @arl_begin(i32* %145)
  store i64 0, i64* %10, align 8
  br label %147

147:                                              ; preds = %174, %142
  %148 = load i64, i64* %10, align 8
  %149 = load i64, i64* %9, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %147
  %152 = load i32*, i32** @do_proc_meminfo.ff, align 8
  %153 = load i64, i64* %10, align 8
  %154 = call i64 @procfile_linewords(i32* %152, i64 %153)
  store i64 %154, i64* %11, align 8
  %155 = load i64, i64* %11, align 8
  %156 = icmp ult i64 %155, 2
  %157 = zext i1 %156 to i32
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %174

161:                                              ; preds = %151
  %162 = load i32*, i32** @do_proc_meminfo.arl_base, align 8
  %163 = load i32*, i32** @do_proc_meminfo.ff, align 8
  %164 = load i64, i64* %10, align 8
  %165 = call i32 @procfile_lineword(i32* %163, i64 %164, i32 0)
  %166 = load i32*, i32** @do_proc_meminfo.ff, align 8
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @procfile_lineword(i32* %166, i64 %167, i32 1)
  %169 = call i32 @arl_check(i32* %162, i32 %165, i32 %168)
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  br label %177

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173, %160
  %175 = load i64, i64* %10, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %10, align 8
  br label %147

177:                                              ; preds = %172, %147
  %178 = load i64, i64* @do_proc_meminfo.Cached, align 8
  %179 = load i64, i64* @do_proc_meminfo.SReclaimable, align 8
  %180 = add i64 %178, %179
  store i64 %180, i64* %12, align 8
  %181 = load i64, i64* @do_proc_meminfo.MemTotal, align 8
  %182 = load i64, i64* @do_proc_meminfo.MemFree, align 8
  %183 = sub i64 %181, %182
  %184 = load i64, i64* %12, align 8
  %185 = sub i64 %183, %184
  %186 = load i64, i64* @do_proc_meminfo.Buffers, align 8
  %187 = sub i64 %185, %186
  store i64 %187, i64* %13, align 8
  %188 = load i32, i32* @do_proc_meminfo.do_ram, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %272

190:                                              ; preds = %177
  %191 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %192 = icmp ne i32* %191, null
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %190
  %198 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %199 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %200 = load i64, i64* @NETDATA_CHART_PRIO_SYSTEM_RAM, align 8
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %203 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %198, i32 %199, i64 %200, i32 %201, i32 %202)
  store i32* %203, i32** @do_proc_meminfo.st_system_ram, align 8
  %204 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %205 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %206 = call i32* @rrddim_add(i32* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %205)
  store i32* %206, i32** @do_proc_meminfo.rd_free, align 8
  %207 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %208 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %209 = call i32* @rrddim_add(i32* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %208)
  store i32* %209, i32** @do_proc_meminfo.rd_used, align 8
  %210 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %211 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %212 = call i32* @rrddim_add(i32* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %211)
  store i32* %212, i32** @do_proc_meminfo.rd_cached, align 8
  %213 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %214 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %215 = call i32* @rrddim_add(i32* %213, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %214)
  store i32* %215, i32** @do_proc_meminfo.rd_buffers, align 8
  br label %219

216:                                              ; preds = %190
  %217 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %218 = call i32 @rrdset_next(i32* %217)
  br label %219

219:                                              ; preds = %216, %197
  %220 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %221 = load i32*, i32** @do_proc_meminfo.rd_free, align 8
  %222 = load i64, i64* @do_proc_meminfo.MemFree, align 8
  %223 = call i32 @rrddim_set_by_pointer(i32* %220, i32* %221, i64 %222)
  %224 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %225 = load i32*, i32** @do_proc_meminfo.rd_used, align 8
  %226 = load i64, i64* %13, align 8
  %227 = call i32 @rrddim_set_by_pointer(i32* %224, i32* %225, i64 %226)
  %228 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %229 = load i32*, i32** @do_proc_meminfo.rd_cached, align 8
  %230 = load i64, i64* %12, align 8
  %231 = call i32 @rrddim_set_by_pointer(i32* %228, i32* %229, i64 %230)
  %232 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %233 = load i32*, i32** @do_proc_meminfo.rd_buffers, align 8
  %234 = load i64, i64* @do_proc_meminfo.Buffers, align 8
  %235 = call i32 @rrddim_set_by_pointer(i32* %232, i32* %233, i64 %234)
  %236 = load i32*, i32** @do_proc_meminfo.st_system_ram, align 8
  %237 = call i32 @rrdset_done(i32* %236)
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** @do_proc_meminfo.arl_memavailable, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @ARL_ENTRY_FLAG_FOUND, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %271

244:                                              ; preds = %219
  %245 = load i32*, i32** @do_proc_meminfo.st_mem_available, align 8
  %246 = icmp ne i32* %245, null
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = call i64 @unlikely(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %244
  %252 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %253 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %254 = load i64, i64* @NETDATA_CHART_PRIO_MEM_SYSTEM_AVAILABLE, align 8
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %257 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %252, i32 %253, i64 %254, i32 %255, i32 %256)
  store i32* %257, i32** @do_proc_meminfo.st_mem_available, align 8
  %258 = load i32*, i32** @do_proc_meminfo.st_mem_available, align 8
  %259 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %260 = call i32* @rrddim_add(i32* %258, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i32 1, i32 1024, i32 %259)
  store i32* %260, i32** @do_proc_meminfo.rd_avail, align 8
  br label %264

261:                                              ; preds = %244
  %262 = load i32*, i32** @do_proc_meminfo.st_mem_available, align 8
  %263 = call i32 @rrdset_next(i32* %262)
  br label %264

264:                                              ; preds = %261, %251
  %265 = load i32*, i32** @do_proc_meminfo.st_mem_available, align 8
  %266 = load i32*, i32** @do_proc_meminfo.rd_avail, align 8
  %267 = load i64, i64* @do_proc_meminfo.MemAvailable, align 8
  %268 = call i32 @rrddim_set_by_pointer(i32* %265, i32* %266, i64 %267)
  %269 = load i32*, i32** @do_proc_meminfo.st_mem_available, align 8
  %270 = call i32 @rrdset_done(i32* %269)
  br label %271

271:                                              ; preds = %264, %219
  br label %272

272:                                              ; preds = %271, %177
  %273 = load i64, i64* @do_proc_meminfo.SwapTotal, align 8
  %274 = load i64, i64* @do_proc_meminfo.SwapFree, align 8
  %275 = sub i64 %273, %274
  store i64 %275, i64* %14, align 8
  %276 = load i32, i32* @do_proc_meminfo.do_swap, align 4
  %277 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %296, label %279

279:                                              ; preds = %272
  %280 = load i32, i32* @do_proc_meminfo.do_swap, align 4
  %281 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %334

283:                                              ; preds = %279
  %284 = load i64, i64* @do_proc_meminfo.SwapTotal, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %283
  %287 = load i64, i64* %14, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %286
  %290 = load i64, i64* @do_proc_meminfo.SwapFree, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %289
  %293 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %294 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %334

296:                                              ; preds = %292, %289, %286, %283, %272
  %297 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %297, i32* @do_proc_meminfo.do_swap, align 4
  %298 = load i32*, i32** @do_proc_meminfo.st_system_swap, align 8
  %299 = icmp ne i32* %298, null
  %300 = xor i1 %299, true
  %301 = zext i1 %300 to i32
  %302 = call i64 @unlikely(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %320

304:                                              ; preds = %296
  %305 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %306 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %307 = load i64, i64* @NETDATA_CHART_PRIO_SYSTEM_SWAP, align 8
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %310 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %305, i32 %306, i64 %307, i32 %308, i32 %309)
  store i32* %310, i32** @do_proc_meminfo.st_system_swap, align 8
  %311 = load i32*, i32** @do_proc_meminfo.st_system_swap, align 8
  %312 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %313 = call i32 @rrdset_flag_set(i32* %311, i32 %312)
  %314 = load i32*, i32** @do_proc_meminfo.st_system_swap, align 8
  %315 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %316 = call i32* @rrddim_add(i32* %314, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %315)
  store i32* %316, i32** @do_proc_meminfo.rd_free.53, align 8
  %317 = load i32*, i32** @do_proc_meminfo.st_system_swap, align 8
  %318 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %319 = call i32* @rrddim_add(i32* %317, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %318)
  store i32* %319, i32** @do_proc_meminfo.rd_used.54, align 8
  br label %323

320:                                              ; preds = %296
  %321 = load i32*, i32** @do_proc_meminfo.st_system_swap, align 8
  %322 = call i32 @rrdset_next(i32* %321)
  br label %323

323:                                              ; preds = %320, %304
  %324 = load i32*, i32** @do_proc_meminfo.st_system_swap, align 8
  %325 = load i32*, i32** @do_proc_meminfo.rd_used.54, align 8
  %326 = load i64, i64* %14, align 8
  %327 = call i32 @rrddim_set_by_pointer(i32* %324, i32* %325, i64 %326)
  %328 = load i32*, i32** @do_proc_meminfo.st_system_swap, align 8
  %329 = load i32*, i32** @do_proc_meminfo.rd_free.53, align 8
  %330 = load i64, i64* @do_proc_meminfo.SwapFree, align 8
  %331 = call i32 @rrddim_set_by_pointer(i32* %328, i32* %329, i64 %330)
  %332 = load i32*, i32** @do_proc_meminfo.st_system_swap, align 8
  %333 = call i32 @rrdset_done(i32* %332)
  br label %334

334:                                              ; preds = %323, %292, %279
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** @do_proc_meminfo.arl_hwcorrupted, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @ARL_ENTRY_FLAG_FOUND, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %387

341:                                              ; preds = %334
  %342 = load i32, i32* @do_proc_meminfo.do_hwcorrupt, align 4
  %343 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %356, label %345

345:                                              ; preds = %341
  %346 = load i32, i32* @do_proc_meminfo.do_hwcorrupt, align 4
  %347 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %387

349:                                              ; preds = %345
  %350 = load i64, i64* @do_proc_meminfo.HardwareCorrupted, align 8
  %351 = icmp ugt i64 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %354 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %387

356:                                              ; preds = %352, %349, %341
  %357 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %357, i32* @do_proc_meminfo.do_hwcorrupt, align 4
  %358 = load i32*, i32** @do_proc_meminfo.st_mem_hwcorrupt, align 8
  %359 = icmp ne i32* %358, null
  %360 = xor i1 %359, true
  %361 = zext i1 %360 to i32
  %362 = call i64 @unlikely(i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %377

364:                                              ; preds = %356
  %365 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %366 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %367 = load i64, i64* @NETDATA_CHART_PRIO_MEM_HW, align 8
  %368 = load i32, i32* %4, align 4
  %369 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %370 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %365, i32 %366, i64 %367, i32 %368, i32 %369)
  store i32* %370, i32** @do_proc_meminfo.st_mem_hwcorrupt, align 8
  %371 = load i32*, i32** @do_proc_meminfo.st_mem_hwcorrupt, align 8
  %372 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %373 = call i32 @rrdset_flag_set(i32* %371, i32 %372)
  %374 = load i32*, i32** @do_proc_meminfo.st_mem_hwcorrupt, align 8
  %375 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %376 = call i32* @rrddim_add(i32* %374, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %375)
  store i32* %376, i32** @do_proc_meminfo.rd_corrupted, align 8
  br label %380

377:                                              ; preds = %356
  %378 = load i32*, i32** @do_proc_meminfo.st_mem_hwcorrupt, align 8
  %379 = call i32 @rrdset_next(i32* %378)
  br label %380

380:                                              ; preds = %377, %364
  %381 = load i32*, i32** @do_proc_meminfo.st_mem_hwcorrupt, align 8
  %382 = load i32*, i32** @do_proc_meminfo.rd_corrupted, align 8
  %383 = load i64, i64* @do_proc_meminfo.HardwareCorrupted, align 8
  %384 = call i32 @rrddim_set_by_pointer(i32* %381, i32* %382, i64 %383)
  %385 = load i32*, i32** @do_proc_meminfo.st_mem_hwcorrupt, align 8
  %386 = call i32 @rrdset_done(i32* %385)
  br label %387

387:                                              ; preds = %380, %352, %345, %334
  %388 = load i32, i32* @do_proc_meminfo.do_committed, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %420

390:                                              ; preds = %387
  %391 = load i32*, i32** @do_proc_meminfo.st_mem_committed, align 8
  %392 = icmp ne i32* %391, null
  %393 = xor i1 %392, true
  %394 = zext i1 %393 to i32
  %395 = call i64 @unlikely(i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %390
  %398 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %399 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %400 = load i64, i64* @NETDATA_CHART_PRIO_MEM_SYSTEM_COMMITTED, align 8
  %401 = load i32, i32* %4, align 4
  %402 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %403 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %398, i32 %399, i64 %400, i32 %401, i32 %402)
  store i32* %403, i32** @do_proc_meminfo.st_mem_committed, align 8
  %404 = load i32*, i32** @do_proc_meminfo.st_mem_committed, align 8
  %405 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %406 = call i32 @rrdset_flag_set(i32* %404, i32 %405)
  %407 = load i32*, i32** @do_proc_meminfo.st_mem_committed, align 8
  %408 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %409 = call i32* @rrddim_add(i32* %407, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %408)
  store i32* %409, i32** @do_proc_meminfo.rd_committed, align 8
  br label %413

410:                                              ; preds = %390
  %411 = load i32*, i32** @do_proc_meminfo.st_mem_committed, align 8
  %412 = call i32 @rrdset_next(i32* %411)
  br label %413

413:                                              ; preds = %410, %397
  %414 = load i32*, i32** @do_proc_meminfo.st_mem_committed, align 8
  %415 = load i32*, i32** @do_proc_meminfo.rd_committed, align 8
  %416 = load i64, i64* @do_proc_meminfo.Committed_AS, align 8
  %417 = call i32 @rrddim_set_by_pointer(i32* %414, i32* %415, i64 %416)
  %418 = load i32*, i32** @do_proc_meminfo.st_mem_committed, align 8
  %419 = call i32 @rrdset_done(i32* %418)
  br label %420

420:                                              ; preds = %413, %387
  %421 = load i32, i32* @do_proc_meminfo.do_writeback, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %481

423:                                              ; preds = %420
  %424 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %425 = icmp ne i32* %424, null
  %426 = xor i1 %425, true
  %427 = zext i1 %426 to i32
  %428 = call i64 @unlikely(i32 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %455

430:                                              ; preds = %423
  %431 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %432 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %433 = load i64, i64* @NETDATA_CHART_PRIO_MEM_KERNEL, align 8
  %434 = load i32, i32* %4, align 4
  %435 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %436 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %431, i32 %432, i64 %433, i32 %434, i32 %435)
  store i32* %436, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %437 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %438 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %439 = call i32 @rrdset_flag_set(i32* %437, i32 %438)
  %440 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %441 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %442 = call i32* @rrddim_add(i32* %440, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %441)
  store i32* %442, i32** @do_proc_meminfo.rd_dirty, align 8
  %443 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %444 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %445 = call i32* @rrddim_add(i32* %443, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %444)
  store i32* %445, i32** @do_proc_meminfo.rd_writeback, align 8
  %446 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %447 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %448 = call i32* @rrddim_add(i32* %446, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %447)
  store i32* %448, i32** @do_proc_meminfo.rd_fusewriteback, align 8
  %449 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %450 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %451 = call i32* @rrddim_add(i32* %449, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %450)
  store i32* %451, i32** @do_proc_meminfo.rd_nfs_writeback, align 8
  %452 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %453 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %454 = call i32* @rrddim_add(i32* %452, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %453)
  store i32* %454, i32** @do_proc_meminfo.rd_bounce, align 8
  br label %458

455:                                              ; preds = %423
  %456 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %457 = call i32 @rrdset_next(i32* %456)
  br label %458

458:                                              ; preds = %455, %430
  %459 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %460 = load i32*, i32** @do_proc_meminfo.rd_dirty, align 8
  %461 = load i64, i64* @do_proc_meminfo.Dirty, align 8
  %462 = call i32 @rrddim_set_by_pointer(i32* %459, i32* %460, i64 %461)
  %463 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %464 = load i32*, i32** @do_proc_meminfo.rd_writeback, align 8
  %465 = load i64, i64* @do_proc_meminfo.Writeback, align 8
  %466 = call i32 @rrddim_set_by_pointer(i32* %463, i32* %464, i64 %465)
  %467 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %468 = load i32*, i32** @do_proc_meminfo.rd_fusewriteback, align 8
  %469 = load i64, i64* @do_proc_meminfo.WritebackTmp, align 8
  %470 = call i32 @rrddim_set_by_pointer(i32* %467, i32* %468, i64 %469)
  %471 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %472 = load i32*, i32** @do_proc_meminfo.rd_nfs_writeback, align 8
  %473 = load i64, i64* @do_proc_meminfo.NFS_Unstable, align 8
  %474 = call i32 @rrddim_set_by_pointer(i32* %471, i32* %472, i64 %473)
  %475 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %476 = load i32*, i32** @do_proc_meminfo.rd_bounce, align 8
  %477 = load i64, i64* @do_proc_meminfo.Bounce, align 8
  %478 = call i32 @rrddim_set_by_pointer(i32* %475, i32* %476, i64 %477)
  %479 = load i32*, i32** @do_proc_meminfo.st_mem_writeback, align 8
  %480 = call i32 @rrdset_done(i32* %479)
  br label %481

481:                                              ; preds = %458, %420
  %482 = load i32, i32* @do_proc_meminfo.do_kernel, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %536

484:                                              ; preds = %481
  %485 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %486 = icmp ne i32* %485, null
  %487 = xor i1 %486, true
  %488 = zext i1 %487 to i32
  %489 = call i64 @unlikely(i32 %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %514

491:                                              ; preds = %484
  %492 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %493 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %494 = load i64, i64* @NETDATA_CHART_PRIO_MEM_KERNEL, align 8
  %495 = add nsw i64 %494, 1
  %496 = load i32, i32* %4, align 4
  %497 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %498 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %492, i32 %493, i64 %495, i32 %496, i32 %497)
  store i32* %498, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %499 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %500 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %501 = call i32 @rrdset_flag_set(i32* %499, i32 %500)
  %502 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %503 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %504 = call i32* @rrddim_add(i32* %502, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %503)
  store i32* %504, i32** @do_proc_meminfo.rd_slab, align 8
  %505 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %506 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %507 = call i32* @rrddim_add(i32* %505, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %506)
  store i32* %507, i32** @do_proc_meminfo.rd_kernelstack, align 8
  %508 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %509 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %510 = call i32* @rrddim_add(i32* %508, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %509)
  store i32* %510, i32** @do_proc_meminfo.rd_pagetables, align 8
  %511 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %512 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %513 = call i32* @rrddim_add(i32* %511, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %512)
  store i32* %513, i32** @do_proc_meminfo.rd_vmallocused, align 8
  br label %517

514:                                              ; preds = %484
  %515 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %516 = call i32 @rrdset_next(i32* %515)
  br label %517

517:                                              ; preds = %514, %491
  %518 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %519 = load i32*, i32** @do_proc_meminfo.rd_slab, align 8
  %520 = load i64, i64* @do_proc_meminfo.Slab, align 8
  %521 = call i32 @rrddim_set_by_pointer(i32* %518, i32* %519, i64 %520)
  %522 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %523 = load i32*, i32** @do_proc_meminfo.rd_kernelstack, align 8
  %524 = load i64, i64* @do_proc_meminfo.KernelStack, align 8
  %525 = call i32 @rrddim_set_by_pointer(i32* %522, i32* %523, i64 %524)
  %526 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %527 = load i32*, i32** @do_proc_meminfo.rd_pagetables, align 8
  %528 = load i64, i64* @do_proc_meminfo.PageTables, align 8
  %529 = call i32 @rrddim_set_by_pointer(i32* %526, i32* %527, i64 %528)
  %530 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %531 = load i32*, i32** @do_proc_meminfo.rd_vmallocused, align 8
  %532 = load i64, i64* @do_proc_meminfo.VmallocUsed, align 8
  %533 = call i32 @rrddim_set_by_pointer(i32* %530, i32* %531, i64 %532)
  %534 = load i32*, i32** @do_proc_meminfo.st_mem_kernel, align 8
  %535 = call i32 @rrdset_done(i32* %534)
  br label %536

536:                                              ; preds = %517, %481
  %537 = load i32, i32* @do_proc_meminfo.do_slab, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %576

539:                                              ; preds = %536
  %540 = load i32*, i32** @do_proc_meminfo.st_mem_slab, align 8
  %541 = icmp ne i32* %540, null
  %542 = xor i1 %541, true
  %543 = zext i1 %542 to i32
  %544 = call i64 @unlikely(i32 %543)
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %546, label %562

546:                                              ; preds = %539
  %547 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %548 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %549 = load i64, i64* @NETDATA_CHART_PRIO_MEM_SLAB, align 8
  %550 = load i32, i32* %4, align 4
  %551 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %552 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %547, i32 %548, i64 %549, i32 %550, i32 %551)
  store i32* %552, i32** @do_proc_meminfo.st_mem_slab, align 8
  %553 = load i32*, i32** @do_proc_meminfo.st_mem_slab, align 8
  %554 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %555 = call i32 @rrdset_flag_set(i32* %553, i32 %554)
  %556 = load i32*, i32** @do_proc_meminfo.st_mem_slab, align 8
  %557 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %558 = call i32* @rrddim_add(i32* %556, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %557)
  store i32* %558, i32** @do_proc_meminfo.rd_reclaimable, align 8
  %559 = load i32*, i32** @do_proc_meminfo.st_mem_slab, align 8
  %560 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %561 = call i32* @rrddim_add(i32* %559, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %560)
  store i32* %561, i32** @do_proc_meminfo.rd_unreclaimable, align 8
  br label %565

562:                                              ; preds = %539
  %563 = load i32*, i32** @do_proc_meminfo.st_mem_slab, align 8
  %564 = call i32 @rrdset_next(i32* %563)
  br label %565

565:                                              ; preds = %562, %546
  %566 = load i32*, i32** @do_proc_meminfo.st_mem_slab, align 8
  %567 = load i32*, i32** @do_proc_meminfo.rd_reclaimable, align 8
  %568 = load i64, i64* @do_proc_meminfo.SReclaimable, align 8
  %569 = call i32 @rrddim_set_by_pointer(i32* %566, i32* %567, i64 %568)
  %570 = load i32*, i32** @do_proc_meminfo.st_mem_slab, align 8
  %571 = load i32*, i32** @do_proc_meminfo.rd_unreclaimable, align 8
  %572 = load i64, i64* @do_proc_meminfo.SUnreclaim, align 8
  %573 = call i32 @rrddim_set_by_pointer(i32* %570, i32* %571, i64 %572)
  %574 = load i32*, i32** @do_proc_meminfo.st_mem_slab, align 8
  %575 = call i32 @rrdset_done(i32* %574)
  br label %576

576:                                              ; preds = %565, %536
  %577 = load i32, i32* @do_proc_meminfo.do_hugepages, align 4
  %578 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %579 = icmp eq i32 %577, %578
  br i1 %579, label %594, label %580

580:                                              ; preds = %576
  %581 = load i32, i32* @do_proc_meminfo.do_hugepages, align 4
  %582 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %583 = icmp eq i32 %581, %582
  br i1 %583, label %584, label %659

584:                                              ; preds = %580
  %585 = load i64, i64* @do_proc_meminfo.Hugepagesize, align 8
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %590

587:                                              ; preds = %584
  %588 = load i64, i64* @do_proc_meminfo.HugePages_Total, align 8
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %594, label %590

590:                                              ; preds = %587, %584
  %591 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %592 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %593 = icmp eq i32 %591, %592
  br i1 %593, label %594, label %659

594:                                              ; preds = %590, %587, %576
  %595 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %595, i32* @do_proc_meminfo.do_hugepages, align 4
  %596 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %597 = icmp ne i32* %596, null
  %598 = xor i1 %597, true
  %599 = zext i1 %598 to i32
  %600 = call i64 @unlikely(i32 %599)
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %633

602:                                              ; preds = %594
  %603 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %604 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %605 = load i64, i64* @NETDATA_CHART_PRIO_MEM_HUGEPAGES, align 8
  %606 = add nsw i64 %605, 1
  %607 = load i32, i32* %4, align 4
  %608 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %609 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %603, i32 %604, i64 %606, i32 %607, i32 %608)
  store i32* %609, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %610 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %611 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %612 = call i32 @rrdset_flag_set(i32* %610, i32 %611)
  %613 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %614 = load i64, i64* @do_proc_meminfo.Hugepagesize, align 8
  %615 = trunc i64 %614 to i32
  %616 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %617 = call i32* @rrddim_add(i32* %613, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i8* null, i32 %615, i32 1024, i32 %616)
  store i32* %617, i32** @do_proc_meminfo.rd_free.73, align 8
  %618 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %619 = load i64, i64* @do_proc_meminfo.Hugepagesize, align 8
  %620 = trunc i64 %619 to i32
  %621 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %622 = call i32* @rrddim_add(i32* %618, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i8* null, i32 %620, i32 1024, i32 %621)
  store i32* %622, i32** @do_proc_meminfo.rd_used.72, align 8
  %623 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %624 = load i64, i64* @do_proc_meminfo.Hugepagesize, align 8
  %625 = trunc i64 %624 to i32
  %626 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %627 = call i32* @rrddim_add(i32* %623, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i64 0, i64 0), i8* null, i32 %625, i32 1024, i32 %626)
  store i32* %627, i32** @do_proc_meminfo.rd_surp, align 8
  %628 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %629 = load i64, i64* @do_proc_meminfo.Hugepagesize, align 8
  %630 = trunc i64 %629 to i32
  %631 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %632 = call i32* @rrddim_add(i32* %628, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i8* null, i32 %630, i32 1024, i32 %631)
  store i32* %632, i32** @do_proc_meminfo.rd_rsvd, align 8
  br label %636

633:                                              ; preds = %594
  %634 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %635 = call i32 @rrdset_next(i32* %634)
  br label %636

636:                                              ; preds = %633, %602
  %637 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %638 = load i32*, i32** @do_proc_meminfo.rd_used.72, align 8
  %639 = load i64, i64* @do_proc_meminfo.HugePages_Total, align 8
  %640 = load i64, i64* @do_proc_meminfo.HugePages_Free, align 8
  %641 = sub i64 %639, %640
  %642 = load i64, i64* @do_proc_meminfo.HugePages_Rsvd, align 8
  %643 = sub i64 %641, %642
  %644 = call i32 @rrddim_set_by_pointer(i32* %637, i32* %638, i64 %643)
  %645 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %646 = load i32*, i32** @do_proc_meminfo.rd_free.73, align 8
  %647 = load i64, i64* @do_proc_meminfo.HugePages_Free, align 8
  %648 = call i32 @rrddim_set_by_pointer(i32* %645, i32* %646, i64 %647)
  %649 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %650 = load i32*, i32** @do_proc_meminfo.rd_rsvd, align 8
  %651 = load i64, i64* @do_proc_meminfo.HugePages_Rsvd, align 8
  %652 = call i32 @rrddim_set_by_pointer(i32* %649, i32* %650, i64 %651)
  %653 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %654 = load i32*, i32** @do_proc_meminfo.rd_surp, align 8
  %655 = load i64, i64* @do_proc_meminfo.HugePages_Surp, align 8
  %656 = call i32 @rrddim_set_by_pointer(i32* %653, i32* %654, i64 %655)
  %657 = load i32*, i32** @do_proc_meminfo.st_mem_hugepages, align 8
  %658 = call i32 @rrdset_done(i32* %657)
  br label %659

659:                                              ; preds = %636, %590, %580
  %660 = load i32, i32* @do_proc_meminfo.do_transparent_hugepages, align 4
  %661 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %662 = icmp eq i32 %660, %661
  br i1 %662, label %677, label %663

663:                                              ; preds = %659
  %664 = load i32, i32* @do_proc_meminfo.do_transparent_hugepages, align 4
  %665 = load i32, i32* @CONFIG_BOOLEAN_AUTO, align 4
  %666 = icmp eq i32 %664, %665
  br i1 %666, label %667, label %715

667:                                              ; preds = %663
  %668 = load i64, i64* @do_proc_meminfo.AnonHugePages, align 8
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %677, label %670

670:                                              ; preds = %667
  %671 = load i64, i64* @do_proc_meminfo.ShmemHugePages, align 8
  %672 = icmp ne i64 %671, 0
  br i1 %672, label %677, label %673

673:                                              ; preds = %670
  %674 = load i32, i32* @netdata_zero_metrics_enabled, align 4
  %675 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %676 = icmp eq i32 %674, %675
  br i1 %676, label %677, label %715

677:                                              ; preds = %673, %670, %667, %659
  %678 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  store i32 %678, i32* @do_proc_meminfo.do_transparent_hugepages, align 4
  %679 = load i32*, i32** @do_proc_meminfo.st_mem_transparent_hugepages, align 8
  %680 = icmp ne i32* %679, null
  %681 = xor i1 %680, true
  %682 = zext i1 %681 to i32
  %683 = call i64 @unlikely(i32 %682)
  %684 = icmp ne i64 %683, 0
  br i1 %684, label %685, label %701

685:                                              ; preds = %677
  %686 = load i32, i32* @PLUGIN_PROC_NAME, align 4
  %687 = load i32, i32* @PLUGIN_PROC_MODULE_MEMINFO_NAME, align 4
  %688 = load i64, i64* @NETDATA_CHART_PRIO_MEM_HUGEPAGES, align 8
  %689 = load i32, i32* %4, align 4
  %690 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %691 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %686, i32 %687, i64 %688, i32 %689, i32 %690)
  store i32* %691, i32** @do_proc_meminfo.st_mem_transparent_hugepages, align 8
  %692 = load i32*, i32** @do_proc_meminfo.st_mem_transparent_hugepages, align 8
  %693 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %694 = call i32 @rrdset_flag_set(i32* %692, i32 %693)
  %695 = load i32*, i32** @do_proc_meminfo.st_mem_transparent_hugepages, align 8
  %696 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %697 = call i32* @rrddim_add(i32* %695, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %696)
  store i32* %697, i32** @do_proc_meminfo.rd_anonymous, align 8
  %698 = load i32*, i32** @do_proc_meminfo.st_mem_transparent_hugepages, align 8
  %699 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %700 = call i32* @rrddim_add(i32* %698, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0), i8* null, i32 1, i32 1024, i32 %699)
  store i32* %700, i32** @do_proc_meminfo.rd_shared, align 8
  br label %704

701:                                              ; preds = %677
  %702 = load i32*, i32** @do_proc_meminfo.st_mem_transparent_hugepages, align 8
  %703 = call i32 @rrdset_next(i32* %702)
  br label %704

704:                                              ; preds = %701, %685
  %705 = load i32*, i32** @do_proc_meminfo.st_mem_transparent_hugepages, align 8
  %706 = load i32*, i32** @do_proc_meminfo.rd_anonymous, align 8
  %707 = load i64, i64* @do_proc_meminfo.AnonHugePages, align 8
  %708 = call i32 @rrddim_set_by_pointer(i32* %705, i32* %706, i64 %707)
  %709 = load i32*, i32** @do_proc_meminfo.st_mem_transparent_hugepages, align 8
  %710 = load i32*, i32** @do_proc_meminfo.rd_shared, align 8
  %711 = load i64, i64* @do_proc_meminfo.ShmemHugePages, align 8
  %712 = call i32 @rrddim_set_by_pointer(i32* %709, i32* %710, i64 %711)
  %713 = load i32*, i32** @do_proc_meminfo.st_mem_transparent_hugepages, align 8
  %714 = call i32 @rrdset_done(i32* %713)
  br label %715

715:                                              ; preds = %704, %673, %663
  store i32 0, i32* %3, align 4
  br label %716

716:                                              ; preds = %715, %141, %128
  %717 = load i32, i32* %3, align 4
  ret i32 %717

718:                                              ; preds = %128
  unreachable
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @config_get_boolean(i32, i8*, i32) #1

declare dso_local i32 @config_get_boolean_ondemand(i32, i8*, i32) #1

declare dso_local i32* @arl_create(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @arl_expect(i32*, i8*, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32* @procfile_open(i32, i8*, i32) #1

declare dso_local i32 @config_get(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i64 @procfile_lines(i32*) #1

declare dso_local i32 @arl_begin(i32*) #1

declare dso_local i64 @procfile_linewords(i32*, i64) #1

declare dso_local i32 @arl_check(i32*, i32, i32) #1

declare dso_local i32 @procfile_lineword(i32*, i64, i32) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

declare dso_local i32 @rrdset_flag_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
