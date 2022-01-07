; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_win32_poll_module.c_ngx_poll_process_events.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_win32_poll_module.c_ngx_poll_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"poll timer: %M\00", align 1
@event_list = common dso_local global %struct.TYPE_14__* null, align 8
@nevents = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i32 0, align 4
@NGX_UPDATE_TIME = common dso_local global i64 0, align 8
@ngx_event_timer_alarm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"poll ready %d of %ui\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"WSAPoll() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_TIMER_INFINITE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"WSAPoll() returned no events without timeout\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"poll: %ui: fd:%d ev:%04Xd rev:%04Xd\00", align 1
@POLLNVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"poll() error fd:%d ev:%04Xd rev:%04Xd\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"strange poll() events fd:%d ev:%04Xd rev:%04Xd\00", align 1
@event_index = common dso_local global %struct.TYPE_17__** null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"unexpected event\00", align 1
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"poll ready != events\00", align 1
@NGX_LOG_DEBUG_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64, i64)* @ngx_poll_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_poll_process_events(%struct.TYPE_16__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @ngx_log_debug1(i32 %16, %struct.TYPE_18__* %19, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %23 = load i64, i64* @nevents, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @WSAPoll(%struct.TYPE_14__* %22, i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @ngx_errno, align 4
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @NGX_UPDATE_TIME, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* @ngx_event_timer_alarm, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %33
  %43 = call i32 (...) @ngx_time_update()
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i64, i64* @nevents, align 8
  %51 = call i32 @ngx_log_debug2(i32 %45, %struct.TYPE_18__* %48, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %49, i64 %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load i32, i32* @NGX_LOG_ALERT, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_log_error(i32 %55, %struct.TYPE_18__* %58, i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @NGX_ERROR, align 4
  store i32 %61, i32* %4, align 4
  br label %284

62:                                               ; preds = %44
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @NGX_TIMER_INFINITE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @NGX_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %284

71:                                               ; preds = %65
  %72 = load i32, i32* @NGX_LOG_ALERT, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %74, align 8
  %76 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_log_error(i32 %72, %struct.TYPE_18__* %75, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @NGX_ERROR, align 4
  store i32 %77, i32* %4, align 4
  br label %284

78:                                               ; preds = %62
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %270, %78
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @nevents, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i1 [ false, %79 ], [ %85, %83 ]
  br i1 %87, label %88, label %273

88:                                               ; preds = %86
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @ngx_log_debug4(i32 %94, %struct.TYPE_18__* %97, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %98, i64 %103, i32 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @POLLNVAL, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %88
  %116 = load i32, i32* @NGX_LOG_ALERT, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %126 = load i64, i64* %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_log_error(i32 %116, %struct.TYPE_18__* %119, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %124, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %115, %88
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @POLLIN, align 4
  %135 = load i32, i32* @POLLOUT, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @POLLERR, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @POLLHUP, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @POLLNVAL, align 4
  %142 = or i32 %140, %141
  %143 = xor i32 %142, -1
  %144 = and i32 %133, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %132
  %147 = load i32, i32* @NGX_LOG_ALERT, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %152 = load i64, i64* %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_log_error(i32 %147, %struct.TYPE_18__* %150, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %155, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %146, %132
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %165 = load i64, i64* %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, -1
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %270

171:                                              ; preds = %163
  %172 = load %struct.TYPE_17__**, %struct.TYPE_17__*** @event_index, align 8
  %173 = load i64, i64* %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %172, i64 %173
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  store %struct.TYPE_17__* %175, %struct.TYPE_17__** %15, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, -1
  br i1 %179, label %180, label %199

180:                                              ; preds = %171
  %181 = load i32, i32* @NGX_LOG_ALERT, align 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_log_error(i32 %181, %struct.TYPE_18__* %184, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* @nevents, align 8
  %188 = sub i64 %187, 1
  %189 = icmp eq i64 %186, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %180
  %191 = load i64, i64* @nevents, align 8
  %192 = add i64 %191, -1
  store i64 %192, i64* @nevents, align 8
  br label %198

193:                                              ; preds = %180
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %195 = load i64, i64* %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  store i64 -1, i64* %197, align 8
  br label %198

198:                                              ; preds = %193, %190
  br label %270

199:                                              ; preds = %171
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @POLLERR, align 4
  %202 = load i32, i32* @POLLHUP, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @POLLNVAL, align 4
  %205 = or i32 %203, %204
  %206 = and i32 %200, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %199
  %209 = load i32, i32* @POLLIN, align 4
  %210 = load i32, i32* @POLLOUT, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* %9, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %208, %199
  store i64 0, i64* %12, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* @POLLIN, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %214
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %219
  store i64 1, i64* %12, align 8
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  store %struct.TYPE_15__* %229, %struct.TYPE_15__** %13, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  store i32 1, i32* %231, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  store i32 -1, i32* %233, align 4
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %239, i32** %14, align 8
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %241 = load i32*, i32** %14, align 8
  %242 = call i32 @ngx_post_event(%struct.TYPE_15__* %240, i32* %241)
  br label %243

243:                                              ; preds = %226, %219, %214
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @POLLOUT, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %263

248:                                              ; preds = %243
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %248
  store i64 1, i64* %12, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  store %struct.TYPE_15__* %258, %struct.TYPE_15__** %13, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  store i32 1, i32* %260, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %262 = call i32 @ngx_post_event(%struct.TYPE_15__* %261, i32* @ngx_posted_events)
  br label %263

263:                                              ; preds = %255, %248, %243
  %264 = load i64, i64* %12, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* %8, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %8, align 4
  br label %270

269:                                              ; preds = %263
  br label %270

270:                                              ; preds = %269, %266, %198, %170
  %271 = load i64, i64* %11, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %11, align 8
  br label %79

273:                                              ; preds = %86
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %273
  %277 = load i32, i32* @NGX_LOG_ALERT, align 4
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %279, align 8
  %281 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_log_error(i32 %277, %struct.TYPE_18__* %280, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %282

282:                                              ; preds = %276, %273
  %283 = load i32, i32* @NGX_OK, align 4
  store i32 %283, i32* %4, align 4
  br label %284

284:                                              ; preds = %282, %71, %69, %54
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_18__*, i32, i8*, i64) #1

declare dso_local i32 @WSAPoll(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_log_debug2(i32, %struct.TYPE_18__*, i32, i8*, i32, i64) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug4(i32, %struct.TYPE_18__*, i32, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
