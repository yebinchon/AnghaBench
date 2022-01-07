; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_system_ram.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_system_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@do_system_ram.mib_active_count = internal global [4 x i32] zeroinitializer, align 16
@do_system_ram.mib_inactive_count = internal global [4 x i32] zeroinitializer, align 16
@do_system_ram.mib_wire_count = internal global [4 x i32] zeroinitializer, align 16
@do_system_ram.mib_cache_count = internal global [4 x i32] zeroinitializer, align 16
@do_system_ram.mib_vfs_bufspace = internal global [2 x i32] zeroinitializer, align 4
@do_system_ram.mib_free_count = internal global [4 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [27 x i8] c"vm.stats.vm.v_active_count\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"vm.stats.vm.v_inactive_count\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"vm.stats.vm.v_wire_count\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vm.stats.vm.v_cache_count\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"vfs.bufspace\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"vm.stats.vm.v_free_count\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"DISABLED: system.ram chart\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"DISABLED: system.ram module\00", align 1
@do_system_ram.st = internal global i32* null, align 8
@do_system_ram.rd_free = internal global i32* null, align 8
@do_system_ram.rd_active = internal global i32* null, align 8
@do_system_ram.rd_inactive = internal global i32* null, align 8
@do_system_ram.rd_wired = internal global i32* null, align 8
@do_system_ram.rd_cache = internal global i32* null, align 8
@do_system_ram.rd_buffers = internal global i32* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"System RAM\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"system.ram\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_RAM = common dso_local global i32 0, align 4
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@system_pagesize = common dso_local global i32 0, align 4
@MEGA_FACTOR = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"wired\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"buffers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_system_ram(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_system_ram.mib_active_count, i64 0, i64 0), i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_system_ram.mib_inactive_count, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_system_ram.mib_wire_count, i64 0, i64 0), i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_system_ram.mib_cache_count, i64 0, i64 0), i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @do_system_ram.mib_vfs_bufspace, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_system_ram.mib_free_count, i64 0, i64 0), i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %28, %23, %18, %13, %2
  %38 = phi i1 [ true, %28 ], [ true, %23 ], [ true, %18 ], [ true, %13 ], [ true, %2 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %44 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %122

45:                                               ; preds = %37
  %46 = load i32*, i32** @do_system_ram.st, align 8
  %47 = icmp ne i32* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %45
  %53 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_RAM, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %56 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  store i32* %56, i32** @do_system_ram.st, align 8
  %57 = load i32*, i32** @do_system_ram.st, align 8
  %58 = load i32, i32* @system_pagesize, align 4
  %59 = load i32, i32* @MEGA_FACTOR, align 4
  %60 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %61 = call i32* @rrddim_add(i32* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* null, i32 %58, i32 %59, i32 %60)
  store i32* %61, i32** @do_system_ram.rd_free, align 8
  %62 = load i32*, i32** @do_system_ram.st, align 8
  %63 = load i32, i32* @system_pagesize, align 4
  %64 = load i32, i32* @MEGA_FACTOR, align 4
  %65 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %66 = call i32* @rrddim_add(i32* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 %63, i32 %64, i32 %65)
  store i32* %66, i32** @do_system_ram.rd_active, align 8
  %67 = load i32*, i32** @do_system_ram.st, align 8
  %68 = load i32, i32* @system_pagesize, align 4
  %69 = load i32, i32* @MEGA_FACTOR, align 4
  %70 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %71 = call i32* @rrddim_add(i32* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32* null, i32 %68, i32 %69, i32 %70)
  store i32* %71, i32** @do_system_ram.rd_inactive, align 8
  %72 = load i32*, i32** @do_system_ram.st, align 8
  %73 = load i32, i32* @system_pagesize, align 4
  %74 = load i32, i32* @MEGA_FACTOR, align 4
  %75 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %76 = call i32* @rrddim_add(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32* null, i32 %73, i32 %74, i32 %75)
  store i32* %76, i32** @do_system_ram.rd_wired, align 8
  %77 = load i32*, i32** @do_system_ram.st, align 8
  %78 = load i32, i32* @system_pagesize, align 4
  %79 = load i32, i32* @MEGA_FACTOR, align 4
  %80 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %81 = call i32* @rrddim_add(i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32* null, i32 %78, i32 %79, i32 %80)
  store i32* %81, i32** @do_system_ram.rd_cache, align 8
  %82 = load i32*, i32** @do_system_ram.st, align 8
  %83 = load i32, i32* @MEGA_FACTOR, align 4
  %84 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %85 = call i32* @rrddim_add(i32* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32* null, i32 1, i32 %83, i32 %84)
  store i32* %85, i32** @do_system_ram.rd_buffers, align 8
  br label %89

86:                                               ; preds = %45
  %87 = load i32*, i32** @do_system_ram.st, align 8
  %88 = call i32 @rrdset_next(i32* %87)
  br label %89

89:                                               ; preds = %86, %52
  %90 = load i32*, i32** @do_system_ram.st, align 8
  %91 = load i32*, i32** @do_system_ram.rd_free, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rrddim_set_by_pointer(i32* %90, i32* %91, i32 %93)
  %95 = load i32*, i32** @do_system_ram.st, align 8
  %96 = load i32*, i32** @do_system_ram.rd_active, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rrddim_set_by_pointer(i32* %95, i32* %96, i32 %98)
  %100 = load i32*, i32** @do_system_ram.st, align 8
  %101 = load i32*, i32** @do_system_ram.rd_inactive, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @rrddim_set_by_pointer(i32* %100, i32* %101, i32 %103)
  %105 = load i32*, i32** @do_system_ram.st, align 8
  %106 = load i32*, i32** @do_system_ram.rd_wired, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @rrddim_set_by_pointer(i32* %105, i32* %106, i32 %108)
  %110 = load i32*, i32** @do_system_ram.st, align 8
  %111 = load i32*, i32** @do_system_ram.rd_cache, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @rrddim_set_by_pointer(i32* %110, i32* %111, i32 %113)
  %115 = load i32*, i32** @do_system_ram.st, align 8
  %116 = load i32*, i32** @do_system_ram.rd_buffers, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @rrddim_set_by_pointer(i32* %115, i32* %116, i32 %117)
  %119 = load i32*, i32** @do_system_ram.st, align 8
  %120 = call i32 @rrdset_done(i32* %119)
  br label %121

121:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %42
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @GETSYSCTL_SIMPLE(i8*, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i32) #1

declare dso_local i32 @rrdset_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
