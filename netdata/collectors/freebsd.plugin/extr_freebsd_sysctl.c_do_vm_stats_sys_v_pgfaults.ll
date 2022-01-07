; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_stats_sys_v_pgfaults.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_stats_sys_v_pgfaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@do_vm_stats_sys_v_pgfaults.mib_vm_faults = internal global [4 x i32] zeroinitializer, align 16
@do_vm_stats_sys_v_pgfaults.mib_io_faults = internal global [4 x i32] zeroinitializer, align 16
@do_vm_stats_sys_v_pgfaults.mib_cow_faults = internal global [4 x i32] zeroinitializer, align 16
@do_vm_stats_sys_v_pgfaults.mib_cow_optim = internal global [4 x i32] zeroinitializer, align 16
@do_vm_stats_sys_v_pgfaults.mib_intrans = internal global [4 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [24 x i8] c"vm.stats.vm.v_vm_faults\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"vm.stats.vm.v_io_faults\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"vm.stats.vm.v_cow_faults\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"vm.stats.vm.v_cow_optim\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"vm.stats.vm.v_intrans\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"DISABLED: mem.pgfaults chart\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"DISABLED: vm.stats.vm.v_pgfaults module\00", align 1
@do_vm_stats_sys_v_pgfaults.st = internal global i32* null, align 8
@do_vm_stats_sys_v_pgfaults.rd_memory = internal global i32* null, align 8
@do_vm_stats_sys_v_pgfaults.rd_io_requiring = internal global i32* null, align 8
@do_vm_stats_sys_v_pgfaults.rd_cow = internal global i32* null, align 8
@do_vm_stats_sys_v_pgfaults.rd_cow_optimized = internal global i32* null, align 8
@do_vm_stats_sys_v_pgfaults.rd_in_transit = internal global i32* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"pgfaults\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Memory Page Faults\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"page faults/s\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"vm.stats.vm.v_pgfaults\00", align 1
@NETDATA_CHART_PRIO_MEM_SYSTEM_PGFAULTS = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@RRDSET_FLAG_DETAIL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"io_requiring\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cow\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"cow_optimized\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"in_transit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_vm_stats_sys_v_pgfaults(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_vm_stats_sys_v_pgfaults.mib_vm_faults, i64 0, i64 0), i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_vm_stats_sys_v_pgfaults.mib_io_faults, i64 0, i64 0), i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_vm_stats_sys_v_pgfaults.mib_cow_faults, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_vm_stats_sys_v_pgfaults.mib_cow_optim, i64 0, i64 0), i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_vm_stats_sys_v_pgfaults.mib_intrans, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %22, %17, %12, %2
  %33 = phi i1 [ true, %22 ], [ true, %17 ], [ true, %12 ], [ true, %2 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %39 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %102

40:                                               ; preds = %32
  %41 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %42 = icmp ne i32* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %40
  %48 = load i32, i32* @NETDATA_CHART_PRIO_MEM_SYSTEM_PGFAULTS, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %51 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  store i32* %51, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %52 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %53 = load i32, i32* @RRDSET_FLAG_DETAIL, align 4
  %54 = call i32 @rrdset_flag_set(i32* %52, i32 %53)
  %55 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %56 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %57 = call i32* @rrddim_add(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %56)
  store i32* %57, i32** @do_vm_stats_sys_v_pgfaults.rd_memory, align 8
  %58 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %59 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %60 = call i32* @rrddim_add(i32* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %59)
  store i32* %60, i32** @do_vm_stats_sys_v_pgfaults.rd_io_requiring, align 8
  %61 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %62 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %63 = call i32* @rrddim_add(i32* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %62)
  store i32* %63, i32** @do_vm_stats_sys_v_pgfaults.rd_cow, align 8
  %64 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %65 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %66 = call i32* @rrddim_add(i32* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %65)
  store i32* %66, i32** @do_vm_stats_sys_v_pgfaults.rd_cow_optimized, align 8
  %67 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %68 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %69 = call i32* @rrddim_add(i32* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %68)
  store i32* %69, i32** @do_vm_stats_sys_v_pgfaults.rd_in_transit, align 8
  br label %73

70:                                               ; preds = %40
  %71 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %72 = call i32 @rrdset_next(i32* %71)
  br label %73

73:                                               ; preds = %70, %47
  %74 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %75 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.rd_memory, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @rrddim_set_by_pointer(i32* %74, i32* %75, i32 %77)
  %79 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %80 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.rd_io_requiring, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rrddim_set_by_pointer(i32* %79, i32* %80, i32 %82)
  %84 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %85 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.rd_cow, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rrddim_set_by_pointer(i32* %84, i32* %85, i32 %87)
  %89 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %90 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.rd_cow_optimized, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @rrddim_set_by_pointer(i32* %89, i32* %90, i32 %92)
  %94 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %95 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.rd_in_transit, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @rrddim_set_by_pointer(i32* %94, i32* %95, i32 %97)
  %99 = load i32*, i32** @do_vm_stats_sys_v_pgfaults.st, align 8
  %100 = call i32 @rrdset_done(i32* %99)
  br label %101

101:                                              ; preds = %73
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %37
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @GETSYSCTL_SIMPLE(i8*, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @rrdset_flag_set(i32*, i32) #1

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
