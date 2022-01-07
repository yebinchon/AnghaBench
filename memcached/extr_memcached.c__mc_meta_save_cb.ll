; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c__mc_meta_save_cb.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c__mc_meta_save_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct._mc_meta_data = type { i64, i64 }
%struct.timeval = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"slab_config\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"maxbytes\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"chunk_size\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"item_size_max\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"slab_chunk_size_max\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"slab_page_size\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"use_cas\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"slab_reassign\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"current_time\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@current_time = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"process_started\00", align 1
@process_started = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [10 x i8] c"stop_time\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"current_cas\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"oldest_cas\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"logger_gid\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"hashpower\00", align 1
@stats_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"oldest_live\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"mmap_oldbase\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @_mc_meta_save_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mc_meta_save_cb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._mc_meta_data*, align 8
  %8 = alloca %struct.timeval, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct._mc_meta_data*
  store %struct._mc_meta_data* %10, %struct._mc_meta_data** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct._mc_meta_data*, %struct._mc_meta_data** %7, align 8
  %13 = getelementptr inbounds %struct._mc_meta_data, %struct._mc_meta_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 8), align 8
  %18 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %21 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 1), align 8
  %24 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 2), align 8
  %27 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 3), align 8
  %30 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 7), align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %36 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 6), align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %42 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* @current_time, align 8
  %45 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i64 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* @process_started, align 8
  %48 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i64 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 (...) @get_cas_id()
  %56 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 5), align 8
  %59 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 (...) @logger_get_gid()
  %62 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stats_state, i32 0, i32 0), align 8
  %65 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i64 %64)
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 4), align 8
  %68 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i64 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = load %struct._mc_meta_data*, %struct._mc_meta_data** %7, align 8
  %71 = getelementptr inbounds %struct._mc_meta_data, %struct._mc_meta_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i8*, i8*, i8*, ...) @restart_set_kv(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i64 %72)
  ret i32 0
}

declare dso_local i32 @restart_set_kv(i8*, i8*, i8*, ...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @get_cas_id(...) #1

declare dso_local i64 @logger_get_gid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
