; ModuleID = '/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_event_process_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/extr_ngx_event.c_ngx_event_process_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i64, i32, i32, %struct.TYPE_29__, %struct.TYPE_27__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_27__*, i32*, %struct.TYPE_32__** }
%struct.TYPE_29__ = type { i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, i64, i64, %struct.TYPE_31__, %struct.TYPE_30__*, i32, %struct.TYPE_27__*, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_27__* }
%struct.TYPE_22__ = type { i32, i32, i32, i8*, i32, %struct.TYPE_31__* }
%struct.TYPE_27__ = type { i64, i8*, %struct.TYPE_22__*, %struct.TYPE_31__*, %struct.TYPE_35__*, %struct.TYPE_22__*, %struct.TYPE_27__* }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64 (%struct.TYPE_25__*, i32)* }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_24__ = type { i64, i32, i64 }
%struct.sigaction = type { i32, i32 }
%struct.itimerval = type { %struct.TYPE_28__, %struct.TYPE_34__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.rlimit = type { i64 }

@ngx_core_module = common dso_local global i32 0, align 4
@ngx_event_core_module = common dso_local global i32 0, align 4
@ngx_use_accept_mutex = common dso_local global i32 0, align 4
@ngx_accept_mutex_held = common dso_local global i64 0, align 8
@ngx_accept_mutex_delay = common dso_local global i32 0, align 4
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_next_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_EVENT_MODULE = common dso_local global i64 0, align 8
@ngx_timer_resolution = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_TIMER_EVENT = common dso_local global i32 0, align 4
@ngx_timer_signal_handler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"sigaction(SIGALRM) failed\00", align 1
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"setitimer() failed\00", align 1
@NGX_USE_FD_EVENT = common dso_local global i32 0, align 4
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"getrlimit(RLIMIT_NOFILE) failed\00", align 1
@NGX_USE_IOCP_EVENT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@ngx_event_accept = common dso_local global i8* null, align 8
@ngx_event_recvmsg = common dso_local global i8* null, align 8
@NGX_EXCLUSIVE_EVENT = common dso_local global i32 0, align 4
@NGX_IOCP_ACCEPT = common dso_local global i32 0, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@NGX_USE_EPOLL_EVENT = common dso_local global i32 0, align 4
@ngx_acceptex_log_error = common dso_local global i32 0, align 4
@ngx_event_acceptex = common dso_local global i8* null, align 8
@ngx_iocp_module = common dso_local global i32 0, align 4
@ngx_worker = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_25__*)* @ngx_event_process_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_event_process_init(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_35__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.sigaction, align 4
  %16 = alloca %struct.itimerval, align 4
  %17 = alloca %struct.rlimit, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ngx_core_module, align 4
  %22 = call i64 @ngx_get_conf(i32 %20, i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %12, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ngx_event_core_module, align 4
  %28 = call i8* @ngx_event_get_conf(i32 %26, i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %13, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %1
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  store i32 1, i32* @ngx_use_accept_mutex, align 4
  store i64 0, i64* @ngx_accept_mutex_held, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* @ngx_accept_mutex_delay, align 4
  br label %49

48:                                               ; preds = %39, %34, %1
  store i32 0, i32* @ngx_use_accept_mutex, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = call i32 @ngx_queue_init(i32* @ngx_posted_accept_events)
  %51 = call i32 @ngx_queue_init(i32* @ngx_posted_next_events)
  %52 = call i32 @ngx_queue_init(i32* @ngx_posted_events)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ngx_event_timer_init(i32 %55)
  %57 = load i64, i64* @NGX_ERROR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i64, i64* @NGX_ERROR, align 8
  store i64 %60, i64* %2, align 8
  br label %494

61:                                               ; preds = %49
  store i64 0, i64* %4, align 8
  br label %62

62:                                               ; preds = %117, %61
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 11
  %65 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %65, i64 %66
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %67, align 8
  %69 = icmp ne %struct.TYPE_32__* %68, null
  br i1 %69, label %70, label %120

70:                                               ; preds = %62
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 11
  %73 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %73, i64 %74
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NGX_EVENT_MODULE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %117

82:                                               ; preds = %70
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 11
  %85 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %85, i64 %86
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %117

96:                                               ; preds = %82
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 11
  %99 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %98, align 8
  %100 = load i64, i64* %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %99, i64 %100
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  store %struct.TYPE_23__* %104, %struct.TYPE_23__** %14, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 0
  %108 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %107, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %110 = load i32, i32* @ngx_timer_resolution, align 4
  %111 = call i64 %108(%struct.TYPE_25__* %109, i32 %110)
  %112 = load i64, i64* @NGX_OK, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %96
  %115 = call i32 @exit(i32 2) #3
  unreachable

116:                                              ; preds = %96
  br label %120

117:                                              ; preds = %95, %81
  %118 = load i64, i64* %4, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %4, align 8
  br label %62

120:                                              ; preds = %116, %62
  %121 = load i32, i32* @ngx_timer_resolution, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %175

123:                                              ; preds = %120
  %124 = load i32, i32* @ngx_event_flags, align 4
  %125 = load i32, i32* @NGX_USE_TIMER_EVENT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %175, label %128

128:                                              ; preds = %123
  %129 = call i32 @ngx_memzero(%struct.sigaction* %15, i32 8)
  %130 = load i32, i32* @ngx_timer_signal_handler, align 4
  %131 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %15, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  %132 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %15, i32 0, i32 0
  %133 = call i32 @sigemptyset(i32* %132)
  %134 = load i32, i32* @SIGALRM, align 4
  %135 = call i32 @sigaction(i32 %134, %struct.sigaction* %15, i32* null)
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %145

137:                                              ; preds = %128
  %138 = load i32, i32* @NGX_LOG_ALERT, align 4
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ngx_errno, align 4
  %143 = call i32 @ngx_log_error(i32 %138, i32 %141, i32 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %144 = load i64, i64* @NGX_ERROR, align 8
  store i64 %144, i64* %2, align 8
  br label %494

145:                                              ; preds = %128
  %146 = load i32, i32* @ngx_timer_resolution, align 4
  %147 = sdiv i32 %146, 1000
  %148 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %16, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @ngx_timer_resolution, align 4
  %151 = srem i32 %150, 1000
  %152 = mul nsw i32 %151, 1000
  %153 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %16, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @ngx_timer_resolution, align 4
  %156 = sdiv i32 %155, 1000
  %157 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %16, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @ngx_timer_resolution, align 4
  %160 = srem i32 %159, 1000
  %161 = mul nsw i32 %160, 1000
  %162 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %16, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @ITIMER_REAL, align 4
  %165 = call i32 @setitimer(i32 %164, %struct.itimerval* %16, i32* null)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %174

167:                                              ; preds = %145
  %168 = load i32, i32* @NGX_LOG_ALERT, align 4
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ngx_errno, align 4
  %173 = call i32 @ngx_log_error(i32 %168, i32 %171, i32 %172, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %174

174:                                              ; preds = %167, %145
  br label %175

175:                                              ; preds = %174, %123, %120
  %176 = load i32, i32* @ngx_event_flags, align 4
  %177 = load i32, i32* @NGX_USE_FD_EVENT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %215

180:                                              ; preds = %175
  %181 = load i32, i32* @RLIMIT_NOFILE, align 4
  %182 = call i32 @getrlimit(i32 %181, %struct.rlimit* %17)
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load i32, i32* @NGX_LOG_ALERT, align 4
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @ngx_errno, align 4
  %190 = call i32 @ngx_log_error(i32 %185, i32 %188, i32 %189, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %191 = load i64, i64* @NGX_ERROR, align 8
  store i64 %191, i64* %2, align 8
  br label %494

192:                                              ; preds = %180
  %193 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %17, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = mul i64 8, %199
  %201 = trunc i64 %200 to i32
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = call i32* @ngx_calloc(i32 %201, i32 %204)
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 10
  store i32* %205, i32** %207, align 8
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 10
  %210 = load i32*, i32** %209, align 8
  %211 = icmp eq i32* %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %192
  %213 = load i64, i64* @NGX_ERROR, align 8
  store i64 %213, i64* %2, align 8
  br label %494

214:                                              ; preds = %192
  br label %215

215:                                              ; preds = %214, %175
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = mul i64 56, %219
  %221 = trunc i64 %220 to i32
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = call i8* @ngx_alloc(i32 %221, i32 %224)
  %226 = bitcast i8* %225 to %struct.TYPE_27__*
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 9
  store %struct.TYPE_27__* %226, %struct.TYPE_27__** %228, align 8
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 9
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %230, align 8
  %232 = icmp eq %struct.TYPE_27__* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %215
  %234 = load i64, i64* @NGX_ERROR, align 8
  store i64 %234, i64* %2, align 8
  br label %494

235:                                              ; preds = %215
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 9
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %237, align 8
  store %struct.TYPE_27__* %238, %struct.TYPE_27__** %9, align 8
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = mul i64 40, %242
  %244 = trunc i64 %243 to i32
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @ngx_alloc(i32 %244, i32 %247)
  %249 = bitcast i8* %248 to %struct.TYPE_22__*
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 8
  store %struct.TYPE_22__* %249, %struct.TYPE_22__** %251, align 8
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 8
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %253, align 8
  %255 = icmp eq %struct.TYPE_22__* %254, null
  br i1 %255, label %256, label %258

256:                                              ; preds = %235
  %257 = load i64, i64* @NGX_ERROR, align 8
  store i64 %257, i64* %2, align 8
  br label %494

258:                                              ; preds = %235
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %260, align 8
  store %struct.TYPE_22__* %261, %struct.TYPE_22__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %262

262:                                              ; preds = %278, %258
  %263 = load i64, i64* %5, align 8
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = icmp ult i64 %263, %267
  br i1 %268, label %269, label %281

269:                                              ; preds = %262
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %271 = load i64, i64* %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  store i32 1, i32* %273, align 8
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %275 = load i64, i64* %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 1
  store i32 1, i32* %277, align 4
  br label %278

278:                                              ; preds = %269
  %279 = load i64, i64* %5, align 8
  %280 = add i64 %279, 1
  store i64 %280, i64* %5, align 8
  br label %262

281:                                              ; preds = %262
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = mul i64 40, %285
  %287 = trunc i64 %286 to i32
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = call i8* @ngx_alloc(i32 %287, i32 %290)
  %292 = bitcast i8* %291 to %struct.TYPE_22__*
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 7
  store %struct.TYPE_22__* %292, %struct.TYPE_22__** %294, align 8
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 7
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %296, align 8
  %298 = icmp eq %struct.TYPE_22__* %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %281
  %300 = load i64, i64* @NGX_ERROR, align 8
  store i64 %300, i64* %2, align 8
  br label %494

301:                                              ; preds = %281
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 7
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %303, align 8
  store %struct.TYPE_22__* %304, %struct.TYPE_22__** %7, align 8
  store i64 0, i64* %5, align 8
  br label %305

305:                                              ; preds = %317, %301
  %306 = load i64, i64* %5, align 8
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = sext i32 %309 to i64
  %311 = icmp ult i64 %306, %310
  br i1 %311, label %312, label %320

312:                                              ; preds = %305
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %314 = load i64, i64* %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 0
  store i32 1, i32* %316, align 8
  br label %317

317:                                              ; preds = %312
  %318 = load i64, i64* %5, align 8
  %319 = add i64 %318, 1
  store i64 %319, i64* %5, align 8
  br label %305

320:                                              ; preds = %305
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 8
  %324 = sext i32 %323 to i64
  store i64 %324, i64* %5, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %10, align 8
  br label %325

325:                                              ; preds = %358, %320
  %326 = load i64, i64* %5, align 8
  %327 = add i64 %326, -1
  store i64 %327, i64* %5, align 8
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %330 = load i64, i64* %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 6
  store %struct.TYPE_27__* %328, %struct.TYPE_27__** %332, align 8
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 8
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %334, align 8
  %336 = load i64, i64* %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i64 %336
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %339 = load i64, i64* %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %340, i32 0, i32 2
  store %struct.TYPE_22__* %337, %struct.TYPE_22__** %341, align 8
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 7
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %343, align 8
  %345 = load i64, i64* %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i64 %345
  %347 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %348 = load i64, i64* %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %347, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 5
  store %struct.TYPE_22__* %346, %struct.TYPE_22__** %350, align 8
  %351 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %352 = load i64, i64* %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %351, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %354, align 8
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %356 = load i64, i64* %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i64 %356
  store %struct.TYPE_27__* %357, %struct.TYPE_27__** %10, align 8
  br label %358

358:                                              ; preds = %325
  %359 = load i64, i64* %5, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %325, label %361

361:                                              ; preds = %358
  %362 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 6
  store %struct.TYPE_27__* %362, %struct.TYPE_27__** %364, align 8
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = sext i32 %367 to i64
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %369, i32 0, i32 2
  store i64 %368, i64* %370, align 8
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 5
  %373 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_35__*, %struct.TYPE_35__** %373, align 8
  store %struct.TYPE_35__* %374, %struct.TYPE_35__** %8, align 8
  store i64 0, i64* %5, align 8
  br label %375

375:                                              ; preds = %489, %361
  %376 = load i64, i64* %5, align 8
  %377 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = icmp ult i64 %376, %380
  br i1 %381, label %382, label %492

382:                                              ; preds = %375
  %383 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %384 = load i64, i64* %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %385, i32 0, i32 7
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 4
  %391 = call %struct.TYPE_27__* @ngx_get_connection(i32 %387, i32 %390)
  store %struct.TYPE_27__* %391, %struct.TYPE_27__** %9, align 8
  %392 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %393 = icmp eq %struct.TYPE_27__* %392, null
  br i1 %393, label %394, label %396

394:                                              ; preds = %382
  %395 = load i64, i64* @NGX_ERROR, align 8
  store i64 %395, i64* %2, align 8
  br label %494

396:                                              ; preds = %382
  %397 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %398 = load i64, i64* %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %402, i32 0, i32 0
  store i64 %401, i64* %403, align 8
  %404 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %405 = load i64, i64* %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %404, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %406, i32 0, i32 3
  %408 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %409 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %408, i32 0, i32 3
  store %struct.TYPE_31__* %407, %struct.TYPE_31__** %409, align 8
  %410 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %411 = load i64, i64* %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %410, i64 %411
  %413 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %413, i32 0, i32 4
  store %struct.TYPE_35__* %412, %struct.TYPE_35__** %414, align 8
  %415 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %416 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %417 = load i64, i64* %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %416, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %418, i32 0, i32 6
  store %struct.TYPE_27__* %415, %struct.TYPE_27__** %419, align 8
  %420 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 2
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %421, align 8
  store %struct.TYPE_22__* %422, %struct.TYPE_22__** %6, align 8
  %423 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %424 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %423, i32 0, i32 3
  %425 = load %struct.TYPE_31__*, %struct.TYPE_31__** %424, align 8
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 5
  store %struct.TYPE_31__* %425, %struct.TYPE_31__** %427, align 8
  %428 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 2
  store i32 1, i32* %429, align 8
  %430 = load i32, i32* @ngx_event_flags, align 4
  %431 = load i32, i32* @NGX_USE_IOCP_EVENT, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %463, label %434

434:                                              ; preds = %396
  %435 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %436 = load i64, i64* %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %437, i32 0, i32 4
  %439 = load %struct.TYPE_30__*, %struct.TYPE_30__** %438, align 8
  %440 = icmp ne %struct.TYPE_30__* %439, null
  br i1 %440, label %441, label %462

441:                                              ; preds = %434
  %442 = load %struct.TYPE_35__*, %struct.TYPE_35__** %8, align 8
  %443 = load i64, i64* %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %442, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %444, i32 0, i32 4
  %446 = load %struct.TYPE_30__*, %struct.TYPE_30__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %446, i32 0, i32 0
  %448 = load %struct.TYPE_27__*, %struct.TYPE_27__** %447, align 8
  store %struct.TYPE_27__* %448, %struct.TYPE_27__** %11, align 8
  %449 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %450 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %449, i32 0, i32 2
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %450, align 8
  %452 = load i32, i32* @NGX_READ_EVENT, align 4
  %453 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  %454 = call i64 @ngx_del_event(%struct.TYPE_22__* %451, i32 %452, i32 %453)
  %455 = load i64, i64* @NGX_ERROR, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %459

457:                                              ; preds = %441
  %458 = load i64, i64* @NGX_ERROR, align 8
  store i64 %458, i64* %2, align 8
  br label %494

459:                                              ; preds = %441
  %460 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %461 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %460, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %461, align 8
  br label %462

462:                                              ; preds = %459, %434
  br label %463

463:                                              ; preds = %462, %396
  %464 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %465 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* @SOCK_STREAM, align 8
  %468 = icmp eq i64 %466, %467
  br i1 %468, label %469, label %471

469:                                              ; preds = %463
  %470 = load i8*, i8** @ngx_event_accept, align 8
  br label %473

471:                                              ; preds = %463
  %472 = load i8*, i8** @ngx_event_recvmsg, align 8
  br label %473

473:                                              ; preds = %471, %469
  %474 = phi i8* [ %470, %469 ], [ %472, %471 ]
  %475 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %476 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %475, i32 0, i32 3
  store i8* %474, i8** %476, align 8
  %477 = load i32, i32* @ngx_use_accept_mutex, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %473
  br label %489

480:                                              ; preds = %473
  %481 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %482 = load i32, i32* @NGX_READ_EVENT, align 4
  %483 = call i64 @ngx_add_event(%struct.TYPE_22__* %481, i32 %482, i32 0)
  %484 = load i64, i64* @NGX_ERROR, align 8
  %485 = icmp eq i64 %483, %484
  br i1 %485, label %486, label %488

486:                                              ; preds = %480
  %487 = load i64, i64* @NGX_ERROR, align 8
  store i64 %487, i64* %2, align 8
  br label %494

488:                                              ; preds = %480
  br label %489

489:                                              ; preds = %488, %479
  %490 = load i64, i64* %5, align 8
  %491 = add i64 %490, 1
  store i64 %491, i64* %5, align 8
  br label %375

492:                                              ; preds = %375
  %493 = load i64, i64* @NGX_OK, align 8
  store i64 %493, i64* %2, align 8
  br label %494

494:                                              ; preds = %492, %486, %457, %394, %299, %256, %233, %212, %184, %137, %59
  %495 = load i64, i64* %2, align 8
  ret i64 %495
}

declare dso_local i64 @ngx_get_conf(i32, i32) #1

declare dso_local i8* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local i64 @ngx_event_timer_init(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ngx_memzero(%struct.sigaction*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32* @ngx_calloc(i32, i32) #1

declare dso_local i8* @ngx_alloc(i32, i32) #1

declare dso_local %struct.TYPE_27__* @ngx_get_connection(i32, i32) #1

declare dso_local i64 @ngx_del_event(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @ngx_add_event(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
