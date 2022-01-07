; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_event_module_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_event_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.rlimit = type { i64 }

@ngx_events_module = common dso_local global i32 0, align 4
@ngx_event_core_module = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@ngx_test_config = common dso_local global i32 0, align 4
@ngx_process = common dso_local global i64 0, align 8
@NGX_PROCESS_MASTER = common dso_local global i64 0, align 8
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"using the \22%s\22 event method\00", align 1
@ngx_core_module = common dso_local global i32 0, align 4
@ngx_timer_resolution = common dso_local global i32 0, align 4
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"getrlimit(RLIMIT_NOFILE) failed, ignored\00", align 1
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"%ui worker_connections exceed open file resource limit: %i\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_accept_mutex_ptr = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"nginx_shared_zone\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_accept_mutex = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@ngx_connection_counter = common dso_local global i32* null, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"counter: %p, %uA\00", align 1
@ngx_temp_number = common dso_local global i32* null, align 8
@ngx_pid = common dso_local global i64 0, align 8
@ngx_random_number = common dso_local global i64 0, align 8
@ngx_stat_accepted = common dso_local global i32* null, align 8
@ngx_stat_active = common dso_local global i32* null, align 8
@ngx_stat_handled = common dso_local global i32* null, align 8
@ngx_stat_reading = common dso_local global i32* null, align 8
@ngx_stat_requests = common dso_local global i32* null, align 8
@ngx_stat_waiting = common dso_local global i32* null, align 8
@ngx_stat_writing = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*)* @ngx_event_module_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_event_module_init(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rlimit, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ngx_events_module, align 4
  %18 = call i8*** @ngx_get_conf(i32 %16, i32 %17)
  store i8*** %18, i8**** %4, align 8
  %19 = load i8***, i8**** %4, align 8
  %20 = load i8**, i8*** %19, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ngx_event_core_module, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %11, align 8
  %25 = load i32, i32* @ngx_test_config, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %1
  %28 = load i64, i64* @ngx_process, align 8
  %29 = load i64, i64* @NGX_PROCESS_MASTER, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %32, i32 %35, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %31, %27, %1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ngx_core_module, align 4
  %45 = call i8*** @ngx_get_conf(i32 %43, i32 %44)
  %46 = bitcast i8*** %45 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %10, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* @ngx_timer_resolution, align 4
  %50 = load i32, i32* @RLIMIT_NOFILE, align 4
  %51 = call i32 @getrlimit(i32 %50, %struct.rlimit* %13)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load i32, i32* @NGX_LOG_ALERT, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ngx_errno, align 4
  %59 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %54, i32 %57, i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %106

60:                                               ; preds = %40
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %60
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NGX_CONF_UNSET, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %73, %67
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NGX_CONF_UNSET, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  br label %94

90:                                               ; preds = %81
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i64 [ %89, %87 ], [ %93, %90 ]
  store i64 %95, i64* %12, align 8
  %96 = load i32, i32* @NGX_LOG_WARN, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %96, i32 %99, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %102, i64 %103)
  br label %105

105:                                              ; preds = %94, %73, %60
  br label %106

106:                                              ; preds = %105, %53
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i64, i64* @NGX_OK, align 8
  store i64 %112, i64* %2, align 8
  br label %179

113:                                              ; preds = %106
  %114 = load i32*, i32** @ngx_accept_mutex_ptr, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i64, i64* @NGX_OK, align 8
  store i64 %117, i64* %2, align 8
  br label %179

118:                                              ; preds = %113
  store i64 128, i64* %7, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = add i64 %119, %120
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %121, %122
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store i64 %124, i64* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 3
  %127 = call i32 @ngx_str_set(i32* %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  store i32 %130, i32* %131, align 8
  %132 = call i64 @ngx_shm_alloc(%struct.TYPE_16__* %8)
  %133 = load i64, i64* @NGX_OK, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %118
  %136 = load i64, i64* @NGX_ERROR, align 8
  store i64 %136, i64* %2, align 8
  br label %179

137:                                              ; preds = %118
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %5, align 8
  %140 = load i32*, i32** %5, align 8
  store i32* %140, i32** @ngx_accept_mutex_ptr, align 8
  store i64 -1, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_accept_mutex, i32 0, i32 0), align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @ngx_shmtx_create(%struct.TYPE_20__* @ngx_accept_mutex, i32* %141, i32 %145)
  %147 = load i64, i64* @NGX_OK, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = load i64, i64* @NGX_ERROR, align 8
  store i64 %150, i64* %2, align 8
  br label %179

151:                                              ; preds = %137
  %152 = load i32*, i32** %5, align 8
  %153 = load i64, i64* %7, align 8
  %154 = mul i64 1, %153
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32* %155, i32** @ngx_connection_counter, align 8
  %156 = load i32*, i32** @ngx_connection_counter, align 8
  %157 = call i32 @ngx_atomic_cmp_set(i32* %156, i32 0, i32 1)
  %158 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** @ngx_connection_counter, align 8
  %163 = load i32*, i32** @ngx_connection_counter, align 8
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ngx_log_debug2(i32 %158, i32 %161, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %162, i32 %164)
  %166 = load i32*, i32** %5, align 8
  %167 = load i64, i64* %7, align 8
  %168 = mul i64 2, %167
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32* %169, i32** @ngx_temp_number, align 8
  %170 = call %struct.TYPE_15__* (...) @ngx_timeofday()
  store %struct.TYPE_15__* %170, %struct.TYPE_15__** %9, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 16
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* @ngx_pid, align 8
  %177 = add nsw i64 %175, %176
  store i64 %177, i64* @ngx_random_number, align 8
  %178 = load i64, i64* @NGX_OK, align 8
  store i64 %178, i64* %2, align 8
  br label %179

179:                                              ; preds = %151, %149, %135, %116, %111
  %180 = load i64, i64* %2, align 8
  ret i64 %180
}

declare dso_local i8*** @ngx_get_conf(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i64 @ngx_shm_alloc(%struct.TYPE_16__*) #1

declare dso_local i64 @ngx_shmtx_create(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @ngx_atomic_cmp_set(i32*, i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_15__* @ngx_timeofday(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
