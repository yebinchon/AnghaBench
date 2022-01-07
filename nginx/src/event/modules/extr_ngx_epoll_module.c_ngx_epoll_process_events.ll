; ModuleID = '/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_epoll_module.c_ngx_epoll_process_events.c'
source_filename = "/home/carl/AnghaBench/nginx/src/event/modules/extr_ngx_epoll_module.c_ngx_epoll_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 (%struct.TYPE_15__*)*, i64, i64 }
%struct.TYPE_16__ = type { i32 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"epoll timer: %M\00", align 1
@ep = common dso_local global i32 0, align 4
@event_list = common dso_local global %struct.TYPE_13__* null, align 8
@nevents = common dso_local global i64 0, align 8
@ngx_errno = common dso_local global i32 0, align 4
@NGX_UPDATE_TIME = common dso_local global i32 0, align 4
@ngx_event_timer_alarm = common dso_local global i64 0, align 8
@NGX_EINTR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"epoll_wait() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_TIMER_INFINITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"epoll_wait() returned no events without timeout\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"epoll: stale event %p\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"epoll: fd:%d ev:%04XD d:%p\00", align 1
@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"epoll_wait() error on fd:%d ev:%04XD\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@NGX_POST_EVENTS = common dso_local global i32 0, align 4
@ngx_posted_accept_events = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64, i32)* @ngx_epoll_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_epoll_process_events(%struct.TYPE_16__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_17__*
  %24 = call i32 @ngx_log_debug1(i32 %18, i32 %21, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %23)
  %25 = load i32, i32* @ep, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %27 = load i64, i64* @nevents, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @epoll_wait(i32 %25, %struct.TYPE_13__* %26, i32 %28, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @ngx_errno, align 4
  br label %36

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NGX_UPDATE_TIME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* @ngx_event_timer_alarm, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %36
  %46 = call i32 (...) @ngx_time_update()
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @NGX_EINTR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i64, i64* @ngx_event_timer_alarm, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  store i64 0, i64* @ngx_event_timer_alarm, align 8
  %58 = load i32, i32* @NGX_OK, align 4
  store i32 %58, i32* %4, align 4
  br label %262

59:                                               ; preds = %54
  %60 = load i32, i32* @NGX_LOG_INFO, align 4
  store i32 %60, i32* %12, align 4
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @NGX_LOG_ALERT, align 4
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %64, i32 %67, i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @NGX_ERROR, align 4
  store i32 %70, i32* %4, align 4
  br label %262

71:                                               ; preds = %47
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @NGX_TIMER_INFINITE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @NGX_OK, align 4
  store i32 %79, i32* %4, align 4
  br label %262

80:                                               ; preds = %74
  %81 = load i32, i32* @NGX_LOG_ALERT, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %81, i32 %84, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @NGX_ERROR, align 4
  store i32 %86, i32* %4, align 4
  br label %262

87:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %257, %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %260

92:                                               ; preds = %88
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  store %struct.TYPE_17__* %99, %struct.TYPE_17__** %17, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %101 = ptrtoint %struct.TYPE_17__* %100 to i64
  %102 = and i64 %101, 1
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %10, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %105 = ptrtoint %struct.TYPE_17__* %104 to i64
  %106 = and i64 %105, -2
  %107 = inttoptr i64 %106 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %17, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %14, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %121, label %115

115:                                              ; preds = %92
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115, %92
  %122 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %127 = call i32 @ngx_log_debug1(i32 %122, i32 %125, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_17__* %126)
  br label %257

128:                                              ; preds = %115
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** @event_list, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %148, align 8
  %150 = call i32 @ngx_log_debug3(i32 %135, i32 %138, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %142, %struct.TYPE_17__* %149)
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @EPOLLERR, align 4
  %153 = load i32, i32* @EPOLLHUP, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %128
  %158 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @ngx_log_debug2(i32 %158, i32 %161, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %165)
  %167 = load i32, i32* @EPOLLIN, align 4
  %168 = load i32, i32* @EPOLLOUT, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %9, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %157, %128
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @EPOLLIN, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %208

177:                                              ; preds = %172
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %208

182:                                              ; preds = %177
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  store i32 1, i32* %184, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  store i32 -1, i32* %186, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @NGX_POST_EVENTS, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %182
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32* @ngx_posted_accept_events, i32* @ngx_posted_events
  store i32* %197, i32** %16, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %199 = load i32*, i32** %16, align 8
  %200 = call i32 @ngx_post_event(%struct.TYPE_15__* %198, i32* %199)
  br label %207

201:                                              ; preds = %182
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 5
  %204 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %203, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %206 = call i32 %204(%struct.TYPE_15__* %205)
  br label %207

207:                                              ; preds = %201, %191
  br label %208

208:                                              ; preds = %207, %177, %172
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  store %struct.TYPE_15__* %211, %struct.TYPE_15__** %15, align 8
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @EPOLLOUT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %256

216:                                              ; preds = %208
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %256

221:                                              ; preds = %216
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %232, label %226

226:                                              ; preds = %221
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %226, %221
  %233 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %238 = call i32 @ngx_log_debug1(i32 %233, i32 %236, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_17__* %237)
  br label %257

239:                                              ; preds = %226
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 2
  store i32 1, i32* %241, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* @NGX_POST_EVENTS, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %248 = call i32 @ngx_post_event(%struct.TYPE_15__* %247, i32* @ngx_posted_events)
  br label %255

249:                                              ; preds = %239
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 5
  %252 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %251, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %254 = call i32 %252(%struct.TYPE_15__* %253)
  br label %255

255:                                              ; preds = %249, %246
  br label %256

256:                                              ; preds = %255, %216, %208
  br label %257

257:                                              ; preds = %256, %232, %121
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %88

260:                                              ; preds = %88
  %261 = load i32, i32* @NGX_OK, align 4
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %260, %80, %78, %63, %57
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_17__*) #1

declare dso_local i32 @epoll_wait(i32, %struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
