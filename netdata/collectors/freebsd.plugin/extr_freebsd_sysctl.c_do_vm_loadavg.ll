; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_loadavg.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_vm_loadavg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.loadavg = type { double, i64* }

@do_vm_loadavg.next_loadavg_dt = internal global i32 0, align 4
@do_vm_loadavg.mib = internal global [2 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"vm.loadavg\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"DISABLED: system.load chart\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"DISABLED: vm.loadavg module\00", align 1
@do_vm_loadavg.st = internal global %struct.TYPE_7__* null, align 8
@do_vm_loadavg.rd_load1 = internal global i32* null, align 8
@do_vm_loadavg.rd_load2 = internal global i32* null, align 8
@do_vm_loadavg.rd_load3 = internal global i32* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"System Load Average\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@NETDATA_CHART_PRIO_SYSTEM_LOAD = common dso_local global i32 0, align 4
@MIN_LOADAVG_UPDATE_EVERY = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"load1\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"load5\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"load15\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_vm_loadavg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.loadavg, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @do_vm_loadavg.next_loadavg_dt, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %102

10:                                               ; preds = %2
  %11 = bitcast %struct.loadavg* %6 to { double, i64* }*
  %12 = getelementptr inbounds { double, i64* }, { double, i64* }* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, i64* }, { double, i64* }* %11, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = call i32 @GETSYSCTL_SIMPLE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @do_vm_loadavg.mib, i64 0, i64 0), double %13, i64* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %107

22:                                               ; preds = %10
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load i32, i32* @NETDATA_CHART_PRIO_SYSTEM_LOAD, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MIN_LOADAVG_UPDATE_EVERY, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @MIN_LOADAVG_UPDATE_EVERY, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %41 = call %struct.TYPE_7__* @rrdset_create_localhost(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %39, i32 %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %43 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %44 = call i32* @rrddim_add(%struct.TYPE_7__* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %43)
  store i32* %44, i32** @do_vm_loadavg.rd_load1, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %46 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %47 = call i32* @rrddim_add(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %46)
  store i32* %47, i32** @do_vm_loadavg.rd_load2, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %49 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %50 = call i32* @rrddim_add(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %49)
  store i32* %50, i32** @do_vm_loadavg.rd_load3, align 8
  br label %54

51:                                               ; preds = %22
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %53 = call i32 @rrdset_next(%struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %51, %38
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %56 = load i32*, i32** @do_vm_loadavg.rd_load1, align 8
  %57 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %6, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = sitofp i64 %60 to double
  %62 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %6, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = fdiv double %61, %63
  %65 = fmul double %64, 1.000000e+03
  %66 = fptosi double %65 to i32
  %67 = call i32 @rrddim_set_by_pointer(%struct.TYPE_7__* %55, i32* %56, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %69 = load i32*, i32** @do_vm_loadavg.rd_load2, align 8
  %70 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %6, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %6, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = fdiv double %74, %76
  %78 = fmul double %77, 1.000000e+03
  %79 = fptosi double %78 to i32
  %80 = call i32 @rrddim_set_by_pointer(%struct.TYPE_7__* %68, i32* %69, i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %82 = load i32*, i32** @do_vm_loadavg.rd_load3, align 8
  %83 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %6, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  %86 = load i64, i64* %85, align 8
  %87 = sitofp i64 %86 to double
  %88 = getelementptr inbounds %struct.loadavg, %struct.loadavg* %6, i32 0, i32 0
  %89 = load double, double* %88, align 8
  %90 = fdiv double %87, %89
  %91 = fmul double %90, 1.000000e+03
  %92 = fptosi double %91 to i32
  %93 = call i32 @rrddim_set_by_pointer(%struct.TYPE_7__* %81, i32* %82, i32 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %95 = call i32 @rrdset_done(%struct.TYPE_7__* %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @do_vm_loadavg.st, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @USEC_PER_SEC, align 4
  %100 = mul nsw i32 %98, %99
  store i32 %100, i32* @do_vm_loadavg.next_loadavg_dt, align 4
  br label %101

101:                                              ; preds = %54
  br label %106

102:                                              ; preds = %2
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @do_vm_loadavg.next_loadavg_dt, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* @do_vm_loadavg.next_loadavg_dt, align 4
  br label %106

106:                                              ; preds = %102, %101
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @GETSYSCTL_SIMPLE(i8*, i32*, double, i64*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.TYPE_7__* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(%struct.TYPE_7__*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(%struct.TYPE_7__*) #1

declare dso_local i32 @rrddim_set_by_pointer(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @rrdset_done(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
