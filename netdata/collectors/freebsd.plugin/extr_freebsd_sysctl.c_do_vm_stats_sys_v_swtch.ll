; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_stats_sys_v_swtch.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_stats_sys_v_swtch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_vm_stats_sys_v_swtch.mib = internal global [4 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [21 x i8] c"vm.stats.sys.v_swtch\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DISABLED: system.ctxt chart\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"DISABLED: vm.stats.sys.v_swtch module\00", align 1
@do_vm_stats_sys_v_swtch.st = internal global i32* null, align 8
@do_vm_stats_sys_v_swtch.rd = internal global i32* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"processes\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CPU Context Switches\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"context switches/s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_CTXT = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"switches\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_vm_stats_sys_v_swtch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @do_vm_stats_sys_v_swtch.mib, i64 0, i64 0), i32 %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load i32*, i32** @do_vm_stats_sys_v_swtch.st, align 8
  %17 = icmp ne i32* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_CTXT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %26 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  store i32* %26, i32** @do_vm_stats_sys_v_swtch.st, align 8
  %27 = load i32*, i32** @do_vm_stats_sys_v_swtch.st, align 8
  %28 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %29 = call i32* @rrddim_add(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 1, i32 1, i32 %28)
  store i32* %29, i32** @do_vm_stats_sys_v_swtch.rd, align 8
  br label %33

30:                                               ; preds = %15
  %31 = load i32*, i32** @do_vm_stats_sys_v_swtch.st, align 8
  %32 = call i32 @rrdset_next(i32* %31)
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i32*, i32** @do_vm_stats_sys_v_swtch.st, align 8
  %35 = load i32*, i32** @do_vm_stats_sys_v_swtch.rd, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rrddim_set_by_pointer(i32* %34, i32* %35, i32 %36)
  %38 = load i32*, i32** @do_vm_stats_sys_v_swtch.st, align 8
  %39 = call i32 @rrdset_done(i32* %38)
  br label %40

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, i32) #1

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
