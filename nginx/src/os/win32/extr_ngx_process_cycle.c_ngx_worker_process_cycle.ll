; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_worker_process_cycle.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_process_cycle.c_ngx_worker_process_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@NGX_PROCESS_SYNC_NAME = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"worker started\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ngx_worker_term_%P%Z\00", align 1
@ngx_pid = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"CreateEvent(\22%s\22) failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ngx_worker_quit_%P%Z\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"ngx_worker_reopen_%P%Z\00", align 1
@EVENT_MODIFY_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"OpenEvent(\22%s\22) failed\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"SetEvent(\22%s\22) failed\00", align 1
@ngx_cache_manager_mutex_name = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"ngx_cache_manager_mutex_%s%Z\00", align 1
@ngx_unique = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@ngx_cache_manager_mutex = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"OpenMutex(\22%s\22) failed\00", align 1
@ngx_cache_manager_event = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [46 x i8] c"CreateEvent(\22ngx_cache_manager_event\22) failed\00", align 1
@ngx_worker_thread = common dso_local global i32 0, align 4
@ngx_cache_manager_thread = common dso_local global i32 0, align 4
@ngx_cache_loader_thread = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"worker WaitForMultipleObjects: %ul\00", align 1
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@ngx_terminate = common dso_local global i32 0, align 4
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"exiting\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"ResetEvent(\22%s\22) failed\00", align 1
@ngx_quit = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"gracefully shutting down\00", align 1
@ngx_reopen = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"reopening logs\00", align 1
@WAIT_FAILED = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [32 x i8] c"WaitForMultipleObjects() failed\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"SetEvent(\22ngx_cache_manager_event\22) failed\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"worker exit WaitForMultipleObjects: %ul\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @ngx_worker_process_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_worker_process_cycle(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i32*], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load i32, i32* @NGX_PROCESS_SYNC_NAME, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @NGX_PROCESS_SYNC_NAME, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %25 = load i32, i32* @NGX_PROCESS_SYNC_NAME, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %17, align 8
  %31 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %32 = load i32*, i32** %17, align 8
  %33 = call i32 @ngx_log_debug0(i32 %31, i32* %32, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = bitcast i8* %21 to i32*
  %35 = load i32, i32* @ngx_pid, align 4
  %36 = call i32 @ngx_sprintf(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32* @CreateEvent(i32* null, i32 1, i32 0, i8* %21)
  %38 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  store i32* %37, i32** %38, align 16
  %39 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %40 = load i32*, i32** %39, align 16
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load i32, i32* @NGX_LOG_ALERT, align 4
  %44 = load i32*, i32** %17, align 8
  %45 = load i64, i64* @ngx_errno, align 8
  %46 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %43, i32* %44, i64 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %280

47:                                               ; preds = %2
  %48 = bitcast i8* %24 to i32*
  %49 = load i32, i32* @ngx_pid, align 4
  %50 = call i32 @ngx_sprintf(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = call i32* @CreateEvent(i32* null, i32 1, i32 0, i8* %24)
  %52 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i32, i32* @NGX_LOG_ALERT, align 4
  %58 = load i32*, i32** %17, align 8
  %59 = load i64, i64* @ngx_errno, align 8
  %60 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %57, i32* %58, i64 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %280

61:                                               ; preds = %47
  %62 = bitcast i8* %27 to i32*
  %63 = load i32, i32* @ngx_pid, align 4
  %64 = call i32 @ngx_sprintf(i32* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = call i32* @CreateEvent(i32* null, i32 1, i32 0, i8* %27)
  %66 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  store i32* %65, i32** %66, align 16
  %67 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %68 = load i32*, i32** %67, align 16
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load i32, i32* @NGX_LOG_ALERT, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = load i64, i64* @ngx_errno, align 8
  %74 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %71, i32* %72, i64 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %280

75:                                               ; preds = %61
  %76 = load i32, i32* @EVENT_MODIFY_STATE, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = call i32* @OpenEvent(i32 %76, i32 0, i8* %77)
  store i32* %78, i32** %9, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load i32, i32* @NGX_LOG_ALERT, align 4
  %83 = load i32*, i32** %17, align 8
  %84 = load i64, i64* @ngx_errno, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %82, i32* %83, i64 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  br label %280

87:                                               ; preds = %75
  %88 = load i32*, i32** %9, align 8
  %89 = call i64 @SetEvent(i32* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* @NGX_LOG_ALERT, align 4
  %93 = load i32*, i32** %17, align 8
  %94 = load i64, i64* @ngx_errno, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %92, i32* %93, i64 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  br label %280

97:                                               ; preds = %87
  %98 = load i64, i64* @ngx_cache_manager_mutex_name, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load i32, i32* @ngx_unique, align 4
  %101 = call i32 @ngx_sprintf(i32* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @SYNCHRONIZE, align 4
  %103 = load i64, i64* @ngx_cache_manager_mutex_name, align 8
  %104 = call i32* @OpenMutex(i32 %102, i32 0, i64 %103)
  store i32* %104, i32** @ngx_cache_manager_mutex, align 8
  %105 = load i32*, i32** @ngx_cache_manager_mutex, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load i32, i32* @NGX_LOG_ALERT, align 4
  %109 = load i32*, i32** %17, align 8
  %110 = load i64, i64* @ngx_errno, align 8
  %111 = load i64, i64* @ngx_cache_manager_mutex_name, align 8
  %112 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %108, i32* %109, i64 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %111)
  br label %280

113:                                              ; preds = %97
  %114 = call i32* @CreateEvent(i32* null, i32 1, i32 0, i8* null)
  store i32* %114, i32** @ngx_cache_manager_event, align 8
  %115 = load i32*, i32** @ngx_cache_manager_event, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32, i32* @NGX_LOG_ALERT, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @ngx_errno, align 8
  %123 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %118, i32* %121, i64 %122, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %280

124:                                              ; preds = %113
  %125 = load i32, i32* @ngx_worker_thread, align 4
  %126 = load i32*, i32** %17, align 8
  %127 = call i64 @ngx_create_thread(i32** %14, i32 %125, i32* null, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %280

130:                                              ; preds = %124
  %131 = load i32, i32* @ngx_cache_manager_thread, align 4
  %132 = load i32*, i32** %17, align 8
  %133 = call i64 @ngx_create_thread(i32** %15, i32 %131, i32* null, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %280

136:                                              ; preds = %130
  %137 = load i32, i32* @ngx_cache_loader_thread, align 4
  %138 = load i32*, i32** %17, align 8
  %139 = call i64 @ngx_create_thread(i32** %16, i32 %137, i32* null, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %280

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %205, %195, %142
  %144 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %145 = load i32, i32* @INFINITE, align 4
  %146 = call i64 @WaitForMultipleObjects(i64 3, i32** %144, i32 0, i32 %145)
  store i64 %146, i64* %12, align 8
  %147 = load i64, i64* @ngx_errno, align 8
  store i64 %147, i64* %13, align 8
  %148 = call i32 (...) @ngx_time_update()
  %149 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %150 = load i32*, i32** %17, align 8
  %151 = load i64, i64* %12, align 8
  %152 = call i32 @ngx_log_debug1(i32 %149, i32* %150, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i64 %151)
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* @WAIT_OBJECT_0, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %143
  store i32 1, i32* @ngx_terminate, align 4
  %157 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %158 = load i32*, i32** %17, align 8
  %159 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %157, i32* %158, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %160 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %161 = load i32*, i32** %160, align 16
  %162 = call i64 @ResetEvent(i32* %161)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load i32, i32* @NGX_LOG_ALERT, align 4
  %166 = load i32*, i32** %17, align 8
  %167 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %165, i32* %166, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %21)
  br label %168

168:                                              ; preds = %164, %156
  br label %206

169:                                              ; preds = %143
  %170 = load i64, i64* %12, align 8
  %171 = load i64, i64* @WAIT_OBJECT_0, align 8
  %172 = add nsw i64 %171, 1
  %173 = icmp eq i64 %170, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  store i32 1, i32* @ngx_quit, align 4
  %175 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %176 = load i32*, i32** %17, align 8
  %177 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %175, i32* %176, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %206

178:                                              ; preds = %169
  %179 = load i64, i64* %12, align 8
  %180 = load i64, i64* @WAIT_OBJECT_0, align 8
  %181 = add nsw i64 %180, 2
  %182 = icmp eq i64 %179, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %178
  store i32 1, i32* @ngx_reopen, align 4
  %184 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %185 = load i32*, i32** %17, align 8
  %186 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %184, i32* %185, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %187 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %188 = load i32*, i32** %187, align 16
  %189 = call i64 @ResetEvent(i32* %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %183
  %192 = load i32, i32* @NGX_LOG_ALERT, align 4
  %193 = load i32*, i32** %17, align 8
  %194 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %192, i32* %193, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %27)
  br label %195

195:                                              ; preds = %191, %183
  br label %143

196:                                              ; preds = %178
  %197 = load i64, i64* %12, align 8
  %198 = load i64, i64* @WAIT_FAILED, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load i32, i32* @NGX_LOG_ALERT, align 4
  %202 = load i32*, i32** %17, align 8
  %203 = load i64, i64* %13, align 8
  %204 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %201, i32* %202, i64 %203, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %280

205:                                              ; preds = %196
  br label %143

206:                                              ; preds = %174, %168
  %207 = load i32*, i32** @ngx_cache_manager_event, align 8
  %208 = call i64 @SetEvent(i32* %207)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32, i32* @NGX_LOG_ALERT, align 4
  %212 = load i32*, i32** %17, align 8
  %213 = load i64, i64* @ngx_errno, align 8
  %214 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %211, i32* %212, i64 %213, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  br label %215

215:                                              ; preds = %210, %206
  %216 = load i32*, i32** %14, align 8
  %217 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  store i32* %216, i32** %217, align 8
  %218 = load i32*, i32** %15, align 8
  %219 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  store i32* %218, i32** %219, align 16
  store i64 3, i64* %11, align 8
  br label %220

220:                                              ; preds = %263, %253, %244, %215
  %221 = load i64, i64* %11, align 8
  %222 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %223 = load i32, i32* @INFINITE, align 4
  %224 = call i64 @WaitForMultipleObjects(i64 %221, i32** %222, i32 0, i32 %223)
  store i64 %224, i64* %12, align 8
  %225 = load i64, i64* @ngx_errno, align 8
  store i64 %225, i64* %13, align 8
  %226 = call i32 (...) @ngx_time_update()
  %227 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %228 = load i32*, i32** %17, align 8
  %229 = load i64, i64* %12, align 8
  %230 = call i32 @ngx_log_debug1(i32 %227, i32* %228, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i64 %229)
  %231 = load i64, i64* %12, align 8
  %232 = load i64, i64* @WAIT_OBJECT_0, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %220
  br label %264

235:                                              ; preds = %220
  %236 = load i64, i64* %12, align 8
  %237 = load i64, i64* @WAIT_OBJECT_0, align 8
  %238 = add nsw i64 %237, 1
  %239 = icmp eq i64 %236, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %235
  %241 = load i64, i64* %11, align 8
  %242 = icmp eq i64 %241, 2
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %264

244:                                              ; preds = %240
  %245 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %246 = load i32*, i32** %245, align 16
  %247 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  store i32* %246, i32** %247, align 8
  store i64 2, i64* %11, align 8
  br label %220

248:                                              ; preds = %235
  %249 = load i64, i64* %12, align 8
  %250 = load i64, i64* @WAIT_OBJECT_0, align 8
  %251 = add nsw i64 %250, 2
  %252 = icmp eq i64 %249, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store i64 2, i64* %11, align 8
  br label %220

254:                                              ; preds = %248
  %255 = load i64, i64* %12, align 8
  %256 = load i64, i64* @WAIT_FAILED, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %254
  %259 = load i32, i32* @NGX_LOG_ALERT, align 4
  %260 = load i32*, i32** %17, align 8
  %261 = load i64, i64* %13, align 8
  %262 = call i32 (i32, i32*, i64, i8*, ...) @ngx_log_error(i32 %259, i32* %260, i64 %261, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %264

263:                                              ; preds = %254
  br label %220

264:                                              ; preds = %258, %243, %234
  %265 = load i32*, i32** @ngx_cache_manager_event, align 8
  %266 = call i32 @ngx_close_handle(i32* %265)
  %267 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %268 = load i32*, i32** %267, align 16
  %269 = call i32 @ngx_close_handle(i32* %268)
  %270 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @ngx_close_handle(i32* %271)
  %273 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %274 = load i32*, i32** %273, align 16
  %275 = call i32 @ngx_close_handle(i32* %274)
  %276 = load i32*, i32** %9, align 8
  %277 = call i32 @ngx_close_handle(i32* %276)
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %279 = call i32 @ngx_worker_process_exit(%struct.TYPE_4__* %278)
  br label %280

280:                                              ; preds = %264, %200, %141, %135, %129, %117, %107, %91, %81, %70, %56, %42
  %281 = call i32 @exit(i32 2) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ngx_log_debug0(i32, i32*, i32, i8*) #2

declare dso_local i32 @ngx_sprintf(i32*, i8*, i32) #2

declare dso_local i32* @CreateEvent(i32*, i32, i32, i8*) #2

declare dso_local i32 @ngx_log_error(i32, i32*, i64, i8*, ...) #2

declare dso_local i32* @OpenEvent(i32, i32, i8*) #2

declare dso_local i64 @SetEvent(i32*) #2

declare dso_local i32* @OpenMutex(i32, i32, i64) #2

declare dso_local i64 @ngx_create_thread(i32**, i32, i32*, i32*) #2

declare dso_local i64 @WaitForMultipleObjects(i64, i32**, i32, i32) #2

declare dso_local i32 @ngx_time_update(...) #2

declare dso_local i32 @ngx_log_debug1(i32, i32*, i32, i8*, i64) #2

declare dso_local i64 @ResetEvent(i32*) #2

declare dso_local i32 @ngx_close_handle(i32*) #2

declare dso_local i32 @ngx_worker_process_exit(%struct.TYPE_4__*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
