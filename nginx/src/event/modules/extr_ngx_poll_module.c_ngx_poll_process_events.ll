; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_poll_module.c_ngx_poll_process_events.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_poll_module.c_ngx_poll_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"poll timer: %M\00", align 1
@event_list = common dso_local global %struct.TYPE_18__* null, align 8
@nevents = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i32 0, align 4
@NGX_UPDATE_TIME = common dso_local global i64 0, align 8
@ngx_event_timer_alarm = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"poll ready %d of %ui\00", align 1
@NGX_EINTR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"poll() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_TIMER_INFINITE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"poll() returned no events without timeout\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"poll: %ui: fd:%d ev:%04Xd rev:%04Xd\00", align 1
@POLLNVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"poll() error fd:%d ev:%04Xd rev:%04Xd\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"strange poll() events fd:%d ev:%04Xd rev:%04Xd\00", align 1
@ngx_cycle = common dso_local global %struct.TYPE_14__* null, align 8
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
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @ngx_log_debug1(i32 %17, %struct.TYPE_19__* %20, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %24 = load i64, i64* @nevents, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @poll(%struct.TYPE_18__* %23, i32 %25, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @ngx_errno, align 4
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  store i32 %35, i32* %10, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @NGX_UPDATE_TIME, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @ngx_event_timer_alarm, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %34
  %44 = call i32 (...) @ngx_time_update()
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* @nevents, align 8
  %52 = call i32 @ngx_log_debug2(i32 %46, %struct.TYPE_19__* %49, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %51)
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @NGX_EINTR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* @ngx_event_timer_alarm, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  store i64 0, i64* @ngx_event_timer_alarm, align 8
  %63 = load i32, i32* @NGX_OK, align 4
  store i32 %63, i32* %4, align 4
  br label %305

64:                                               ; preds = %59
  %65 = load i64, i64* @NGX_LOG_INFO, align 8
  store i64 %65, i64* %13, align 8
  br label %68

66:                                               ; preds = %55
  %67 = load i64, i64* @NGX_LOG_ALERT, align 8
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (i64, %struct.TYPE_19__*, i32, i8*, ...) @ngx_log_error(i64 %69, %struct.TYPE_19__* %72, i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @NGX_ERROR, align 4
  store i32 %75, i32* %4, align 4
  br label %305

76:                                               ; preds = %45
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @NGX_TIMER_INFINITE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @NGX_OK, align 4
  store i32 %84, i32* %4, align 4
  br label %305

85:                                               ; preds = %79
  %86 = load i64, i64* @NGX_LOG_ALERT, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = call i32 (i64, %struct.TYPE_19__*, i32, i8*, ...) @ngx_log_error(i64 %86, %struct.TYPE_19__* %89, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @NGX_ERROR, align 4
  store i32 %91, i32* %4, align 4
  br label %305

92:                                               ; preds = %76
  store i64 0, i64* %11, align 8
  br label %93

93:                                               ; preds = %291, %92
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @nevents, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %97, %93
  %101 = phi i1 [ false, %93 ], [ %99, %97 ]
  br i1 %101, label %102, label %294

102:                                              ; preds = %100
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %114 = load i64, i64* %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @ngx_log_debug4(i32 %108, %struct.TYPE_19__* %111, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %112, i32 %117, i32 %122, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @POLLNVAL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %102
  %130 = load i64, i64* @NGX_LOG_ALERT, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %140 = load i64, i64* %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 (i64, %struct.TYPE_19__*, i32, i8*, ...) @ngx_log_error(i64 %130, %struct.TYPE_19__* %133, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %138, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %129, %102
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @POLLIN, align 4
  %149 = load i32, i32* @POLLOUT, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @POLLERR, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @POLLHUP, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @POLLNVAL, align 4
  %156 = or i32 %154, %155
  %157 = xor i32 %156, -1
  %158 = and i32 %147, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %146
  %161 = load i64, i64* @NGX_LOG_ALERT, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %166 = load i64, i64* %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %171 = load i64, i64* %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 (i64, %struct.TYPE_19__*, i32, i8*, ...) @ngx_log_error(i64 %161, %struct.TYPE_19__* %164, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %169, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %160, %146
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %179 = load i64, i64* %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %291

185:                                              ; preds = %177
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_cycle, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %187, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %190 = load i64, i64* %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %188, i64 %194
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %195, align 8
  store %struct.TYPE_17__* %196, %struct.TYPE_17__** %16, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %220

201:                                              ; preds = %185
  %202 = load i64, i64* @NGX_LOG_ALERT, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %204, align 8
  %206 = call i32 (i64, %struct.TYPE_19__*, i32, i8*, ...) @ngx_log_error(i64 %202, %struct.TYPE_19__* %205, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %207 = load i64, i64* %11, align 8
  %208 = load i64, i64* @nevents, align 8
  %209 = sub i64 %208, 1
  %210 = icmp eq i64 %207, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %201
  %212 = load i64, i64* @nevents, align 8
  %213 = add i64 %212, -1
  store i64 %213, i64* @nevents, align 8
  br label %219

214:                                              ; preds = %201
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** @event_list, align 8
  %216 = load i64, i64* %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 0
  store i32 -1, i32* %218, align 4
  br label %219

219:                                              ; preds = %214, %211
  br label %291

220:                                              ; preds = %185
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* @POLLERR, align 4
  %223 = load i32, i32* @POLLHUP, align 4
  %224 = or i32 %222, %223
  %225 = load i32, i32* @POLLNVAL, align 4
  %226 = or i32 %224, %225
  %227 = and i32 %221, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %220
  %230 = load i32, i32* @POLLIN, align 4
  %231 = load i32, i32* @POLLOUT, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* %9, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %9, align 4
  br label %235

235:                                              ; preds = %229, %220
  store i64 0, i64* %12, align 8
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @POLLIN, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %264

240:                                              ; preds = %235
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %264

247:                                              ; preds = %240
  store i64 1, i64* %12, align 8
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  store %struct.TYPE_15__* %250, %struct.TYPE_15__** %14, align 8
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  store i32 1, i32* %252, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  store i32 -1, i32* %254, align 4
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %260, i32** %15, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %262 = load i32*, i32** %15, align 8
  %263 = call i32 @ngx_post_event(%struct.TYPE_15__* %261, i32* %262)
  br label %264

264:                                              ; preds = %247, %240, %235
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @POLLOUT, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %264
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %269
  store i64 1, i64* %12, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %278, align 8
  store %struct.TYPE_15__* %279, %struct.TYPE_15__** %14, align 8
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  store i32 1, i32* %281, align 8
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %283 = call i32 @ngx_post_event(%struct.TYPE_15__* %282, i32* @ngx_posted_events)
  br label %284

284:                                              ; preds = %276, %269, %264
  %285 = load i64, i64* %12, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, i32* %8, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %8, align 4
  br label %291

290:                                              ; preds = %284
  br label %291

291:                                              ; preds = %290, %287, %219, %184
  %292 = load i64, i64* %11, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %11, align 8
  br label %93

294:                                              ; preds = %100
  %295 = load i32, i32* %8, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %294
  %298 = load i64, i64* @NGX_LOG_ALERT, align 8
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %300, align 8
  %302 = call i32 (i64, %struct.TYPE_19__*, i32, i8*, ...) @ngx_log_error(i64 %298, %struct.TYPE_19__* %301, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %303

303:                                              ; preds = %297, %294
  %304 = load i32, i32* @NGX_OK, align 4
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %303, %85, %83, %68, %62
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_19__*, i32, i8*, i64) #1

declare dso_local i32 @poll(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_log_debug2(i32, %struct.TYPE_19__*, i32, i8*, i32, i64) #1

declare dso_local i32 @ngx_log_error(i64, %struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug4(i32, %struct.TYPE_19__*, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
