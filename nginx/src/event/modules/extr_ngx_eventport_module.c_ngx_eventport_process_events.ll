; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_process_events.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32, i32 (%struct.TYPE_11__*)*, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.timespec = type { i32, i32 }

@NGX_TIMER_INFINITE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"eventport timer: %M\00", align 1
@ep = common dso_local global i32 0, align 4
@event_list = common dso_local global %struct.TYPE_14__* null, align 8
@nevents = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i64 0, align 8
@NGX_UPDATE_TIME = common dso_local global i32 0, align 4
@ETIME = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"port_getn() returned no events without timeout\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"port_getn() failed\00", align 1
@PORT_SOURCE_TIMER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"eventport: stale event %p\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"eventport: fd:%d, ev:%04Xd\00", align 1
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"port_getn() error fd:%d ev:%04Xd\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"strange port_getn() events fd:%d ev:%04Xd\00", align 1
@NGX_POST_EVENTS = common dso_local global i32 0, align 4
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@ngx_use_accept_mutex = common dso_local global i32 0, align 4
@ngx_accept_events = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"port_associate() failed\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"unexpected eventport object %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i32, i32)* @ngx_eventport_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_eventport_process_events(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.timespec, align 4
  %21 = alloca %struct.timespec*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.timespec* null, %struct.timespec** %21, align 8
  br label %34

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 1000
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = srem i32 %30, 1000
  %32 = mul nsw i32 %31, 1000000
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  store %struct.timespec* %20, %struct.timespec** %21, align 8
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_debug1(i32 %35, i32 %38, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 1, i32* %10, align 4
  %41 = load i32, i32* @ep, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %43 = load i64, i64* @nevents, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.timespec*, %struct.timespec** %21, align 8
  %46 = call i32 @port_getn(i32 %41, %struct.TYPE_14__* %42, i32 %44, i32* %10, %struct.timespec* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i64, i64* @ngx_errno, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @NGX_UPDATE_TIME, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = call i32 (...) @ngx_time_update()
  br label %54

54:                                               ; preds = %52, %34
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @ETIME, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* @NGX_OK, align 8
  store i64 %66, i64* %4, align 8
  br label %382

67:                                               ; preds = %61
  %68 = load i32, i32* @NGX_LOG_ALERT, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %68, i32 %71, i64 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i64, i64* @NGX_ERROR, align 8
  store i64 %73, i64* %4, align 8
  br label %382

74:                                               ; preds = %57
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @NGX_EINTR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @NGX_LOG_INFO, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @NGX_LOG_ALERT, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %84, i32 %87, i64 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i64, i64* @NGX_ERROR, align 8
  store i64 %90, i64* %4, align 8
  br label %382

91:                                               ; preds = %54
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @NGX_TIMER_INFINITE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* @NGX_OK, align 8
  store i64 %99, i64* %4, align 8
  br label %382

100:                                              ; preds = %94
  %101 = load i32, i32* @NGX_LOG_ALERT, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %101, i32 %104, i64 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i64, i64* @NGX_ERROR, align 8
  store i64 %106, i64* %4, align 8
  br label %382

107:                                              ; preds = %91
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %377, %107
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %380

112:                                              ; preds = %108
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PORT_SOURCE_TIMER, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = call i32 (...) @ngx_time_update()
  br label %377

123:                                              ; preds = %112
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %15, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %364 [
    i32 129, label %136
    i32 128, label %358
  ]

136:                                              ; preds = %123
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %138 = ptrtoint %struct.TYPE_11__* %137 to i64
  %139 = and i64 %138, 1
  store i64 %139, i64* %12, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %141 = ptrtoint %struct.TYPE_11__* %140 to i64
  %142 = and i64 %141, -2
  %143 = inttoptr i64 %142 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %15, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %136
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %12, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %148, %136
  %155 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %160 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_debug1(i32 %155, i32 %158, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* %159)
  br label %377

161:                                              ; preds = %148
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @ngx_log_debug2(i32 %168, i32 %171, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @POLLERR, align 4
  %183 = load i32, i32* @POLLHUP, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @POLLNVAL, align 4
  %186 = or i32 %184, %185
  %187 = and i32 %181, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %161
  %190 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @ngx_log_debug2(i32 %190, i32 %193, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %189, %161
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @POLLIN, align 4
  %206 = load i32, i32* @POLLOUT, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @POLLERR, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @POLLHUP, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @POLLNVAL, align 4
  %213 = or i32 %211, %212
  %214 = xor i32 %213, -1
  %215 = and i32 %204, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %203
  %218 = load i32, i32* @NGX_LOG_ALERT, align 4
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %223 = load i32, i32* %13, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = load i32, i32* %9, align 4
  %230 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %218, i32 %221, i64 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %217, %203
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @POLLERR, align 4
  %234 = load i32, i32* @POLLHUP, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @POLLNVAL, align 4
  %237 = or i32 %235, %236
  %238 = and i32 %232, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %231
  %241 = load i32, i32* @POLLIN, align 4
  %242 = load i32, i32* @POLLOUT, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* %9, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %240, %231
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  store %struct.TYPE_13__* %249, %struct.TYPE_13__** %19, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  store %struct.TYPE_11__* %252, %struct.TYPE_11__** %16, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  store %struct.TYPE_11__* %255, %struct.TYPE_11__** %17, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 7
  store i32 0, i32* %257, align 4
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 7
  store i32 0, i32* %259, align 4
  %260 = load i32, i32* %9, align 4
  %261 = load i32, i32* @POLLIN, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %335

264:                                              ; preds = %246
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  store i32 1, i32* %266, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  store i32 -1, i32* %268, align 4
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @NGX_POST_EVENTS, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %264
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %279, i32** %18, align 8
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %281 = load i32*, i32** %18, align 8
  %282 = call i32 @ngx_post_event(%struct.TYPE_11__* %280, i32* %281)
  br label %301

283:                                              ; preds = %264
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 3
  %286 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %285, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %288 = call i32 %286(%struct.TYPE_11__* %287)
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %283
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* %12, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %293, %283
  br label %377

300:                                              ; preds = %293
  br label %301

301:                                              ; preds = %300, %273
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %334

306:                                              ; preds = %301
  %307 = load i32, i32* @ngx_use_accept_mutex, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  store i32 1, i32* @ngx_accept_events, align 4
  br label %377

310:                                              ; preds = %306
  %311 = load i32, i32* @ep, align 4
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @POLLIN, align 4
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %317 = ptrtoint %struct.TYPE_11__* %316 to i64
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = or i64 %317, %320
  %322 = inttoptr i64 %321 to i8*
  %323 = call i32 @port_associate(i32 %311, i32 129, i32 %314, i32 %315, i8* %322)
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %333

325:                                              ; preds = %310
  %326 = load i32, i32* @NGX_LOG_ALERT, align 4
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = load i64, i64* @ngx_errno, align 8
  %331 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %326, i32 %329, i64 %330, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %332 = load i64, i64* @NGX_ERROR, align 8
  store i64 %332, i64* %4, align 8
  br label %382

333:                                              ; preds = %310
  br label %334

334:                                              ; preds = %333, %301
  br label %335

335:                                              ; preds = %334, %246
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* @POLLOUT, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %357

340:                                              ; preds = %335
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 1
  store i32 1, i32* %342, align 8
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* @NGX_POST_EVENTS, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %340
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %349 = call i32 @ngx_post_event(%struct.TYPE_11__* %348, i32* @ngx_posted_events)
  br label %356

350:                                              ; preds = %340
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 3
  %353 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %352, align 8
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %355 = call i32 %353(%struct.TYPE_11__* %354)
  br label %356

356:                                              ; preds = %350, %347
  br label %357

357:                                              ; preds = %356, %335
  br label %377

358:                                              ; preds = %123
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 3
  %361 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %360, align 8
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %363 = call i32 %361(%struct.TYPE_11__* %362)
  br label %377

364:                                              ; preds = %123
  %365 = load i32, i32* @NGX_LOG_ALERT, align 4
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** @event_list, align 8
  %370 = load i32, i32* %13, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = trunc i64 %374 to i32
  %376 = call i32 (i32, i32, i64, i8*, ...) @ngx_log_error(i32 %365, i32 %368, i64 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %375)
  br label %377

377:                                              ; preds = %364, %358, %357, %309, %299, %154, %121
  %378 = load i32, i32* %13, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %13, align 4
  br label %108

380:                                              ; preds = %108
  %381 = load i64, i64* @NGX_OK, align 8
  store i64 %381, i64* %4, align 8
  br label %382

382:                                              ; preds = %380, %325, %100, %98, %82, %67, %65
  %383 = load i64, i64* %4, align 8
  ret i64 %383
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @port_getn(i32, %struct.TYPE_14__*, i32, i32*, %struct.timespec*) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, ...) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @port_associate(i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
