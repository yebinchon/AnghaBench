; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_master_process_cycle.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_master_process_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@MAXIMUM_WAIT_OBJECTS = common dso_local global i32 0, align 4
@ngx_master_process_event_name = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"ngx_master_%s%Z\00", align 1
@ngx_unique = common dso_local global i32 0, align 4
@ngx_process = common dso_local global i64 0, align 8
@NGX_PROCESS_WORKER = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"master started\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ngx_unique\00", align 1
@ngx_master_process_event = common dso_local global i32* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"CreateEvent(\22%s\22) failed\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_cache_manager_mutex_name = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"ngx_cache_manager_mutex_%s%Z\00", align 1
@ngx_cache_manager_mutex = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"CreateMutex(\22%s\22) failed\00", align 1
@ngx_stop_event = common dso_local global i64 0, align 8
@ngx_quit_event = common dso_local global i64 0, align 8
@ngx_reopen_event = common dso_local global i64 0, align 8
@ngx_reload_event = common dso_local global i64 0, align 8
@NGX_PROCESS_RESPAWN = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@ngx_last_process = common dso_local global i64 0, align 8
@ngx_processes = common dso_local global %struct.TYPE_19__* null, align 8
@ngx_current_msec = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"master WaitForMultipleObjects: %ul\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"exiting\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"ResetEvent(\22%s\22) failed\00", align 1
@ngx_stop_event_name = common dso_local global i64 0, align 8
@ngx_terminate = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"shutting down\00", align 1
@ngx_quit_event_name = common dso_local global i64 0, align 8
@ngx_quit = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"reopening logs\00", align 1
@ngx_reopen_event_name = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"reconfiguring\00", align 1
@ngx_reload_event_name = common dso_local global i64 0, align 8
@ngx_cycle = common dso_local global %struct.TYPE_18__* null, align 8
@NGX_PROCESS_JUST_RESPAWN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"reap worker\00", align 1
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@WAIT_FAILED = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"WaitForMultipleObjects() failed\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"WaitForMultipleObjects() returned unexpected value %ul\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_master_process_cycle(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %12 = load i32, i32* @MAXIMUM_WAIT_OBJECTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = load i64, i64* @ngx_master_process_event_name, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* @ngx_unique, align 4
  %19 = call i32 @ngx_sprintf(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* @ngx_process, align 8
  %21 = load i64, i64* @NGX_PROCESS_WORKER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %25 = load i64, i64* @ngx_master_process_event_name, align 8
  %26 = call i32 @ngx_worker_process_cycle(%struct.TYPE_18__* %24, i64 %25)
  %27 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %27)
  ret void

28:                                               ; preds = %1
  %29 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ngx_log_debug0(i32 %29, i32 %32, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = call i32 @ngx_console_init(%struct.TYPE_18__* %34)
  %36 = load i32, i32* @ngx_unique, align 4
  %37 = call i32 @SetEnvironmentVariable(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* @ngx_master_process_event_name, align 8
  %39 = call i32* @CreateEvent(i32* null, i32 1, i32 0, i64 %38)
  store i32* %39, i32** @ngx_master_process_event, align 8
  %40 = load i32*, i32** @ngx_master_process_event, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load i32, i32* @NGX_LOG_ALERT, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ngx_errno, align 4
  %48 = load i64, i64* @ngx_master_process_event_name, align 8
  %49 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %43, i32 %46, i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = call i32 @exit(i32 2) #4
  unreachable

51:                                               ; preds = %28
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %53 = call i64 @ngx_create_signal_events(%struct.TYPE_18__* %52)
  %54 = load i64, i64* @NGX_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @exit(i32 2) #4
  unreachable

58:                                               ; preds = %51
  %59 = load i64, i64* @ngx_cache_manager_mutex_name, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load i32, i32* @ngx_unique, align 4
  %62 = call i32 @ngx_sprintf(i32* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* @ngx_cache_manager_mutex_name, align 8
  %64 = call i32* @CreateMutex(i32* null, i32 0, i64 %63)
  store i32* %64, i32** @ngx_cache_manager_mutex, align 8
  %65 = load i32*, i32** @ngx_cache_manager_mutex, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %58
  %68 = load i32, i32* @NGX_LOG_ALERT, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ngx_errno, align 4
  %73 = load i64, i64* @ngx_cache_manager_mutex_name, align 8
  %74 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %68, i32 %71, i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %73)
  %75 = call i32 @exit(i32 2) #4
  unreachable

76:                                               ; preds = %58
  %77 = load i64, i64* @ngx_stop_event, align 8
  %78 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 %77, i64* %78, align 16
  %79 = load i64, i64* @ngx_quit_event, align 8
  %80 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* @ngx_reopen_event, align 8
  %82 = getelementptr inbounds i64, i64* %15, i64 2
  store i64 %81, i64* %82, align 16
  %83 = load i64, i64* @ngx_reload_event, align 8
  %84 = getelementptr inbounds i64, i64* %15, i64 3
  store i64 %83, i64* %84, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %86 = call i32 @ngx_close_listening_sockets(%struct.TYPE_18__* %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %88 = load i32, i32* @NGX_PROCESS_RESPAWN, align 4
  %89 = call i64 @ngx_start_worker_processes(%struct.TYPE_18__* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = call i32 @exit(i32 2) #4
  unreachable

93:                                               ; preds = %76
  store i64 0, i64* %8, align 8
  %94 = load i64, i64* @INFINITE, align 8
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %318, %311, %297, %263, %250, %219, %195, %171, %93
  store i64 4, i64* %3, align 8
  store i64 0, i64* %7, align 8
  br label %96

96:                                               ; preds = %117, %95
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @ngx_last_process, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** @ngx_processes, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** @ngx_processes, align 8
  %109 = load i64, i64* %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %3, align 8
  %115 = getelementptr inbounds i64, i64* %15, i64 %113
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %107, %100
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %7, align 8
  br label %96

120:                                              ; preds = %96
  %121 = load i64, i64* %8, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* @ngx_current_msec, align 8
  %126 = icmp sgt i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @ngx_current_msec, align 8
  %130 = sub nsw i64 %128, %129
  br label %132

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i64 [ %130, %127 ], [ 0, %131 ]
  store i64 %133, i64* %5, align 8
  br label %134

134:                                              ; preds = %132, %120
  %135 = load i64, i64* %3, align 8
  %136 = load i64, i64* %5, align 8
  %137 = call i64 @WaitForMultipleObjects(i64 %135, i64* %15, i32 0, i64 %136)
  store i64 %137, i64* %4, align 8
  %138 = load i32, i32* @ngx_errno, align 4
  store i32 %138, i32* %6, align 4
  %139 = call i32 (...) @ngx_time_update()
  %140 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* %4, align 8
  %145 = call i32 @ngx_log_debug1(i32 %140, i32 %143, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %144)
  %146 = load i64, i64* %4, align 8
  %147 = load i64, i64* @WAIT_OBJECT_0, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %134
  %150 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %150, i32 %153, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %155 = load i64, i64* @ngx_stop_event, align 8
  %156 = call i64 @ResetEvent(i64 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %149
  %159 = load i32, i32* @NGX_LOG_ALERT, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* @ngx_stop_event_name, align 8
  %164 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %159, i32 %162, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %158, %149
  %166 = load i64, i64* %8, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i64, i64* @ngx_current_msec, align 8
  %170 = add nsw i64 %169, 5000
  store i64 %170, i64* %8, align 8
  br label %171

171:                                              ; preds = %168, %165
  store i32 1, i32* @ngx_terminate, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %173 = call i32 @ngx_quit_worker_processes(%struct.TYPE_18__* %172, i32 0)
  br label %95

174:                                              ; preds = %134
  %175 = load i64, i64* %4, align 8
  %176 = load i64, i64* @WAIT_OBJECT_0, align 8
  %177 = add i64 %176, 1
  %178 = icmp eq i64 %175, %177
  br i1 %178, label %179, label %198

179:                                              ; preds = %174
  %180 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %180, i32 %183, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %185 = load i64, i64* @ngx_quit_event, align 8
  %186 = call i64 @ResetEvent(i64 %185)
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %179
  %189 = load i32, i32* @NGX_LOG_ALERT, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i64, i64* @ngx_quit_event_name, align 8
  %194 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %189, i32 %192, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %193)
  br label %195

195:                                              ; preds = %188, %179
  store i32 1, i32* @ngx_quit, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %197 = call i32 @ngx_quit_worker_processes(%struct.TYPE_18__* %196, i32 0)
  br label %95

198:                                              ; preds = %174
  %199 = load i64, i64* %4, align 8
  %200 = load i64, i64* @WAIT_OBJECT_0, align 8
  %201 = add i64 %200, 2
  %202 = icmp eq i64 %199, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %198
  %204 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %204, i32 %207, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %209 = load i64, i64* @ngx_reopen_event, align 8
  %210 = call i64 @ResetEvent(i64 %209)
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %203
  %213 = load i32, i32* @NGX_LOG_ALERT, align 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i64, i64* @ngx_reopen_event_name, align 8
  %218 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %213, i32 %216, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %217)
  br label %219

219:                                              ; preds = %212, %203
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %221 = call i32 @ngx_reopen_files(%struct.TYPE_18__* %220, i32 -1)
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %223 = call i32 @ngx_reopen_worker_processes(%struct.TYPE_18__* %222)
  br label %95

224:                                              ; preds = %198
  %225 = load i64, i64* %4, align 8
  %226 = load i64, i64* @WAIT_OBJECT_0, align 8
  %227 = add i64 %226, 3
  %228 = icmp eq i64 %225, %227
  br i1 %228, label %229, label %264

229:                                              ; preds = %224
  %230 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %230, i32 %233, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %235 = load i64, i64* @ngx_reload_event, align 8
  %236 = call i64 @ResetEvent(i64 %235)
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %229
  %239 = load i32, i32* @NGX_LOG_ALERT, align 4
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i64, i64* @ngx_reload_event_name, align 8
  %244 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %239, i32 %242, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %243)
  br label %245

245:                                              ; preds = %238, %229
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %247 = call %struct.TYPE_18__* @ngx_init_cycle(%struct.TYPE_18__* %246)
  store %struct.TYPE_18__* %247, %struct.TYPE_18__** %2, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %249 = icmp eq %struct.TYPE_18__* %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ngx_cycle, align 8
  store %struct.TYPE_18__* %251, %struct.TYPE_18__** %2, align 8
  br label %95

252:                                              ; preds = %245
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  store %struct.TYPE_18__* %253, %struct.TYPE_18__** @ngx_cycle, align 8
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %255 = call i32 @ngx_close_listening_sockets(%struct.TYPE_18__* %254)
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %257 = load i32, i32* @NGX_PROCESS_JUST_RESPAWN, align 4
  %258 = call i64 @ngx_start_worker_processes(%struct.TYPE_18__* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %252
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %262 = call i32 @ngx_quit_worker_processes(%struct.TYPE_18__* %261, i32 1)
  br label %263

263:                                              ; preds = %260, %252
  br label %95

264:                                              ; preds = %224
  %265 = load i64, i64* %4, align 8
  %266 = load i64, i64* @WAIT_OBJECT_0, align 8
  %267 = add i64 %266, 3
  %268 = icmp ugt i64 %265, %267
  br i1 %268, label %269, label %298

269:                                              ; preds = %264
  %270 = load i64, i64* %4, align 8
  %271 = load i64, i64* @WAIT_OBJECT_0, align 8
  %272 = load i64, i64* %3, align 8
  %273 = add i64 %271, %272
  %274 = icmp ult i64 %270, %273
  br i1 %274, label %275, label %298

275:                                              ; preds = %269
  %276 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @ngx_log_debug0(i32 %276, i32 %279, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %282 = load i64, i64* %4, align 8
  %283 = getelementptr inbounds i64, i64* %15, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @ngx_reap_worker(%struct.TYPE_18__* %281, i64 %284)
  store i32 %285, i32* %9, align 4
  %286 = load i32, i32* %9, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %297, label %288

288:                                              ; preds = %275
  %289 = load i32, i32* @ngx_terminate, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* @ngx_quit, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291, %288
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %296 = call i32 @ngx_master_process_exit(%struct.TYPE_18__* %295)
  br label %297

297:                                              ; preds = %294, %291, %275
  br label %95

298:                                              ; preds = %269, %264
  %299 = load i64, i64* %4, align 8
  %300 = load i64, i64* @WAIT_TIMEOUT, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %304 = call i32 @ngx_terminate_worker_processes(%struct.TYPE_18__* %303)
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %306 = call i32 @ngx_master_process_exit(%struct.TYPE_18__* %305)
  br label %307

307:                                              ; preds = %302, %298
  %308 = load i64, i64* %4, align 8
  %309 = load i64, i64* @WAIT_FAILED, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %318

311:                                              ; preds = %307
  %312 = load i32, i32* @NGX_LOG_ALERT, align 4
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %6, align 4
  %317 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %312, i32 %315, i32 %316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %95

318:                                              ; preds = %307
  %319 = load i32, i32* @NGX_LOG_ALERT, align 4
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i64, i64* %4, align 8
  %324 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %319, i32 %322, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i64 %323)
  br label %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, i32) #2

declare dso_local i32 @ngx_worker_process_cycle(%struct.TYPE_18__*, i64) #2

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #2

declare dso_local i32 @ngx_console_init(%struct.TYPE_18__*) #2

declare dso_local i32 @SetEnvironmentVariable(i8*, i32) #2

declare dso_local i32* @CreateEvent(i32*, i32, i32, i64) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @ngx_create_signal_events(%struct.TYPE_18__*) #2

declare dso_local i32* @CreateMutex(i32*, i32, i64) #2

declare dso_local i32 @ngx_close_listening_sockets(%struct.TYPE_18__*) #2

declare dso_local i64 @ngx_start_worker_processes(%struct.TYPE_18__*, i32) #2

declare dso_local i64 @WaitForMultipleObjects(i64, i64*, i32, i64) #2

declare dso_local i32 @ngx_time_update(...) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #2

declare dso_local i64 @ResetEvent(i64) #2

declare dso_local i32 @ngx_quit_worker_processes(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @ngx_reopen_files(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @ngx_reopen_worker_processes(%struct.TYPE_18__*) #2

declare dso_local %struct.TYPE_18__* @ngx_init_cycle(%struct.TYPE_18__*) #2

declare dso_local i32 @ngx_reap_worker(%struct.TYPE_18__*, i64) #2

declare dso_local i32 @ngx_master_process_exit(%struct.TYPE_18__*) #2

declare dso_local i32 @ngx_terminate_worker_processes(%struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
