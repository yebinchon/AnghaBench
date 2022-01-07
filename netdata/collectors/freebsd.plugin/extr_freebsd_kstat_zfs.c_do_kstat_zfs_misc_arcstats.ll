; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_kstat_zfs.c_do_kstat_zfs_misc_arcstats.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_kstat_zfs.c_do_kstat_zfs_misc_arcstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibs = type { [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32] }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@do_kstat_zfs_misc_arcstats.show_zero_charts = internal global i32 -1, align 4
@.str = private unnamed_addr constant [28 x i8] c"plugin:freebsd:zfs_arcstats\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"show zero charts\00", align 1
@CONFIG_BOOLEAN_NO = common dso_local global i32 0, align 4
@do_kstat_zfs_misc_arcstats.mibs = internal global %struct.mibs zeroinitializer, align 4
@arcstats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"kstat.zfs.misc.arcstats.l2_size\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"kstat.zfs.misc.arcstats.hits\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"kstat.zfs.misc.arcstats.misses\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"kstat.zfs.misc.arcstats.demand_data_hits\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"kstat.zfs.misc.arcstats.demand_data_misses\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"kstat.zfs.misc.arcstats.demand_metadata_hits\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"kstat.zfs.misc.arcstats.demand_metadata_misses\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"kstat.zfs.misc.arcstats.prefetch_data_hits\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"kstat.zfs.misc.arcstats.prefetch_data_misses\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"kstat.zfs.misc.arcstats.prefetch_metadata_hits\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"kstat.zfs.misc.arcstats.prefetch_metadata_misses\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"kstat.zfs.misc.arcstats.mru_hits\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"kstat.zfs.misc.arcstats.mru_ghost_hits\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"kstat.zfs.misc.arcstats.mfu_hits\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"kstat.zfs.misc.arcstats.mfu_ghost_hits\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"kstat.zfs.misc.arcstats.deleted\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"kstat.zfs.misc.arcstats.mutex_miss\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"kstat.zfs.misc.arcstats.evict_skip\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"kstat.zfs.misc.arcstats.hash_elements\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"kstat.zfs.misc.arcstats.hash_elements_max\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"kstat.zfs.misc.arcstats.hash_collisions\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"kstat.zfs.misc.arcstats.hash_chains\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"kstat.zfs.misc.arcstats.hash_chain_max\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"kstat.zfs.misc.arcstats.p\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"kstat.zfs.misc.arcstats.c\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"kstat.zfs.misc.arcstats.c_min\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"kstat.zfs.misc.arcstats.c_max\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"kstat.zfs.misc.arcstats.size\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"kstat.zfs.misc.arcstats.mru_size\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"kstat.zfs.misc.arcstats.mfu_size\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"kstat.zfs.misc.arcstats.l2_hits\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"kstat.zfs.misc.arcstats.l2_misses\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"kstat.zfs.misc.arcstats.l2_read_bytes\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"kstat.zfs.misc.arcstats.l2_write_bytes\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"kstat.zfs.misc.arcstats.l2_asize\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"kstat.zfs.misc.arcstats.memory_throttle_count\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"freebsd\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"zfs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_kstat_zfs_misc_arcstats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @do_kstat_zfs_misc_arcstats.show_zero_charts, align 4
  %10 = icmp eq i32 %9, -1
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @CONFIG_BOOLEAN_NO, align 4
  %16 = call i32 @config_get_boolean_ondemand(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i32 %16, i32* @do_kstat_zfs_misc_arcstats.show_zero_charts, align 4
  br label %17

17:                                               ; preds = %14, %2
  store i64 4, i64* %7, align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 0), align 4
  %18 = bitcast i64* %6 to i32**
  %19 = call i32 @sysctlbyname(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32** %18, i64* %7, i32* null, i32 0)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %109

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = call i64 @likely(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 0), align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 0), align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 36), align 4
  %32 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 0, i64 0), i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 35), align 4
  %34 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 1, i64 0), i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 34), align 4
  %36 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 2, i64 0), i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 33), align 4
  %38 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 3, i64 0), i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 32), align 4
  %40 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 4, i64 0), i32 %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 31), align 4
  %42 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 5, i64 0), i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 30), align 4
  %44 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 6, i64 0), i32 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 29), align 4
  %46 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 7, i64 0), i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 28), align 4
  %48 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 8, i64 0), i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 27), align 4
  %50 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 9, i64 0), i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 26), align 4
  %52 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 10, i64 0), i32 %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 25), align 4
  %54 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 11, i64 0), i32 %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 24), align 4
  %56 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 12, i64 0), i32 %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 23), align 4
  %58 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 13, i64 0), i32 %57)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 22), align 4
  %60 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 14, i64 0), i32 %59)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 21), align 4
  %62 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 15, i64 0), i32 %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 20), align 4
  %64 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 16, i64 0), i32 %63)
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 19), align 4
  %66 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 17, i64 0), i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 18), align 4
  %68 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 18, i64 0), i32 %67)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 17), align 4
  %70 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 19, i64 0), i32 %69)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 16), align 4
  %72 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 20, i64 0), i32 %71)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 15), align 4
  %74 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 21, i64 0), i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 14), align 4
  %76 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 22, i64 0), i32 %75)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 13), align 4
  %78 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 23, i64 0), i32 %77)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 12), align 4
  %80 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 24, i64 0), i32 %79)
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 11), align 4
  %82 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 25, i64 0), i32 %81)
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 10), align 4
  %84 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 26, i64 0), i32 %83)
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 9), align 4
  %86 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 27, i64 0), i32 %85)
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 8), align 4
  %88 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 28, i64 0), i32 %87)
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 7), align 4
  %90 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 29, i64 0), i32 %89)
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 6), align 4
  %92 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 30, i64 0), i32 %91)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 5), align 4
  %94 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 31, i64 0), i32 %93)
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 4), align 4
  %96 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 32, i64 0), i32 %95)
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 3), align 4
  %98 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 33, i64 0), i32 %97)
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 2), align 4
  %100 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 34, i64 0), i32 %99)
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arcstats, i32 0, i32 1), align 4
  %102 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i64 0, i64 0), i32* getelementptr inbounds (%struct.mibs, %struct.mibs* @do_kstat_zfs_misc_arcstats.mibs, i32 0, i32 35, i64 0), i32 %101)
  %103 = load i32, i32* @do_kstat_zfs_misc_arcstats.show_zero_charts, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @generate_charts_arcstats(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* @do_kstat_zfs_misc_arcstats.show_zero_charts, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @generate_charts_arc_summary(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i32 %106, i32 %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %30, %22
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @config_get_boolean_ondemand(i8*, i8*, i32) #1

declare dso_local i32 @sysctlbyname(i8*, i32**, i64*, i32*, i32) #1

declare dso_local i64 @likely(i32*) #1

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, i32) #1

declare dso_local i32 @generate_charts_arcstats(i8*, i8*, i32, i32) #1

declare dso_local i32 @generate_charts_arc_summary(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
