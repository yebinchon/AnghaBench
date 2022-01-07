; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_dump.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fpm_worker_pool_s = type { %struct.TYPE_4__*, %struct.fpm_worker_pool_s* }
%struct.TYPE_4__ = type { i32, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.key_value_s = type { i32, i32, %struct.key_value_s* }

@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[global]\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\09pid = %s\00", align 1
@fpm_global_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\09error_log = %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\09log_buffering = %s\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\09log_level = %s\00", align 1
@fpm_globals = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"\09log_limit = %d\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\09emergency_restart_interval = %ds\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\09emergency_restart_threshold = %d\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\09process_control_timeout = %ds\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"\09process.max = %d\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\09process.priority = undefined\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"\09process.priority = %d\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\09daemonize = %s\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\09rlimit_files = %d\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\09rlimit_core = %d\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"\09events.mechanism = %s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"\09prefix = %s\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\09user = %s\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"\09group = %s\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"\09listen = %s\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"\09listen.backlog = %d\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"\09listen.owner = %s\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"\09listen.group = %s\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"\09listen.mode = %s\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"\09listen.allowed_clients = %s\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"\09process.dumpable = %s\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"\09pm = %s\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"\09pm.max_children = %d\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\09pm.start_servers = %d\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"\09pm.min_spare_servers = %d\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"\09pm.max_spare_servers = %d\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"\09pm.process_idle_timeout = %d\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"\09pm.max_requests = %d\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"\09pm.status_path = %s\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"\09ping.path = %s\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"\09ping.response = %s\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"\09access.log = %s\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"\09access.format = %s\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"\09slowlog = %s\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"\09request_slowlog_timeout = %ds\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"\09request_slowlog_trace_depth = %d\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"\09request_terminate_timeout = %ds\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"\09request_terminate_timeout_track_finished = %s\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"\09chroot = %s\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"\09chdir = %s\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"\09catch_workers_output = %s\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"\09decorate_workers_output = %s\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"\09clear_env = %s\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"\09security.limit_extensions = %s\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"\09env[%s] = %s\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"\09php_value[%s] = %s\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"\09php_admin_value[%s] = %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fpm_conf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_conf_dump() #0 {
  %1 = alloca %struct.fpm_worker_pool_s*, align 8
  %2 = alloca %struct.key_value_s*, align 8
  %3 = load i32, i32* @ZLOG_NOTICE, align 4
  %4 = call i32 (i32, i8*, ...) @zlog(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @ZLOG_NOTICE, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 14), align 4
  %7 = call i32 @STR2STR(i32 %6)
  %8 = call i32 (i32, i8*, ...) @zlog(i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @ZLOG_NOTICE, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 13), align 4
  %11 = call i32 @STR2STR(i32 %10)
  %12 = call i32 (i32, i8*, ...) @zlog(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @ZLOG_NOTICE, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 10), align 4
  %15 = call i32 @BOOL2STR(i32 %14)
  %16 = call i32 (i32, i8*, ...) @zlog(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @ZLOG_NOTICE, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpm_globals, i32 0, i32 0), align 4
  %19 = call i32 @zlog_get_level_name(i32 %18)
  %20 = call i32 (i32, i8*, ...) @zlog(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ZLOG_NOTICE, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 9), align 4
  %23 = call i32 (i32, i8*, ...) @zlog(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ZLOG_NOTICE, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 8), align 4
  %26 = call i32 (i32, i8*, ...) @zlog(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ZLOG_NOTICE, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 7), align 4
  %29 = call i32 (i32, i8*, ...) @zlog(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ZLOG_NOTICE, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 6), align 4
  %32 = call i32 (i32, i8*, ...) @zlog(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ZLOG_NOTICE, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 5), align 4
  %35 = call i32 (i32, i8*, ...) @zlog(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 0), align 4
  %37 = icmp eq i32 %36, 64
  br i1 %37, label %38, label %41

38:                                               ; preds = %0
  %39 = load i32, i32* @ZLOG_NOTICE, align 4
  %40 = call i32 (i32, i8*, ...) @zlog(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %45

41:                                               ; preds = %0
  %42 = load i32, i32* @ZLOG_NOTICE, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 0), align 4
  %44 = call i32 (i32, i8*, ...) @zlog(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @ZLOG_NOTICE, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 4), align 4
  %48 = call i32 @BOOL2STR(i32 %47)
  %49 = call i32 (i32, i8*, ...) @zlog(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ZLOG_NOTICE, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 3), align 4
  %52 = call i32 (i32, i8*, ...) @zlog(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ZLOG_NOTICE, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 2), align 4
  %55 = call i32 (i32, i8*, ...) @zlog(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ZLOG_NOTICE, align 4
  %57 = call i32 (...) @fpm_event_machanism_name()
  %58 = call i32 (i32, i8*, ...) @zlog(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ZLOG_NOTICE, align 4
  %60 = call i32 (i32, i8*, ...) @zlog(i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %61 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %61, %struct.fpm_worker_pool_s** %1, align 8
  br label %62

62:                                               ; preds = %433, %45
  %63 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %64 = icmp ne %struct.fpm_worker_pool_s* %63, null
  br i1 %64, label %65, label %437

65:                                               ; preds = %62
  %66 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %67 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %433

71:                                               ; preds = %65
  %72 = load i32, i32* @ZLOG_NOTICE, align 4
  %73 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %74 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 41
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @STR2STR(i32 %77)
  %79 = call i32 (i32, i8*, ...) @zlog(i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @ZLOG_NOTICE, align 4
  %81 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %82 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 40
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @STR2STR(i32 %85)
  %87 = call i32 (i32, i8*, ...) @zlog(i32 %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ZLOG_NOTICE, align 4
  %89 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %90 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 39
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @STR2STR(i32 %93)
  %95 = call i32 (i32, i8*, ...) @zlog(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @ZLOG_NOTICE, align 4
  %97 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %98 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 38
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @STR2STR(i32 %101)
  %103 = call i32 (i32, i8*, ...) @zlog(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @ZLOG_NOTICE, align 4
  %105 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %106 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 37
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @STR2STR(i32 %109)
  %111 = call i32 (i32, i8*, ...) @zlog(i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ZLOG_NOTICE, align 4
  %113 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %114 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 36
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, ...) @zlog(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ZLOG_NOTICE, align 4
  %120 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %121 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 33
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @STR2STR(i32 %124)
  %126 = call i32 (i32, i8*, ...) @zlog(i32 %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @ZLOG_NOTICE, align 4
  %128 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %129 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 32
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @STR2STR(i32 %132)
  %134 = call i32 (i32, i8*, ...) @zlog(i32 %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @ZLOG_NOTICE, align 4
  %136 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %137 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 31
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @STR2STR(i32 %140)
  %142 = call i32 (i32, i8*, ...) @zlog(i32 %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @ZLOG_NOTICE, align 4
  %144 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %145 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %144, i32 0, i32 0
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 30
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @STR2STR(i32 %148)
  %150 = call i32 (i32, i8*, ...) @zlog(i32 %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 %149)
  %151 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %152 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 64
  br i1 %156, label %157, label %160

157:                                              ; preds = %71
  %158 = load i32, i32* @ZLOG_NOTICE, align 4
  %159 = call i32 (i32, i8*, ...) @zlog(i32 %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %168

160:                                              ; preds = %71
  %161 = load i32, i32* @ZLOG_NOTICE, align 4
  %162 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %163 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32, i8*, ...) @zlog(i32 %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %160, %157
  %169 = load i32, i32* @ZLOG_NOTICE, align 4
  %170 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %171 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 29
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @BOOL2STR(i32 %174)
  %176 = call i32 (i32, i8*, ...) @zlog(i32 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @ZLOG_NOTICE, align 4
  %178 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %179 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 28
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @PM2STR(i32 %182)
  %184 = call i32 (i32, i8*, ...) @zlog(i32 %177, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @ZLOG_NOTICE, align 4
  %186 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %187 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 27
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, ...) @zlog(i32 %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @ZLOG_NOTICE, align 4
  %193 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %194 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 26
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i32, i8*, ...) @zlog(i32 %192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @ZLOG_NOTICE, align 4
  %200 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %201 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %200, i32 0, i32 0
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 25
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i8*, ...) @zlog(i32 %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* @ZLOG_NOTICE, align 4
  %207 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %208 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 24
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (i32, i8*, ...) @zlog(i32 %206, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @ZLOG_NOTICE, align 4
  %214 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %215 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %214, i32 0, i32 0
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 23
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, ...) @zlog(i32 %213, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @ZLOG_NOTICE, align 4
  %221 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %222 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %221, i32 0, i32 0
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 22
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i32, i8*, ...) @zlog(i32 %220, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* @ZLOG_NOTICE, align 4
  %228 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %229 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %228, i32 0, i32 0
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 21
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @STR2STR(i32 %232)
  %234 = call i32 (i32, i8*, ...) @zlog(i32 %227, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @ZLOG_NOTICE, align 4
  %236 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %237 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %236, i32 0, i32 0
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 20
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @STR2STR(i32 %240)
  %242 = call i32 (i32, i8*, ...) @zlog(i32 %235, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* @ZLOG_NOTICE, align 4
  %244 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %245 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %244, i32 0, i32 0
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 19
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @STR2STR(i32 %248)
  %250 = call i32 (i32, i8*, ...) @zlog(i32 %243, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @ZLOG_NOTICE, align 4
  %252 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %253 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %252, i32 0, i32 0
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 18
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @STR2STR(i32 %256)
  %258 = call i32 (i32, i8*, ...) @zlog(i32 %251, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* @ZLOG_NOTICE, align 4
  %260 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %261 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %260, i32 0, i32 0
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 17
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @STR2STR(i32 %264)
  %266 = call i32 (i32, i8*, ...) @zlog(i32 %259, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* @ZLOG_NOTICE, align 4
  %268 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %269 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %268, i32 0, i32 0
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 16
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @STR2STR(i32 %272)
  %274 = call i32 (i32, i8*, ...) @zlog(i32 %267, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* @ZLOG_NOTICE, align 4
  %276 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %277 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %276, i32 0, i32 0
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 15
  %280 = load i32, i32* %279, align 4
  %281 = call i32 (i32, i8*, ...) @zlog(i32 %275, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* @ZLOG_NOTICE, align 4
  %283 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %284 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %283, i32 0, i32 0
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 14
  %287 = load i32, i32* %286, align 8
  %288 = call i32 (i32, i8*, ...) @zlog(i32 %282, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* @ZLOG_NOTICE, align 4
  %290 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %291 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %290, i32 0, i32 0
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 13
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i32, i8*, ...) @zlog(i32 %289, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i64 0, i64 0), i32 %294)
  %296 = load i32, i32* @ZLOG_NOTICE, align 4
  %297 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %298 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %297, i32 0, i32 0
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 12
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @BOOL2STR(i32 %301)
  %303 = call i32 (i32, i8*, ...) @zlog(i32 %296, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* @ZLOG_NOTICE, align 4
  %305 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %306 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %305, i32 0, i32 0
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 11
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i32, i8*, ...) @zlog(i32 %304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %309)
  %311 = load i32, i32* @ZLOG_NOTICE, align 4
  %312 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %313 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %312, i32 0, i32 0
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 10
  %316 = load i32, i32* %315, align 8
  %317 = call i32 (i32, i8*, ...) @zlog(i32 %311, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %316)
  %318 = load i32, i32* @ZLOG_NOTICE, align 4
  %319 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %320 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %319, i32 0, i32 0
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 9
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @STR2STR(i32 %323)
  %325 = call i32 (i32, i8*, ...) @zlog(i32 %318, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i32 %324)
  %326 = load i32, i32* @ZLOG_NOTICE, align 4
  %327 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %328 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %327, i32 0, i32 0
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @STR2STR(i32 %331)
  %333 = call i32 (i32, i8*, ...) @zlog(i32 %326, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 %332)
  %334 = load i32, i32* @ZLOG_NOTICE, align 4
  %335 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %336 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %335, i32 0, i32 0
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @BOOL2STR(i32 %339)
  %341 = call i32 (i32, i8*, ...) @zlog(i32 %334, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 %340)
  %342 = load i32, i32* @ZLOG_NOTICE, align 4
  %343 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %344 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %343, i32 0, i32 0
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @BOOL2STR(i32 %347)
  %349 = call i32 (i32, i8*, ...) @zlog(i32 %342, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* @ZLOG_NOTICE, align 4
  %351 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %352 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %351, i32 0, i32 0
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @BOOL2STR(i32 %355)
  %357 = call i32 (i32, i8*, ...) @zlog(i32 %350, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i32 %356)
  %358 = load i32, i32* @ZLOG_NOTICE, align 4
  %359 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %360 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %359, i32 0, i32 0
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = call i32 (i32, i8*, ...) @zlog(i32 %358, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.50, i64 0, i64 0), i32 %363)
  %365 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %366 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %365, i32 0, i32 0
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 3
  %369 = load %struct.key_value_s*, %struct.key_value_s** %368, align 8
  store %struct.key_value_s* %369, %struct.key_value_s** %2, align 8
  br label %370

370:                                              ; preds = %382, %168
  %371 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %372 = icmp ne %struct.key_value_s* %371, null
  br i1 %372, label %373, label %386

373:                                              ; preds = %370
  %374 = load i32, i32* @ZLOG_NOTICE, align 4
  %375 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %376 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %379 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = call i32 (i32, i8*, ...) @zlog(i32 %374, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i32 %377, i32 %380)
  br label %382

382:                                              ; preds = %373
  %383 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %384 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %383, i32 0, i32 2
  %385 = load %struct.key_value_s*, %struct.key_value_s** %384, align 8
  store %struct.key_value_s* %385, %struct.key_value_s** %2, align 8
  br label %370

386:                                              ; preds = %370
  %387 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %388 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %387, i32 0, i32 0
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 2
  %391 = load %struct.key_value_s*, %struct.key_value_s** %390, align 8
  store %struct.key_value_s* %391, %struct.key_value_s** %2, align 8
  br label %392

392:                                              ; preds = %404, %386
  %393 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %394 = icmp ne %struct.key_value_s* %393, null
  br i1 %394, label %395, label %408

395:                                              ; preds = %392
  %396 = load i32, i32* @ZLOG_NOTICE, align 4
  %397 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %398 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %401 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i32 (i32, i8*, ...) @zlog(i32 %396, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0), i32 %399, i32 %402)
  br label %404

404:                                              ; preds = %395
  %405 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %406 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %405, i32 0, i32 2
  %407 = load %struct.key_value_s*, %struct.key_value_s** %406, align 8
  store %struct.key_value_s* %407, %struct.key_value_s** %2, align 8
  br label %392

408:                                              ; preds = %392
  %409 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %410 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %409, i32 0, i32 0
  %411 = load %struct.TYPE_4__*, %struct.TYPE_4__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 1
  %413 = load %struct.key_value_s*, %struct.key_value_s** %412, align 8
  store %struct.key_value_s* %413, %struct.key_value_s** %2, align 8
  br label %414

414:                                              ; preds = %426, %408
  %415 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %416 = icmp ne %struct.key_value_s* %415, null
  br i1 %416, label %417, label %430

417:                                              ; preds = %414
  %418 = load i32, i32* @ZLOG_NOTICE, align 4
  %419 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %420 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %423 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = call i32 (i32, i8*, ...) @zlog(i32 %418, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0), i32 %421, i32 %424)
  br label %426

426:                                              ; preds = %417
  %427 = load %struct.key_value_s*, %struct.key_value_s** %2, align 8
  %428 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %427, i32 0, i32 2
  %429 = load %struct.key_value_s*, %struct.key_value_s** %428, align 8
  store %struct.key_value_s* %429, %struct.key_value_s** %2, align 8
  br label %414

430:                                              ; preds = %414
  %431 = load i32, i32* @ZLOG_NOTICE, align 4
  %432 = call i32 (i32, i8*, ...) @zlog(i32 %431, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %433

433:                                              ; preds = %430, %70
  %434 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %1, align 8
  %435 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %434, i32 0, i32 1
  %436 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %435, align 8
  store %struct.fpm_worker_pool_s* %436, %struct.fpm_worker_pool_s** %1, align 8
  br label %62

437:                                              ; preds = %62
  ret void
}

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i32 @STR2STR(i32) #1

declare dso_local i32 @BOOL2STR(i32) #1

declare dso_local i32 @zlog_get_level_name(i32) #1

declare dso_local i32 @fpm_event_machanism_name(...) #1

declare dso_local i32 @PM2STR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
