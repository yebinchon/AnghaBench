; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdhost.c_rrd_init.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdhost.c_rrd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdhost_system_info = type { i32 }

@CONFIG_SECTION_GLOBAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cleanup obsolete charts after seconds\00", align 1
@rrdset_free_obsolete_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"gap when lost iterations above\00", align 1
@gap_when_lost_iterations_above = common dso_local global i32 0, align 4
@D_RRDHOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Initializing localhost with hostname '%s'\00", align 1
@os_type = common dso_local global i32 0, align 4
@netdata_configured_timezone = common dso_local global i32 0, align 4
@CONFIG_SECTION_BACKEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"host tags\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = common dso_local global i32 0, align 4
@program_version = common dso_local global i32 0, align 4
@default_rrd_update_every = common dso_local global i32 0, align 4
@default_rrd_history_entries = common dso_local global i32 0, align 4
@default_rrd_memory_mode = common dso_local global i32 0, align 4
@default_health_enabled = common dso_local global i32 0, align 4
@default_rrdpush_enabled = common dso_local global i32 0, align 4
@default_rrdpush_destination = common dso_local global i32 0, align 4
@default_rrdpush_api_key = common dso_local global i32 0, align 4
@default_rrdpush_send_charts_matching = common dso_local global i32 0, align 4
@localhost = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrd_init(i8* %0, %struct.rrdhost_system_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rrdhost_system_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.rrdhost_system_info* %1, %struct.rrdhost_system_info** %4, align 8
  %5 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %6 = load i32, i32* @rrdset_free_obsolete_time, align 4
  %7 = call i32 @config_get_number(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 %7, i32* @rrdset_free_obsolete_time, align 4
  %8 = load i32, i32* @CONFIG_SECTION_GLOBAL, align 4
  %9 = load i32, i32* @gap_when_lost_iterations_above, align 4
  %10 = call i32 @config_get_number(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  store i32 %10, i32* @gap_when_lost_iterations_above, align 4
  %11 = load i32, i32* @gap_when_lost_iterations_above, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* @gap_when_lost_iterations_above, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = call i32 (...) @health_init()
  %16 = call i32 (...) @registry_init()
  %17 = call i32 (...) @rrdpush_init()
  %18 = load i32, i32* @D_RRDHOST, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @debug(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = call i32 (...) @rrd_wrlock()
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (...) @registry_get_this_machine_hostname()
  %24 = call i32 (...) @registry_get_this_machine_guid()
  %25 = load i32, i32* @os_type, align 4
  %26 = load i32, i32* @netdata_configured_timezone, align 4
  %27 = load i32, i32* @CONFIG_SECTION_BACKEND, align 4
  %28 = call i32 @config_get(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* @program_name, align 4
  %30 = load i32, i32* @program_version, align 4
  %31 = load i32, i32* @default_rrd_update_every, align 4
  %32 = load i32, i32* @default_rrd_history_entries, align 4
  %33 = load i32, i32* @default_rrd_memory_mode, align 4
  %34 = load i32, i32* @default_health_enabled, align 4
  %35 = load i32, i32* @default_rrdpush_enabled, align 4
  %36 = load i32, i32* @default_rrdpush_destination, align 4
  %37 = load i32, i32* @default_rrdpush_api_key, align 4
  %38 = load i32, i32* @default_rrdpush_send_charts_matching, align 4
  %39 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %40 = call i32 @rrdhost_create(i8* %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, %struct.rrdhost_system_info* %39, i32 1)
  store i32 %40, i32* @localhost, align 4
  %41 = call i32 (...) @rrd_unlock()
  %42 = call i32 (...) @web_client_api_v1_management_init()
  ret void
}

declare dso_local i32 @config_get_number(i32, i8*, i32) #1

declare dso_local i32 @health_init(...) #1

declare dso_local i32 @registry_init(...) #1

declare dso_local i32 @rrdpush_init(...) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @rrd_wrlock(...) #1

declare dso_local i32 @rrdhost_create(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rrdhost_system_info*, i32) #1

declare dso_local i32 @registry_get_this_machine_hostname(...) #1

declare dso_local i32 @registry_get_this_machine_guid(...) #1

declare dso_local i32 @config_get(i32, i8*, i8*) #1

declare dso_local i32 @rrd_unlock(...) #1

declare dso_local i32 @web_client_api_v1_management_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
