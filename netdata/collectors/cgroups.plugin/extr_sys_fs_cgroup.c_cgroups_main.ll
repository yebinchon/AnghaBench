; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroups_main.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_sys_fs_cgroup.c_cgroups_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@cgroup_main_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"plugin:cgroups\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cgroups plugin resource charts\00", align 1
@cgroup_update_every = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i64 0, align 8
@cgroup_check_for_new_every = common dso_local global i64 0, align 8
@netdata_exit = common dso_local global i32 0, align 4
@cgroups_check = common dso_local global i64 0, align 8
@cgroup_root = common dso_local global i32 0, align 4
@RUSAGE_THREAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"netdata\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"plugin_cgroups_cpu\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cgroups\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"NetData CGroups Plugin CPU usage\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"milliseconds/s\00", align 1
@PLUGIN_CGROUPS_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@RRD_ALGORITHM_INCREMENTAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"system\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cgroups_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rusage, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @cgroup_main_cleanup, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @netdata_thread_cleanup_push(i32 %11, i8* %12)
  %14 = call i32 @config_get_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @read_cgroup_plugin_configuration()
  store i32* null, i32** %5, align 8
  %16 = call i32 @heartbeat_init(i32* %6)
  %17 = load i64, i64* @cgroup_update_every, align 8
  %18 = load i64, i64* @USEC_PER_SEC, align 8
  %19 = mul nsw i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* @cgroup_check_for_new_every, align 8
  %21 = load i64, i64* @USEC_PER_SEC, align 8
  %22 = mul nsw i64 %20, %21
  store i64 %22, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %104, %1
  %24 = load i32, i32* @netdata_exit, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %105

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @heartbeat_next(i32* %6, i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i32, i32* @netdata_exit, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %105

34:                                               ; preds = %27
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i64, i64* @cgroups_check, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi i1 [ true, %34 ], [ %43, %41 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (...) @find_all_cgroups()
  store i64 0, i64* %9, align 8
  store i64 0, i64* @cgroups_check, align 8
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* @cgroup_root, align 4
  %53 = call i32 @read_all_cgroups(i32 %52)
  %54 = load i64, i64* @cgroup_update_every, align 8
  %55 = call i32 @update_cgroup_charts(i64 %54)
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %51
  %59 = load i32, i32* @RUSAGE_THREAD, align 4
  %60 = call i32 @getrusage(i32 %59, %struct.rusage* %3)
  %61 = load i32*, i32** %5, align 8
  %62 = icmp ne i32* %61, null
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @PLUGIN_CGROUPS_NAME, align 4
  %69 = load i64, i64* @cgroup_update_every, align 8
  %70 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %71 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 132000, i64 %69, i32 %70)
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %74 = call i32 @rrddim_add(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @RRD_ALGORITHM_INCREMENTAL, align 4
  %77 = call i32 @rrddim_add(i32* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* null, i32 1, i32 1000, i32 %76)
  br label %81

78:                                               ; preds = %58
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @rrdset_next(i32* %79)
  br label %81

81:                                               ; preds = %78, %67
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds %struct.rusage, %struct.rusage* %3, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = mul i64 %85, 1000000
  %87 = getelementptr inbounds %struct.rusage, %struct.rusage* %3, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %86, %89
  %91 = call i32 @rrddim_set(i32* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds %struct.rusage, %struct.rusage* %3, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = mul i64 %95, 1000000
  %97 = getelementptr inbounds %struct.rusage, %struct.rusage* %3, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %96, %99
  %101 = call i32 @rrddim_set(i32* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @rrdset_done(i32* %102)
  br label %104

104:                                              ; preds = %81, %51
  br label %23

105:                                              ; preds = %33, %23
  %106 = call i32 @netdata_thread_cleanup_pop(i32 1)
  ret i8* null
}

declare dso_local i32 @netdata_thread_cleanup_push(i32, i8*) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i32 @read_cgroup_plugin_configuration(...) #1

declare dso_local i32 @heartbeat_init(i32*) #1

declare dso_local i64 @heartbeat_next(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @find_all_cgroups(...) #1

declare dso_local i32 @read_all_cgroups(i32) #1

declare dso_local i32 @update_cgroup_charts(i64) #1

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set(i32*, i8*, i64) #1

declare dso_local i32 @rrdset_done(i32*) #1

declare dso_local i32 @netdata_thread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
