; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_stats_sys_v_swappgs.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_stats_sys_v_swappgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@do_vm_stats_sys_v_swappgs.mib_swappgsin = internal global [4 x i32] zeroinitializer, align 16
@do_vm_stats_sys_v_swappgs.mib_swappgsout = internal global [4 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [24 x i8] c"vm.stats.vm.v_swappgsin\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"vm.stats.vm.v_swappgsout\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"DISABLED: system.swapio chart\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"DISABLED: vm.stats.vm.v_swappgs module\00", align 1
@do_vm_stats_sys_v_swappgs.st = internal global i32* null, align 8
@do_vm_stats_sys_v_swappgs.rd_in = internal global i32* null, align 8
@do_vm_stats_sys_v_swappgs.rd_out = internal global i32* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"swapio\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Swap I/O\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"KiB/s\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"vm.stats.vm.v_swappgs\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_SWAPIO = common dso_local global i32 0, align 4
@RRDSET_TYPE_AREA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@system_pagesize = common dso_local global i32 0, align 4
@KILO_FACTOR = common dso_local global i32 0, align 4
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_vm_stats_sys_v_swappgs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_vm_stats_sys_v_swappgs.mib_swappgsin, i64 0, i64 0), i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_vm_stats_sys_v_swappgs.mib_swappgsout, i64 0, i64 0), i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ true, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %24 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %65

25:                                               ; preds = %17
  %26 = load i32*, i32** @do_vm_stats_sys_v_swappgs.st, align 8
  %27 = icmp ne i32* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_SWAPIO, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RRDSET_TYPE_AREA, align 4
  %36 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  store i32* %36, i32** @do_vm_stats_sys_v_swappgs.st, align 8
  %37 = load i32*, i32** @do_vm_stats_sys_v_swappgs.st, align 8
  %38 = load i32, i32* @system_pagesize, align 4
  %39 = load i32, i32* @KILO_FACTOR, align 4
  %40 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %41 = call i32* @rrddim_add(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 %38, i32 %39, i32 %40)
  store i32* %41, i32** @do_vm_stats_sys_v_swappgs.rd_in, align 8
  %42 = load i32*, i32** @do_vm_stats_sys_v_swappgs.st, align 8
  %43 = load i32, i32* @system_pagesize, align 4
  %44 = sub nsw i32 0, %43
  %45 = load i32, i32* @KILO_FACTOR, align 4
  %46 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %47 = call i32* @rrddim_add(i32* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 %44, i32 %45, i32 %46)
  store i32* %47, i32** @do_vm_stats_sys_v_swappgs.rd_out, align 8
  br label %51

48:                                               ; preds = %25
  %49 = load i32*, i32** @do_vm_stats_sys_v_swappgs.st, align 8
  %50 = call i32 @rrdset_next(i32* %49)
  br label %51

51:                                               ; preds = %48, %32
  %52 = load i32*, i32** @do_vm_stats_sys_v_swappgs.st, align 8
  %53 = load i32*, i32** @do_vm_stats_sys_v_swappgs.rd_in, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rrddim_set_by_pointer(i32* %52, i32* %53, i32 %55)
  %57 = load i32*, i32** @do_vm_stats_sys_v_swappgs.st, align 8
  %58 = load i32*, i32** @do_vm_stats_sys_v_swappgs.rd_out, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rrddim_set_by_pointer(i32* %57, i32* %58, i32 %60)
  %62 = load i32*, i32** @do_vm_stats_sys_v_swappgs.st, align 8
  %63 = call i32 @rrdset_done(i32* %62)
  br label %64

64:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
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
